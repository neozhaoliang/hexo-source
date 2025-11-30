---
title: "不可能的密铺"
date: "2010-08-07"
categories: [几何群论]
url: "conway-tiling-group"
---

Conway 等人在论文 [@Conway1990] 中提出了下面的问题：

:::{.question .unnumbered}
依次将 $1,2,\ldots,n$ 个全等的正六边形摞在一起，得到的图案记作 $T_n$，下图是 $n=7$ 的例子：

![](/images/tilinggroup/region.svg){width=300 .fig}

把三个连在一起、且对称中心在一条直线上的正六边形组成的图案叫做「骨头」，根据摆放的角度有三种不同的骨头：

![](/images/tilinggroup/bones.svg){width=480 .fig}

求证对任何 $n$，$T_n$ 都不可能用若干骨头恰好密铺。
:::

Conway 等人的论文里面包含了好几个密铺的问题，上面这个问题只是其中一个。虽然这个问题的表述很简单，但它的解法并不“初等”。这里我称之为“”初等”的方法是染色法。染色法是最常用的论证不可能密铺的手段。它的基本思想是，用一个 Abel 群（一般是有理数域 $\mathbb{Q}$）给平面上每一个正六边形作标记，使得任何骨头覆盖的三个正六边形的标记之和为整数，但是整个区域所有正六边形标记之和不是整数，这样来得出矛盾。

然而，Conway 等人在论文中借助“密铺的同调群”证明了染色方法在这个问题中是无法得出矛盾的。我简要地解释一下原因：染色方法可以成功的必要条件是 $T_n$ 对应的群元素在骨头生成的同调群中不是恒等元，从而无法被密铺。而这个问题中，$T_n$ 对应的群元素在同调群中确实是恒等元（构造适当的 signed tiling 即可）。所以染色法对这个问题无效！

Conway 等人用“密铺的同伦群”给出了不可能密铺的证明。同伦群方法的基本思想是，我们仍然用一个群（未必是 Abel 群）的元素作标记，但是这次是给区域和瓷砖的**边界**作标记，来获得密铺的某种不变量，并说明 $T_n$ 的**边界**不满足这个不变量，从而导出矛盾。本文就来介绍这一证明。

<!-- more -->

---

由于 $T_n$ 包含 $n(n+1)/2$ 个正六边形，因此 $T_n$ 可以被密铺的必要条件是 $3\mid n(n+1)$，即 $n\equiv0,2\pmod{3}$。如果对某个 $n\equiv2\pmod{3}$，$T_n$ 可以被若干块骨头密铺，则 $n+1\equiv0\pmod{3}$ 也可以：因为我们可以在下方补上 $(n+1)/3$ 个水平方向的骨头，得到 $T_{n+1}$ 的一个密铺：

![](/images/tilinggroup/addrow.svg){width=300 .fig}

所以我们只要论证 $n\equiv0\pmod{3}$ 时 $T_n$ 无论如何都不可能被密铺即可。

首先我们考虑平面上由正六边形组成的无穷网格，对每条边根据其方向标上 $a,b,c$ 之一，如下图所示：

![$A$ 的 Cayley 图 $\mathcal{G}(A)$](/images/tilinggroup/hexgrid.svg){width=300 .fig #Cayley-A}

这个图是群
$$A=\langle a,b,c\mid a^2=b^2=c^2=(abc)^2=1\rangle$$
的 [Cayley 图](https://en.wikipedia.org/wiki/Cayley_graph)，记作 $\mathcal{G}(A)$。由于 $a,b,c$ 都是 2 阶元，所以 $\mathcal{G}(A)$ 中的边都是无向的。

但是，我们并不打算在 $A$ 中处理问题。相反我们考虑更大的自由群

$$F=\langle a,b,c\ |\ a^2=b^2=c^2=1\rangle$$

$F$ 同构于 3 个 $\mathbb{Z}_2$ 的自由积：$F\cong\mathbb{Z}_2\ast\mathbb{Z}_2\ast\mathbb{Z}_2$。

设 $D$ 是 $\mathcal{G}(A)$ 中的单连通有限区域，边界为 $\partial D$，$\partial D$ 是一条简单闭路径。从 $\partial D$ 上任一点出发，绕着边界逆时针一周可以得到此路径的对应的一个字 (word) $\pi\in F$。

例如，从下图中标注的红色点出发时，$T_n$ 的边界字为 $\pi=(ac)^n(ba)^n(cb)^n$：

![](/images/tilinggroup/boundary.svg){width=400 .fig}

从不同起点出发得到的边界字是不同的，但它们在 $F$ 中都是互相共轭的。例如在下图中，设从蓝色出发点得到的字为 $\pi'$，从红色点出发到蓝色点之间的字为 $w=(ac)^3$，则 $\pi=w\pi'w^{-1}$，两种不同表示在 $F$ 中是共轭的。

![](/images/tilinggroup/boundary2.svg){width=400 .fig}

于是我们可以给出如下定义：

:::{.definition .unnumbered}
设 $D$ 是 $\mathcal{G}(A)$ 中的单连通有限区域，定义其**组合边界** $[\partial D]$ 为 $F$ 中的一个共轭类：$[\partial D]=\{ w\pi w^{-1} \mid w\in F\}$，其中 $\pi$ 是从 $\partial D$ 上任一点逆时针出发绕 $D$ 一圈得到的字。
:::

对于骨头，我们也可以用类似的方式定义它们的边界字，如下图所示：

![](/images/tilinggroup/label.svg){width=600 .fig}

从红色标注的起点出发，逆时针绕着骨头一圈，得到的边界字分别是：
$$\begin{array}{l}w_1=(cb)^3a(cb)^3a,\\w_2=(ac)^3b(ac)^3b,\\w_3=(ba)^3c(ba)^3c.\end{array}$$

我们称 $\{w_1,w_2,w_3\}$ 在 $F$ 中生成的最小正规子群 $T = \mathcal{N}(\langle w_1,w_2,w_3\rangle)$ 为这三种骨头的密铺群。由于正规子群包含其元素的所有共轭，所以无论怎样选取边界字，得到的结果都属于 $T$。

:::{.theorem .unnumbered}
[@Conway1990, thm 2.1] \
设 $D$ 是平面上正六边形网格中的一个有限的、单连通的区域，则 $D$ 可以被若干骨头密铺的必要条件是 $[\partial D]\in T$。
:::

这个定理是很直观的，证明思路也很简单，对密铺使用的骨头个数归纳即可。如果只用一块骨头就能密铺，结论显然成立。否则一定可以把密铺分成两个单连通的子密铺，使得整个密铺的边界字是这两个子密铺边界字的乘积，然后对每个子密铺使用归纳假设即可。$\blacksquare$

由于 $T_n$ 的边界字为 $\pi=(ac)^n(ba)^n(cb)^n$，即 $T_n$ 的组合边界为 $[\partial T_n]=[\pi]$。所以任务归结为证明对任何 $n\equiv0\pmod{3}$ 有 $\pi\notin T$。按 Conway 的话说，这是把一个困难的问题翻译成了另一个困难的问题，证明最难的部分就在这里。

怎么证明群元素 $\pi$ 不属于正规子群 $T$ 呢？Conway 等人的思路是这样的：构造 $F$ 的子群 $J$，使得 $T\subset J$ 和 $\pi\in J$，并构造 $J$ 到某个群 $K$ 的同态 $\rho: J\to K$，使得 $T\subset\ker\rho$ 但 $\pi\notin\ker\rho$，即同态 $\rho$ 可以区分 $\pi$ 和 $T$，即得 $\pi\notin T$。

Conway 等人构造的 $J$ 是 $F$ 的如下正规子群：
$$J=\mathcal{N}(\langle(cb)^3,(ac)^3,(ba)^3\rangle).$$

$J$ 有个很棒的性质：商群
$$T_0 = F/J = \langle a,b,c\ |\ a^2=b^2=c^2=(cb)^3=(ac)^3=(ba)^3=1\rangle$$
的 Cayley 图 $\mathcal{G}(T_0)$ 是平面图，如下所示：

![$T_0=F/J$ 的 Cayley 图，其中的正六边形有三种不同的类型，在每个顶点处相遇的三个正六边形类型互不相同。注意这个 Cayley 图与前面 $A$ 的 Cayley 图的区别。](/images/tilinggroup/hexgrid2.svg){width=300 .fig}

可见 $\mathcal{G}(T_0)$ 的形状与前面 [$A$ 的 Cayley 图 $\mathcal{G}(A)$](#Cayley-A) 是一样的，但二者的标号方式不同。$\mathcal{G}(T_0)$ 包含三种不同的正六边形 $C_1,C_2,C_3$，它们的边界字分别是 $(cb)^3,(ac)^3,(ba)^3$，而 $\mathcal{G}(A)$ 只包含一种六边形。

我们来说明 $\pi$ 和 $T$ 都包含在 $J$ 中。为此只要验证它们在 $T_0$ 的 Cayley 图 $\mathcal{G}(T_0)$ 中都是闭路径即可。

第一种骨头的边界字 $w_1$ 对应的路径如下：

![](/images/tilinggroup/winding.svg){width=300 .fig}

这个路径是从图中红点出发，**逆时针**绕左下方的正六边形一圈，再沿着标记为 $a$ 的边到达右上方的正六边形，**顺时针**绕着这个正六边形一圈，再沿着标记为 $a$ 的边回到起点。这是一条闭路径，所以 $w_1\in J$。同理 $w_2,w_3\in J$，从而 $T\subset J$。

另一方面 $\pi=(ac)^n(ba)^n(cb)^n$ 不过是绕着 $C_1,C_2,C_3$ 各自转了 $n/3$ 圈，如下图所示：

![](/images/tilinggroup/w_n.svg){width=250 .fig}

所以确实有 $T\subset J$ 和 $\pi\in J$。

现在我们来构造群同态 $\rho:\ J\to\mathbb{Z}^3$。任何 $w\in J$ 都对应 Cayley 图 $\mathcal{G}(T_0)$ 中的一条闭曲线 $\gamma$，我们规定 $\rho(w)=(n_1,n_2,n_3)\in\mathbb{Z}^3$，其中 $n_i$ 是 $\gamma$ 关于所有类型为 $C_i$ 的六边形的环绕数之和：
$$n_i=\sum_{h\in C_i}n(\gamma, h),\quad \text{where }n(\gamma,h)=\frac{1}{2\pi i}\int_{z\in \gamma}\frac{1}{z-h}\,\mathrm{d}z.$$
$h$ 在 $C_i$ 内的位置对结果没有影响，因为环绕数在 $\mathbb{C}\setminus\gamma$ 的每个连通分支上是常数。

由于 $\gamma$ 的内部只包含有限多个六边形，$\gamma$ 外部的六边形对上式的贡献都是 0，所以上面的求和只有有限多项。

我们来计算下每种骨头的环绕数。以边界字为 $w_1$ 的骨头为例：

![](/images/tilinggroup/winding.svg){width=300 .fig}

它关于两个 $C_1$ 类型的正六边形分别逆时针和顺时针各转了一圈，合起来绕了 0 圈；它没有环绕过 $C_2$ 和 $C_3$ 类型的正六边形，关于这俩的环绕数都是 0，所以这块骨头对应的三元组是 $(0,0,0)$。对另外两种骨头也是如此。由于共轭的路径具有相同的环绕数，以及路径乘积（首尾相接）的环绕数等于各路径环绕数的和，所以 $T$ 中任何元素对应的三元组都是 $(0,0,0)$。

然而我们上面已经看到 $T_n$ 的边界字对应的路径是绕着 $C_1,C_2,C_3$ 分别顺时针转 $n/3$ 圈，其环绕数是 $(-n/3,-n/3,-n/3)\ne(0, 0, 0)$，这就说明了 $\pi\notin T$。