---
title: "Coxeter 群笔记（一）：抽象 Coxeter 群与几何实现"
categories: [Coxeter Groups]
date: 2021-12-04
url: "coxeter-groups-geometric-realization"
---

\newcommand{\lfun}[2]{\langle #1,\,#2\rangle}
\newcommand{\fd}{\mathcal{D}}
\newcommand{\tc}{\mathcal{C}}
\newcommand{\stab}[1]{\mathrm{Stab}(#1)}
\newcommand{\negf}[1]{\mathrm{Neg}(#1)}
\newcommand{\barfd}{\overline{\mathcal{D}}}
\newcommand{\plc}[1]{\mathrm{PLC}(#1)}
\newcommand{\barc}{\overline{C}}
\newcommand{\bartc}{\overline{\tc}}
\newcommand{\sthe}[1]{\dfrac{\sin #1\theta}{\sin\theta}}
\newcommand{\shthe}[1]{\dfrac{\sinh #1\theta}{\sinh\theta}}
\newcommand{\inn}{(\cdot,\cdot)}
\newcommand{\gl}{\mathrm{GL}}

# 抽象 Coxeter 群

设 $S$ 是一个集合，一个基于 $S$ 的 Coxeter 矩阵 $M=(m_{s,t})_{s,t\in S}$ 是一个对称矩阵，其对角线上都是 1，非对角线元素取值范围为 $\{2,3,\ldots,\infty\}$。$|S|$ 叫做 $M$ 的秩 (rank)。在这个系列中我们只考虑 $|S|<\infty$ 的情形。

矩阵 $M$ 确定了一个有限表现群 $W$，其生成元为集合 $S$，表现如下：
$$W = \langle s\in S\ |\ (st)^{m_{s,t}}=1\ {\rm if}\ m_{s,t}<\infty\rangle.$$

即 $S$ 满足的生成关系是：

1. 对任何 $s\in S$ 有 $s^2=1$。
2. 对任何 $s\ne t$ 且 $m_{s,t}<\infty$ 有**辫关系** (braid relation)
    $$\overbrace{sts\cdots}^{m_{s,t}}=\overbrace{tst\cdots}^{m_{s,t}}$$
    成立。（当 $m_{s,t}=\infty$ 时的关系是无用的）

我们称 $(W, S)$ 是一个 **Coxeter 系**，$W$ 是一个**有限生成 Coxeter 群**。

:::{.note}
我们总是用 $(W,S)$ 来表示一个 Coxeter 群。即我们在提到一个 Coxeter 群 $W$ 时需要同时指明 $W$ 的生成元集合 $S$。这是因为，可能存在不同的生成元集合 $S$ 和 $S'$，它们给出同一个群 $W$。但是像长度函数 $l(w)$、Bruhat 序这些重要的概念，只有在指定生成元集 $S$ 的前提下才有意义。
:::

用 Coxeter 矩阵或者群表现来描述 Coxeter 群还是太不方便了。我们可以用一个有限图 $\Gamma$ 更直观地表示一个 Coxeter 群 $(W,S)$，$\Gamma$ 叫做 $(W,S)$ 的 Coxeter 图：

+ $\Gamma$ 的顶点集就是 $S$。
+ 两个顶点 $s,t\in S$ 之间连一条边当且仅当 $m_{s,t}\ne 2$，并且我们给这条边标上记号 $m_{s,t}$。
+ 如果 $m_{s,t}=3$，省略这个记号。

如果 $\Gamma$ 是连通的，就称 $(W,S)$ 是**不可约的**。

::: example
Coxeter 矩阵
$$\begin{pmatrix}1 & 4 & 2\\4&1&3\\2&3&1\end{pmatrix}$$
对应的 Coxeter 图 $\Gamma$ 是

![正方体对称群 $(4,3)$ 的 Coxeter 图，注意标号 3 省略了](/images/coxeter/cube43.svg){.fig width=120}

$\Gamma$ 是连通的，所以 $W$ 是不可约的。这个群是三维正方体的对称群：

<video src="/images/coxeter/cube.mp4" width=300 controls></video>

去掉最后一个顶点，前两个顶点构成二面体群 $D_4$，对应正方体的每个面是正四边形；去掉第一个顶点，后两个顶点构成二面体群 $D_3$，对应每个顶点处有 3 个面相遇。
:::

::: example
设 $m\geq4$ 是正整数，Coxeter 矩阵
$$\begin{pmatrix}1 & m & 2\\m&1&2\\2&2&1\end{pmatrix}$$
对应的 Coxeter 图 $\Gamma$ 是

![](/images/coxeter/prism.svg){.fig width=120}

$\Gamma$ 有两个连通分支，所以 $W$ 是可约的。这个群给出的是三维 Euclidean 空间的棱柱，前两个相邻的顶点在 $xy$ 平面内生成正 $m$ 边形，最后的孤立顶点是一面镜子，它的作用是在 $z$ 轴方向上将多边形作反射形成棱柱结构：

<video src="/images/coxeter/prism-6.mp4" width=300 controls></video>
:::


::: example
Coxeter 矩阵
$$\begin{pmatrix}1 & 3 & 4\\3&1&\infty\\4&\infty&1\end{pmatrix}$$
对应的 Coxeter 图 $\Gamma$ 是

![三角形群 $\Delta(3,4,\infty)$ 的 Coxeter 图 $\Gamma$，注意标号 $3$ 被省略了](/images/coxeter/3-4-inf.svg){width=120 #3-4-inf}

$\Gamma$ 是连通的，所以 $W$ 是不可约的。这个群给出的是双曲空间中的密铺：

![](/images/coxeter/parallel.png){.fig width=250}
:::


::: example
Coxeter 矩阵
$$\begin{pmatrix}1 & 5 & 2 & 2\\5&1&3&2\\2&3&1&4\\2&2&4&1\end{pmatrix}$$
对应的 Coxeter 图 $\Gamma$ 是

![](/images/coxeter/534.svg){.fig width=180 #534}

$W$ 是不可约的。这个群给出的是三维双曲空间中的密铺：

![](/images/coxeter/534-1000.jpg){.fig width=500}

去掉最后一个顶点，前三个顶点给出正十二面体的对称群 $(5,3)$，说明这个密铺由正十二面体组成；去掉第一个顶点，剩下三个顶点给出正方体的对称群 $(3,4)\cong(4,3)$，说明每个顶点处有 8 个正十二面体相遇。
:::

我们主要关心的是 $\Gamma$ 不可约的情形。这是因为，如果 $\Gamma=\Gamma_1\cup\cdots\cup\Gamma_k\,(k>1)$ 是多个连通分支的并的话，则对任何 $s\in\Gamma_i$ 和 $t\in\Gamma_j$ 有 $m_{s,t}=2$，从而 $st=ts$，于是 $\Gamma_i$ 中的生成元与 $\Gamma_j$ 中的生成元两两交换，这时 $W$ 有直积分解
$$W=W_1\times\cdots\times W_k.$$
其中 $W_1,\ldots,W_k$ 分别是 $\Gamma_1,\ldots,\Gamma_k$ 对应的 Coxeter 群。所以我们只要研究 $\Gamma$ 不可约的情形即可。

还有一种给 $\Gamma$ 的边标号的方式，叫做 Vinberg 记号，允许给 $m_{s,t}=\infty$ 的那些边用 $\leq-1$ 的实数作为标号。比如像下面这样：

![](/images/coxeter/level2.svg){.fig width=120 #level2}

作为抽象 Coxeter 群，它和前面的 [$\Delta(3,4,\infty)$](#3-4-inf) 是同一个群，但是这里 $\infty$ 边的标号变成了 $-1.1$。后面会解释，Vinberg 记号相当于指定了这条边的两个顶点在几何实现中对应的两个镜面的「双曲距离」。在后文中我们也会采用这种记号。

用 Coxeter 图来表示 Coxeter 群，除了直观上的好处外，它还能告诉我们一些关于 $(W,S)$ 的结构信息。比如当 $\Gamma$ 包含回路时，你可以立刻知道 $(W,S)$ 一定是无限群 [@Humphreys90, section 2.7]。还有一些更微妙的信息也可以从 $\Gamma$ 中读出来。

# 长度函数

对 $W$ 中的任一元素 $w$，存在许多种不同的方式将 $w$ 表示为 $S$ 中生成元的乘积。在所有这些表示中，长度最短者叫做 $w$ 的**既约表示**：即若 $w=s_1s_2\cdots s_k$ 是一个长度为 $k$ 的表示，且 $w$ 不存在任何长度小于 $k$ 的表示，就称 $s_1s_2\cdots s_k$ 是 $w$ 的既约表示。$w$ 的既约表示可能不唯一，但它们都具有相同的长度。定义 $l(w)$ 为 $w$ 的任意一个既约表示的长度。

$l(w)$ 具有如下的性质：

1. $l(xy)\leq l(x) + l(y)$。
2. $l(w) = l(w^{-1})$。
3. $l(w)=0$ 当且仅当 $w=1$。
4. $l(ws)=l(w)\pm 1$，其中 $w\in W, s\in S$。

前三点都是显然的，只有 4 需要证明。显然 $|l(ws)-l(w)|\leq 1$，所以只要说明 $l(ws)$ 和 $l(s)$ 不相等即可。这一步需要用到自由群的泛性质：

设 $F$ 是由集合 $S$ 生成的 [自由群](https://en.wikipedia.org/wiki/Free_group)，定义群同态 ${\rm sgn}: F\to{\pm1}$ 如下：对 $F$ 的每个生成元 $s\in S$ 规定 ${\rm sgn}(s)=-1$，然后将此映射扩充为 $F$ 到 ${\pm1}$ 的群同态。容易验证 $(W,S)$ 的所有生成关系都属于这个同态的核，因此根据 [自由群的泛性质](https://en.wikipedia.org/wiki/Free_group#Universal_property)，${\rm sgn}$ 诱导了一个从 $(W,S)$ 到 ${\pm1}$ 的群同态。在此同态下，若 $w=s_1s_2\cdots s_k$ 是 $w$ 的任一既约表示，则 $${\rm sgn}(w)={\rm sgn}(s_1){\rm sgn}(s_2)\cdots{\rm sgn}(s_k)=(-1)^k=(-1)^{l(w)}.$$ 从而 ${\rm sgn}(ws)={\rm sgn}(w){\rm sgn}(s)=-{\rm sgn}(w)$ 说明 $l(ws)\ne l(w)$。

# 几何实现

抽象 Coxeter 群是用生成元和生成关系定义的，直接从这种定义出发研究群结构是非常困难的。在这一节中，我们将介绍如何将抽象的 Coxeter 群实现为一个内积空间中的正交反射群，从而可以使用几何、线性代数等多种工具来研究它。

设 $(W,S)$ 是一个 Coxeter 系，$M=(m_{s,t})_{s,t\in S}$ 是 Coxeter 矩阵，$V$ 是一个维数为 $n=|S|$ 的实向量空间，其一组基为 $\{\alpha_s \mid s\in S\}$。我们规定 $V$ 上的内积 $\inn$ 如下：

$$(\alpha_s,\alpha_t)=\begin{cases}
1 & s=t,\\
-\cos(\pi/m_{s,t}) & m_{s,t}<\infty,\\
-a_{s,t} & m_{s,t}=\infty.\end{cases}$$
这里 $a_{s,t}=a_{t,s}\geq1$ 是实数，它对应的是 $\infty$ 边的 Vinberg 记号。不同的 $s,t$ 对可以使用不同的 $a_{s,t}$。

根据定义 $(\alpha_s,\alpha_s)=1$，即每个 $\alpha_s$ 都是单位向量。

::: note
$a_{s,t}=1$ 表示 Euclidean 空间中两个平行的镜面（或者双曲空间中两个平行的镜面）；$a_{s,t}>1$ 表示双曲空间中两个超平行的镜面；$2\leq m_{s,t}<\infty$ 表示两个相交的镜面。

下图显示了对前面的 [$\Delta(3,4,\infty)$](#3-4-inf) 群，对标号为 $\infty$ 的边取 $a_{s,t}=1.15$ 时给出的效果：

![](/images/coxeter/hypparallel.png){.fig width=250}

你可以看到每个三角形都不再是封闭的，它们的墙壁中有两条「超平行」的测地线，这两条测地线交点落在双曲空间的外面。
:::

内积 $\inn$ 未必是通常的 Euclidean 内积，即它未必是正定的。但我们最关心的情形有三种：

1. 如果 $\inn$ 是正定的，就称 $\inn$ 是**有限**型的；
2. 如果 $\inn$ 是半正定的，但不是正定的，就称 $\inn$ 是**仿射**型的；
3. 如果 $\inn$ 的符号是 $(n-1, 1)$，就称 $\inn$ 是**双曲**型的。

不属于以上三种类型的一律称为**不定**的。

正如名字所暗示的那样，$\inn$ 是有限型的当且仅当 $W$ 是有限反射群，这时 $W$ 给出的万花筒是球面上的密铺；$\inn$ 是仿射型的当且仅当 $W$ 可以实现为 Euclidean 空间上的仿射 Weyl 群，这时 $W$ 给出的万花筒是 Euclidean 空间中的密铺；$\inn$ 是双曲型的意味着 $W$ 给出的是双曲空间中的密铺。这些我们会在后面作更详细的讨论。

对任何 $s\in S$，定义 $V$ 上的反射 $\rho_s$ 为
$$\rho_s(v) = v -2(v,\alpha_s)\alpha_s ,\quad v\in V.$$
容易验证 $\rho_s$ 满足 $\rho_s^2=1$，并且它保持 $\inn$ 不变：
$$(\rho_s(u),\rho_s(v)) = (u,v),\quad \forall u,v\in V.$$
即 $\rho_s$ 是以 $\alpha$ 为法向量的镜面反射。

我们来证明 $s\to\rho_s$ 实际上是从 $(W,S)$ 到 $\gl(V)$ 的群同态，从而
$$\rho: W\to\rho(W)\leqslant\gl(V)$$
是一个线性表示。特别地，由于每个 $\rho(s)$ 保持 $\inn$ 不变，$\rho(W)$ 也保持 $\inn$ 不变。即 $\rho(W)$ 是正交群 $O(V)$ 的子群。

证明的方法当然还是使用商群的泛性质。我们只要证明 $\{\rho_s\}$ 之间满足与 $(W,S)$ 相同的生成关系即可：

::: Proposition
$(\rho_s\rho_t)^{m_{s,t}}=1$ 对任何 $s,t\in S$ 成立。
:::

这个结论的证明在 [@Humphreys90 section 5.3] 和 @Howlett-note 中都可以找到，但我更喜欢 Howlett 的做法，把 rank 2 情形的根系具体的算出来。这是最简单，但又非平凡的根系的例子，熟悉它的重要性怎么强调也不为过。

**证明**：当 $s=t$ 时所证即为 $\rho_s^2=1$，由于 $\rho_s$ 是反射这当然是成立的。

下设 $s\ne t$，令 $V_{s,t}={\rm span}\{\alpha_s,\alpha_t\}$ 是 $\alpha_s,\alpha_t$ 张成的二维子空间，并记 $V_{s,t}^\bot$ 是 $V_{s,t}$ 在 $\inn$ 下的正交补空间。不难验证 $\rho_s$ 和 $\rho_t$ 限制在 $V_{s,t}^\bot$ 上都是恒等变换。

注意不一定有 $V=V_{s,t}\oplus V_{s,t}^\bot$ 成立，因为 $\inn$ 有可能是退化的。但是如果 $\inn$ 限制在 $\mid_{V_{s,t}}$ 是非退化的，就有 $V=V_{s,t}\oplus V_{s,t}^\bot$ 就成立。这是双线性型的一个基本结论。

我们来计算 $\sigma=\rho_s\rho_t$ 的阶。记 $m=m_{s,t}$，分情况讨论：

:::{.plain #rank2-roots}
:::

1. $m<\infty$。这时 $\inn$ 限制在 $V_{s,t}$ 上的 Gram 矩阵是
$$\begin{pmatrix}1&-\cos\theta\\-\cos\theta&1\end{pmatrix},\qquad \theta=\frac{\pi}{m}.$$
这个矩阵是正定的，从而 $\inn\mid_{V_{s,t}}$ 非退化，这时 $V=V_{s,t}\oplus V_{s,t}^\bot$ 是成立的，而 $\sigma$ 限制在正交补 $V_{s,t}^\bot$ 上是恒等变换，所以 $\sigma$ 在 $V$ 上的阶就等于它在 $V_{s,t}$ 上的阶。容易验证 $\rho_s(\alpha_s)=-\alpha_s$ 和 $\rho_s(\alpha_t)=2\cos\theta\cdot\alpha_s+\alpha_t$，以及关于 $\rho_t$ 的类似表达式。为了简化记号（否则我们的表达式会超出页面），令 $a_k=\sin (k\theta)/\sin\theta$，我们有
$$\begin{align*}&\alpha_s\xrightarrow{\ \rho_t\ }a_1\alpha_s+a_2\alpha_t\xrightarrow{\ \rho_s\ }a_3\alpha_s+a_2\alpha_t\xrightarrow{\ \rho_t\ }a_3\alpha_s+a_4\alpha_t\xrightarrow{\ \rho_s\ }\cdots\\
&\alpha_t\xrightarrow{\ \rho_s\ }a_2\alpha_s+a_1\alpha_t\xrightarrow{\ \rho_t\ }a_2\alpha_s+a_3\alpha_t\xrightarrow{\ \rho_s\ }a_4\alpha_s+a_3\alpha_t\xrightarrow{\ \rho_t\ }\cdots\end{align*}
$$
这两个链的周期都是 $2m$，因为它们的第 $2m+1$ 项分别是
$$a_{2m+1}\alpha_s+a_{2m}\alpha_t=\sthe{(2m+1)}\alpha_s+\sthe{(2m)}\alpha_t=\alpha_s.$$
和
$$a_{2m}\alpha_s+a_{2m+1}\alpha_t=\sthe{(2m)}\alpha_s+\sthe{(2m+1)}\alpha_t=\alpha_t.$$
又回到了各自的第一项。所以 $\sigma$ 的阶等于 $m$。

2. $m=\infty$。这时未必有 $V=V_{s,t}\oplus V_{s,t}^\bot$。但我们可以论证 $\sigma$ 在 $V_{s,t}$ 上的阶是无穷，那么自然它在 $V$ 上的阶也是无穷。
设 $\theta\geq0$ 使得 $a_{s,t}=\cosh\theta$。同样为了简化记号，令 $b_k=\sinh(k\theta)/\sinh\theta$，不难验证有
$$\begin{align*}&\alpha_s\xrightarrow{\ \rho_t\ }b_1\alpha_s+b_2\alpha_t\xrightarrow{\ \rho_s\ }b_3\alpha_s+b_2\alpha_t\xrightarrow{\ \rho_t\ }b_3\alpha_s+b_4\alpha_t\xrightarrow{\ \rho_s\ }\cdots\\
&\alpha_t\xrightarrow{\ \rho_s\ }b_2\alpha_s+b_1\alpha_t\xrightarrow{\ \rho_t\ }b_2\alpha_s+b_3\alpha_t\xrightarrow{\ \rho_s\ }b_4\alpha_s+b_3\alpha_t\xrightarrow{\ \rho_t\ }\cdots\end{align*}
$$（当 $a_{s,t}=1$ 时 $\theta=0$，$b_k$ 应当理解为 $\lim_{\theta\to0}\sinh(k\theta)/\sinh(\theta)=k$）

   这两个链条都是永不重复的，所以 $\sigma$ 的阶是无穷。

至此命题得证。$\blacksquare$

:::{.note}
我知道你肯定不喜欢看到这种涉及繁琐计算的证明。但我的经验是，慢就是快。花大量时间在掌握例子上是值得的。
:::


后面我们会看到 $\rho$ 实际是一个同构，这样就把抽象的 Coxeter 群 $W$ 实现为具体的反射群 $\rho(W)$。由于 $\rho$ 是同构，研究 $\rho(W)$ 并不会丢失 $W$ 的信息。

最后是一个记号的简化：我们把 $w\in W$ 在 $V$ 上的作用简写为 $wv=\rho(w)(v)$。