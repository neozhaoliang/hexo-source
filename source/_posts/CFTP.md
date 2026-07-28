---
title: "Coupling from the past"
categories: [完美采样]
date: 2016-07-02
url: "coupling-from-the-past"
---

**2025/12/13 更新**：我用 GPT 帮我把画图的 Python 脚本改成了 Javascript 动画：（点击 start 按钮开始）

<div style="width:100%; margin:1rem 0;">
  <iframe
    id="cftp-iframe"
    src="/demos/cftp.html"
    style="width:100%; border:0; border-radius:16px; overflow:hidden;"
    scrolling="no"
    title="CFTP demo"
  ></iframe>
</div>

<script>
(function () {
  const f = document.getElementById("cftp-iframe");
  window.addEventListener("message", (e) => {
    // 如果同源部署，建议加：if (e.origin !== location.origin) return;
    if (!e.data || e.data.type !== "cftp:resize") return;
    f.style.height = (e.data.height + 2) + "px"; // +2 防止边框裁切
  });
})();
</script>

---

今天我要介绍一个 Markov 链采样中的精彩算法，叫做 coupling from the past (CFTP)。这个算法看似简单，实则充满玄机。我相信你可以在五分钟内理解算法的步骤，然后再花五分钟左右看懂算法的证明，但是我打赌你需要几个星期甚至更久的时间来细细回味其中奥妙。

为了引出算法，我们从一个计数问题开始：

:::{.question .unnumbered}
下图是一个边长分别为 $a,b,c$ 的平行六边形，其中 $a,b,c$ 都是正整数，内角均为 120 度：

![](/images/cftp/hexagon.svg){width=400 .fig}

请问：用边长为 1 的菱形密铺它，有多少种不同的方法？
:::

<!-- more -->

比如下图就是一种密铺的示例：

![](/images/cftp/random_lozenge_tiling.svg){width=400 .fig}

图中三种不同摆放角度的菱形被染成了不同的颜色。

这个问题的答案很不容易猜到，叫做 MacMahon 公式：

:::{.theorem .unnumbered}
**MacMahon 公式**

记 $H(a,b,c)$ 为所求的六边形的不同菱形密铺的个数，则
$$H(a,b,c)=\prod_{i=1}^a\prod_{j=1}^b\prod_{k=1}^c\frac{i+j+k-1}{i+j+k-2}.$$
:::

关于 MacMahon 公式，以及它背后的 plane partition 理论是另一段精彩的故事，这里不作介绍。需要注意的是，$H(a,b,c)$ 的值是指数级增长的，比如对 $a=b=c=10$ 这种比较小的情形 $H(a,b,c)\approx 9.265\times10^{33}$，已经是一个天文数字了。

真正的问题来了：

:::{.question .unnumbered}
怎样在全部 $H(a,b,c)$ 种不同的密铺中完全随机地任选一种？也就是说，每一种密铺都应该以同样的概率被选中。不能有偏向，也不能近似凑合，必须是完完全全的随机。
:::

由于 $H(a,b,c)$ 太太太大了，我们不可能先把所有密铺都列出来然后再挑选，那样的话全世界的计算机内存加起来也装不下。所以得设计一个聪明点的方法，这就是 CFTP 要做的。

# Markov 链的随机取样

设 $M$ 是一个有限遍历的 Markov 链，其状态空间为 $S$，平稳分布为 $\pi$，我们希望以分布 $\pi$ 从 $S$ 中随机地取样，即对任何 $s\in S$，取样抽到 $s$ 的概率为 $\pi(s)$。这在许多实际应用中都有重要意义。通常的方法是任选一个初始状态 $s_0$ 然后从 $s_0$ 出发跑这个 Markov 链。可以证明只要运行的时间 $n$ 足够大，其 $n$ 时刻的状态 $X_n$ 服从的分布就可以任意逼近平稳分布：
$$\forall \epsilon>0,\quad\exists N=N(\epsilon),\quad\forall n\ge N,\quad\max_{s\in S}\left|\mathbb P(X_n=s)-\pi(s)\right|<\epsilon.$$
这个方法非常简单易行，但是它有两个缺陷：首先它只是一个近似算法，不管 $n$ 取得多么大，返回的 $s_n$ 的分布只是近似而非严格等于平稳分布 $\pi$；其次为了获得足够的精度所需的时间 $n$（叫做 mixing time）也不总是那么容易估计的，也就是说，你压根不知道需要跑多久才能让 $s_n$ 的分布足够接近 $\pi(s)$。那么有没有什么办法可以获得精确地服从 $\pi$ 的采样呢？

Propp 和 Wilson 提出了如下的想法：既然从初始状态出发向未来 （$+\infty$ 方向） 跑 Markov 链得不到真正的平稳分布，我们何不从无穷远的过去 （$-\infty$ 方向） 向现在 （时刻 0） 跑呢？可以想象当这个链经过了无穷次迭代后，其 0 时刻的状态 $X^\ast$ 服从的分布就是 $\pi$。当然，一个可行的算法必须在有限时间内输出结果，我们不可能做到真的从无穷远的过去出发。我们能做的只是选择一个足够大的 $n$ 然后从 $-n$ 时刻出发向时刻 0 跑，但是这种做法和从 0 时刻向时刻 $n$ 跑没有什么区别。Propp 和 Wilson 的观察的关键之处在于，只跑一个链是不行的，我们需要从每个 $s\in S$ 出发，同时跑 $M$ 的 $|S|$ 个不同的版本，并且观察它们是否在时刻 0 时耦合在一起 (coupled together)，即相遇到了相同的状态 $X^\ast$。一旦这件事情发生的话，那么假设我们还有一个额外的从无穷远出发、初始分布是 $\pi$ 的链，由于它来到 0 时刻必然也处于状态 $X^\ast$，所以 $X^\ast$ 就服从分布 $\pi$。如果没有相遇呢？那就从某个更久远的位置开始再来一遍，直到耦合出现为止，这就是 coupling from the past 的由来。

用不太准确的话说，我们是在时间 $-n$ 处设置了 $|S|$ 个不同的链，封死了从无穷远过去出发的链在 $-n$ 处的所有可能状态，然后通过将所有链在时刻 0 “坍缩”为单个状态来获得采样。

其实我上面的描述仍然遗漏了 CFTP 的一些关键细节。为了准确的描述 CFTP，我们首先引入 Markov 链的随机映射表示 (random mapping representation)。

# Markov 链的随机映射表示

随机映射表示能够让我们用计算机程序来模拟 Markov 链，它是一个由随机数流驱动的更新函数 $f: S\times [0, 1]\to S$。$f$ 本身是确定的，对任何状态 $s\in S$ 和 $u\in [0,1]$，$s'=f(s,u)$ 给出 Markov 链更新后的状态。我们要求 $f$ 满足当 $U$ 是服从 $[0, 1]$ 上的均匀分布的随机变量时，$\mathbb{P}(f(s, U)=s')=P_{s,s'}$。这里 $P_{s,s'}$ 是 Markov 链从 $s$ 到 $s'$ 的转移概率。任何有限 Markov 链都存在随机映射表示，而且表示方法不是唯一的。最简单的构造方式是用一个阶梯函数：
$$f(s_i, u) = \begin{cases}\begin{array}{ll}s_1, &\text{for } u\in[0, P_{i,1}),\\s_2, &\text{for } u\in[P_{i,1}, P_{i,1}+P_{i,2}),\\\vdots &\vdots\\s_j, &\text{for } u\in\left[\sum_{k=1}^{j-1}P_{i,k}, \sum_{k=1}^jP_{i,k}\right),\\\vdots &\vdots\\s_n, &\text{for } u\in\left[\sum_{k=1}^{n-1}P_{i,k}, 1\right].\end{array}\end{cases}$$

假设有一个随机数发生器可以产生独立且服从 $[0,1]$ 上均匀分布的随机变量序列 $U_0,U_{-1},U_{-2},\ldots$，则我们可以由此来驱动 Markov 链 $M$ 从过去的某个时刻向现在运行：
$$s_{-n}\xrightarrow{U_{-n+1}}s_{-n+1}=f(s_{-n},U_{-n+1})\xrightarrow{U_{-n+2}}\cdots\xrightarrow{U_0}s_0=f(s_{-1},U_0).$$
更好的做法是采用随机函数复合的记号。令
$$F_t(s) = f(s, U_t).$$
则从时刻 $T<0$ 到时刻 0 的演化就是随机映射
$$\Phi_T  = F_0\circ F_{-1}\circ \cdots \circ F_{T+1}.$$

# Coupling from the past 算法

CFTP 的核心问题可以概括为一句话：

:::{.simple}
检查随机映射 $\Phi_{T}:S\to S$ 是否是常值映射。即 $\Phi_T$ 是否已经“忘记”了输入。
:::

设 $M$ 是一个有限遍历的 Markov 链，状态空间为 $S$，$f: S\times [0, 1]\to S$ 是其随机映射表示。$U_0,U_{-1},\ldots$ 是一列随机数，它们分别来自一列独立且服从 $[0, 1]$ 上均匀分布的随机变量。记 $(N_1,N_2,\ldots)=(1,2,4,8,\ldots)$，$-N_{m}$ 将作为我们第 $m$ 次重启的出发时间。

:::{.simple}
**Coupling from the past 算法**：

1. 令 $m=1$。
2. 对每个 $s\in S$，以 $s$ 为初始状态，以 $-N_m$ 为初始时刻向时刻 0 的方向运行 Markov 链 $M$，所有 $|S|$ 个链使用的随机数流是一样的，都是 $(U_{-N_m+1},\ldots,U_{-1},U_0)$。
3. 如果步骤 2 中的 $|S|$ 个链在时刻 0 给出的状态相同，记此状态为 $X^\ast$，则输出 $X^\ast$ 并退出程序。否则将 $m$ 的值加 1 并重复步骤 2。

下图显示了算法的每个重启时刻，相同颜色的随机数是在同一批中生成的。

![](/images/cftp/random_numbers.svg){.fig}

**断言**：如果上述步骤以概率 1 在有限时间内结束，则其返回值 $X^\ast$ 服从平稳分布 $\pi$:
$$\mathbb{P}(X^\ast = s) = \pi(s),\quad \forall s\in S.$$
:::

注意这里的两个细节：

1. 我们强调了前提**如果算法以概率 1 在有限时间内结束，则返回值服从平稳分布**。为了保证这一点，更新函数 $f$ 的选择就不能是任意的，对某些糟糕的随机映射表示 $f$，过程可能永不耦合。
2. 当第 $m$ 次执行步骤 2 时，使用的随机数为 $(U_{-N_m+1},U_{-N_m+2},\ldots,U_{-1},U_0)$，其中的后半部分 $(U_{-N_{m-1}+1},U_{-N_{m-1}+2},\ldots,U_{-1},U_0)$ 需要与上一次使用的相同，**即每一次都重复使用上一次的随机数作为后半段的随机源**，否则每次都重新生成一列新的随机数的话得到的最终状态未必服从平稳分布。

**证明**：设
$$\Omega=[0, 1)^{\{0.-1.-2,\ldots\}}.$$
并在其上赋予均匀分布的无限乘积测度，$\Omega$ 是所有随机数流组成的样本空间。

$$A=\{\omega\in\Omega\mid \text{算法在有限时间内结束}\}.$$
则由已知有 $\mathbb{P}(A)=1$。又记
$$A_m = \{ \omega\in\Omega\mid \Phi_{-N_m}\text{ 是常值映射}\}.$$
由于我们在每次重试时复用了随机数流，所以
$$A_1\subseteq A_2\subseteq A_3\subseteq \cdots.$$
原因很简单，如果 $\Phi_{-N_m}\equiv x$，那么从更久远的 $T<-N_m$ 出发时，
$$\Phi_T = \Phi_{-N_m}\circ (F_{-N_m}\circ\cdots\circ F_{T+1})\equiv x.$$
即一旦复合映射已经忘记输入，再在它前面复合任何映射，都不可能让它重新记起输入。

显然我们有 $A_m\uparrow A$，$\mathbb{P}(A_m)\uparrow\mathbb{P}(A)=1$。

固定一个 $m$，我们再额外取一个与所有随机映射独立的随机状态 $Y_{-N_m}\sim \pi$，并令它也使用随机数 $(U_{-N_m+1},\ldots,U_0)$ 运行至时刻 0。设这个链在时刻 0 的状态为 $Y_0^{(m)}$，则 $Y_0^{(m)}$ 服从平稳分布。

在事件 $A_m$ 上，$\Phi_{-N_m}$ 是常值映射，设这个常值为 $z$，则
$$\Phi_{-N_m}(s) = z,\quad \forall s\in S.$$
特别地，将随机初始状态 $Y_{-N_m}$ 代入，也有
$$Y_0^{(m)} = \Phi_{-N_m}(Y_{-N_m})=z.$$
另一方面，一旦在时刻 $-N_m$ 到 0 之间发生耦合，CFTP 的最终输出也必然是这个 $z$，因此
$$X^\ast=Y_0^{(m)}\text{ on } A_m.$$
所以
$$\{X^\ast\ne Y_0^{(m)}\}\subseteq A_m^c.$$
从而
$$\mathbb{P}(X^\ast\ne Y_0^{(m)})\le \mathbb{P}(A_m^c).$$
利用耦合不等式，
$$\|\mathcal{L}(X^\ast) - \mathcal{L}(Y_0^{(m)})\|_{\rm TV} \le \mathbb{P}(X^\ast \ne Y_0^{(m)}).$$
而 $Y_0^{(m)}\sim \pi$，故
$$\|\mathcal{L}(X^\ast) - \pi\|_{\rm TV} \le\mathbb{P}(A_m^c) \to 0.$$
因此 $\mathcal{L}(X^\ast) = \pi$。$\blacksquare$


# 算法中的若干陷阱

CFTP 算法的证明看似不难，但其实微妙之处不少，值得细细品味。最主要的地方有三个：

> **问题 1**：为什么说更新函数 $f$ 的选择不能是任意的？
>
> **问题 2**：既然 「coupling from the past」 可以，那 「coupling to the future」 可不可以？从时刻 0 开始从每个 $s\in S$ 出发跑 $|S|$ 个不同的链，直到它们在未来某个时刻 $n$ 耦合为止，然后输出第一次耦合时的状态不行吗？
>
> **问题 3**：每次重启步骤 2 时需要复用之前的随机数，这一点在证明中哪里用到了？使用一列新的随机数为什么不可以？

我们用几个例子来说明这三个问题。

## 为什么更新函数不能是任意的

考虑含有两个状态 $S=\{s_1, s_2\}$ 的 Markov 链，其转移矩阵为 $P=\begin{bmatrix}0.5 & 0.5\\0.5 & 0.5\end{bmatrix}$，更新函数为 $$f(s_1, u) =\begin{cases}\begin{array}{ll}s_1 & \text{for } u \in [0, 0.5)\\s_2 & \text{for } u \in [0.5, 1]\end{array}\end{cases}$$ 和 $$f(s_2, u) =\begin{cases}\begin{array}{ll}s_2 & \text{for } u \in [0, 0.5)\\s_1 & \text{for } u \in [0.5, 1]\end{array}\end{cases}$$ 于是若从 $s_1,s_2$ 分别出发跑两个不同的链，但是每次使用相同的随机数，则它们要么保持不动，要么交换状态，永不耦合。

## 为什么朴素的 Coupling into the future 不行

我打赌任何看到 CFTP 算法的人都会想到同样的问题：为什么不能向未来耦合呢？

> **Coupling into the future**: 从时刻 0 出发同时跑 $|S|$ 个不同的链，其中链 $i$ 的初始状态是 $s_i$。当所有链首次耦合到同一状态 $X^\ast$ 时，终止算法并输出 $X^\ast$ 作为采样状态。

向未来耦合与 CFTP 有一个根本不同：向未来耦合的结束时间是一个随机时间，而在 CFTP 中，我们总是在固定的时刻 0 观察所有链是否耦合。

我们来试试把上面 CFTP 的证明照抄在这里：设 $\tau$ 是所有 $|S|$ 条链首次耦合的时间，$Y$ 是额外的从时刻 0 出发的、初始分布为平稳分布的链，并且使用相同的随机数流，则对任何时刻 $n\ge0$，$Y_n$ 都服从平稳分布。但是当把下标换成随机时间 $\tau$ 时，$Y_\tau$ 未必仍然服从平稳分布，所以之前的证明不再可用。

我们用一个反例来说明：仍然考虑两个状态 $S=\{s_1, s_2\}$ 的 Markov 链，其转移矩阵为 $P=\begin{bmatrix}0.5 & 0.5\\1 & 0\end{bmatrix}$，即从 $s_1$ 出发的话以 0.5 的概率待在原地，以 0.5 的概率跳到 $s_2$，从 $s_2$ 出发的话则总是跳到 $s_1$。

<img style="margin:0px auto;display:block" width="250" src="/images/cftp/counter_example.svg">

这个链的平稳分布为 $\pi=(\frac{2}{3},\frac{1}{3})$。现在假设从 $s_1,s_2$ 分别出发，从时刻 0 开始向 $+\infty$ 方向跑两个不同的链，$\tau$ 是它们首次耦合的时间，则 $\tau-1$ 时刻它俩必然一个位于 $s_1$，一个位于 $s_2$。但是位于 $s_2$ 的状态只能转移到 $s_1$，所以 $\tau$ 时刻的输出永远是 $s_1$，从而 $\mathbb{P}(X^\ast=s_1)=1$，显然不等于平稳分布。

## 为什么每次不能重新生成随机数

CFTP 并不是不断进行彼此独立的新实验，而是在逐步揭示同一个无限随机数流
$$\ldots,U_{-2},U_{-1},U_0.$$
每次回溯得更远，只是在原有随机流左边补上一段新的过去。如果每次都更换新的随机数流，那么多次试验就会来自若干独立的随机数流。算法输出的是第一个成功的流，这会偏爱那些更容易在短时间内发生耦合的流。

不仅如此，如果不复用随机数的话，我们甚至没有复合关系
$$\Phi_T = \Phi_{-N_m}\circ (F_{-N_m}\circ\cdots\circ F_{T+1}).$$
成立！

# Monotone coupling from the past

在 CFTP 算法中，我们需要同时跑 $|S|$ 个不同的链并要求它们在时刻 0 处耦合，当 $|S|$ 很大时所耗的时间和计算量都很不划算，所以这个算法在应用中是有限制的。但是有一种情形它是非常好用的：如果 $S$ 是一个偏序集 $(S, \preceq)$，有最大最小元 $s_\max, s_\min$，并且更新函数 $f$ 与偏序 $\preceq$ 相容，即对任何 $s,s'\in S$，$u\in[0,1]$，
$$s\preceq s' \Rightarrow f(s, u) \preceq f(s', u),$$
则我们只要对 $s_\max, s_\min$ 这两个状态跑两个不同的链即可，当它俩耦合时，所有其它的链也会被“挤压”到相同的状态。这就是前面六边形的菱形密铺取样所采取的方法。

我们在所有菱形密铺组成的集合 $S$ 上定义一个偏序 $\preceq$，这个偏序的定义颇有技巧性，它需要将任一密铺对应到一个不相交的格点路径组，如下图所示：

<img style="margin:0px auto;display:block" width="500" src="/images/cftp/non-intersecting_paths_lozenge.svg">

图中一共出现了 $c+2$ 条不相交的路径，其中最上方和最下方两条路径对任何密铺都是固定的 （它俩是用来约束中间的 $c$ 条路径，让它们在翻转的过程不要越界），中间的 $c$ 条路径，每条路径的起点和终点也是固定的，它们从六边形最左边的边的每个单位线段中点出发，每一步分别向右上或者右下走一步，经过 $a+b$ 步后到达最右边的边的对应位置。

<img style="margin:0px auto;display:block" width="500" src="/images/cftp/two_paths.svg">

上图中从六边形的最左边到最右边共有 $a+b+1$ 条竖直的网格线，每一步向右上或者右下走一步会向右移动到下一个网格线，所以总共需要 $a + b$ 次到达最右边。不同的路径互不相交，所以它们的终点必须互不相同，因此这些终点必然分别依次是六边形最右边的单位线段的中点。

不难说明所有的菱形密铺和所有不相交路径组之间的一一对应关系：当密铺给定时，从左边每个起点出发开始，根据当前菱形的倾斜方向依次描出路径即可；反之当路径组给定时，可以沿着每条路径铺砖，这样确定所有的“斜”菱形的位置，余下的空白位置只有唯一的方式可以被水平的菱形填充。

我们在所有不相交的路径组之间定义一个偏序：两个路径组 $\mathcal{P}\preceq\mathcal{P}'$ 当且仅当对任何 $1\leq i\leq c+2$，$\mathcal{P}$ 中的第 $i$ 条路径 $p_i$ 整体地位于 $\mathcal{P}'$ 中第 $i$ 条路径 $p_i'$ 的下方。在这个偏序下的最大元就是所有路径尽可能地「向上拱」：

<img style="margin:0px auto;display:block" width="500" src="/images/cftp/max_state.svg">

而最小元则是所有路径尽可能地「向下走」：

<img style="margin:0px auto;display:block" width="500" src="/images/cftp/min_state.svg">

有了偏序，我们还要定义一个与之相容的更新函数 $f$。$f$ 的定义是这样的：对一个不相交路径组 $\mathcal{P}$，我们每次在 $\mathcal{P}$ 的中间 $c$ 条路径中，在路径内部 （两头端点除外） 任选一个顶点 $v$：

1. 如果 $v$ 是一个「山峰」，即形如 $\wedge$，则我们以 1/2 的概率保持 $\mathcal{P}$ 不变，以 1/2 的概率尝试将 $\mathcal{P}$ 在 $v$ 处翻转为一个「山谷」 $\vee$，如果翻转之后得到的路径组 $\mathcal{P}'$ 仍然满足路径之间不相交的约束，则规定 $\mathcal{P}'=f(\mathcal{P})$，否则仍然保持 $\mathcal{P}$ 不变。
2. 如果 $v$ 是一个「山谷」，即形如 $\vee$，则与上面的情形类似，我们以 1/2 的概率保持 $\mathcal{P}$ 不变，以 1/2 的概率尝试将 $\mathcal{P}$ 在 $v$ 处翻转为一个「山峰」 $\wedge$，如果翻转之后得到的路径组满足不相交的约束，则规定 $\mathcal{P}'=f(\mathcal{P})$，否则仍然保持 $\mathcal{P}$ 不变。
3. 如果 $v$ 既不是「山峰」也不是「山谷」，则保持 $\mathcal{P}$ 不变。

菱形密铺在三维空间中看起来像是「堆箱子」，这个翻转路径的操作就相当于从中添加/移除一个箱子，并且必须保证这个箱子有三个面可见：

<img style="margin:0px auto;display:block" width="400" src="/images/cftp/flip_lozenge.svg">

我们来验证 $f$ 是和路径组之间的偏序 $\preceq$ 相容的：设 $\mathcal{P}\preceq\mathcal{P}'$ 是两个不相交路径组，对给定的随机操作 $u$，$f(\mathcal{P}, u)$ 和 $f(\mathcal{P}', u)$ 就是对 $\mathcal{P}$ 和 $\mathcal{P}'$ 的同一个位置 $(k, j)$（即第 $k$ 条路径中的第 $j$ 个顶点）同时尝试进行一个 $\vee\to\wedge$ 或者 $\wedge\to\vee$ 的操作。不妨假设这个操作是 $\vee\to\wedge$，则有四种可能的结果：$\mathcal{P}$ 和 $\mathcal{P}'$ 都操作成功，都保持不变或者一个操作成功另一个保持不变。不难验证这四种情况下都有 $f(\mathcal{P},u)\preceq f(\mathcal{P}', u)$。

由于每个不相交的路径组都可以通过适当操作变为最大元或者最小元，所以这个链是个互通的 Markov 链。并且由于 $\mathcal{P}$ 以至少 1/2 的概率在 $f$ 下保持不变，这个链还是非周期的，因此是一个遍历的 Markov 链，所以有唯一的平稳分布。但是不难看到这个链还是对称的，所以这个唯一的平稳分布是均匀分布。即从最大元和最小元出发跑 CFTP，最终得到的样本服从全体菱形密铺上的均匀分布。

Monotone CFTP 也可以应用在其它许多密铺问题的均匀采样中，例如下图是在 $20\times 20$ 的矩形区域的所有多米诺骨牌密铺中均匀采样，同样可以把密铺一一对应到不相交的路径组：

<img style="margin:0px auto;display:block" width=600 src="/images/cftp/domino_tiling_example.svg"/>

# 参考文献

1. Finite Markov chains and algorithmic applications, Olle Häggström.
2. [Markov chains and mixing times](https://pages.uoregon.edu/dlevin/MARKOV/mcmt2e.pdf), Yuval Peres, Elizabeth L. Wilmer, David A. Levin.
3. [Markov Chain Algorithms for Planar Lattice Structures](https://www.researchgate.net/publication/2455641_Markov_Chain_Algorithms_for_Planar_Lattice_Structures), Michael Luby, Dana Randall, Alistair Sinclair.
4. [Mixing times of lozenge tiling and card shuffling Markov chains](https://arxiv.org/abs/math/0102193), David B. Wilson.
5. Exact Sampling with Coupled Markov Chains and Applications to Statistical Mechanics, James G. Propp and David B. Wilson, 1996。