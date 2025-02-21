---
title: "Coxeter 群笔记（六）：Boyd-Maxwell 球堆"
categories: [Coxeter Groups]
date: 2021-12-09
url: "coxeter-groups-boyd-maxwell"
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
\newcommand{\R}{\mathbb{R}}
\newcommand{\span}{\mathrm{span}}
\newcommand{\rad}{\mathrm{rad}}
\newcommand{\cl}[1]{\overline{ #1 }}
\newcommand{\Q}{\mathcal{Q}}
\newcommand{\N}{\mathcal{N}}
\newcommand{\cone}[1]{\mathrm{cone}(#1)}
\newcommand{\bfA}{\mathbf{A}}
\newcommand{\P}{\mathcal{P}}
\newcommand{\H}{\mathcal{H}}
\newcommand{\tcr}{\overline{\mathcal{C}_r}}


# 球堆

在接下来的内容中，我们将频繁使用前文的一个 [命题](/coxeter-groups-three-cases/#connected-component-dot)，我把它在这里再重复一次：

::: {.proposition .unnumbered}

设 $u,v\in \Q-\{0\}$。

1. 如果 $u\sim v$ 则 $(u,v)\leq0$。
2. $(u,v)=0$ 当且仅当 $u,v$ 是共线的 light-like 的向量。
3. 如果 $u,v$ 中至少有一个是 time-like 的向量，则 $u\sim v$ 当且仅当 $(u,v)<0$。
:::



::: definition
如果一个非空集合 $\P\subset V$ 满足下列条件，我们就称 $\P$ 是一个**球堆**：

1. 对任何 $k\in\P$ 有 $(k,k)=1$。
2. 对 $\P$ 中任何 $k\ne k'$ 有 $(k,k')\leq -1$。
:::


我们称形如 $\P=\{k,-k\}$ 的球堆是平凡的，因为它由一个球的内部和外部组成。否则就称 $\P$ 是非平凡的。非平凡的球堆中的点必然两两互不共线。如果 $\P$ 是非平凡的球堆，则 $-\P=\{-k\mid k\in\P\}$ 也是非平凡的，它是通过翻转 $\P$ 中每个球的内部和外部得到的。

记 $\H$ 是超平面 $\{v_{n+2}=1\}$ 与 $\Q_+$ 的截面，对任何满足 $(k,k)=1$ 的点 $k$，定义球帽
$$C_k = \{v\in\H\mid (v,k)\geq0\}.$$

::: {.lemma #disjoint-pair}
设 $\P$ 是球堆且 $k_1\ne k_2\in\P$，则集合 $C_{k_1}\cap C_{k_2}$ 和 $C_{-k_1}\cap C_{-k_2}$ 中必有一个至多只包含一个点。并且当这两个集合中的某个恰好只含一个点时，此点与 $k_1+k_2$ 共线，并且有 $(k_1,k_2)=-1$ 成立。
:::

**证明**：由于 $(k_1+k_2,k_1+k_2)=2+2(k_1,k_2)\leq0$，所以 $k_1+k_2$ 是 time-like 或者 light-like 的。设 $u\in C_{k_1}\cap C_{k_2}$，$v\in C_{-k_1}\cap C_{-k_2}$，则

$$(u, k_1+k_2)\geq0\quad\text{and}\quad(v,k_1+k_2)\leq0.$$

如果 $k_1+k_2$ 是 time-like 的，则 $u\not\sim k_1+k_2$ 且 $v\sim k_1+k_2$，这与 $u\sim v$ 矛盾。所以 $k_1+k_2$ 必须是 light-like 的，从而 $(k_1,k_2)=-1$。

进一步如果 $(u,k_1+k_2)>0$ 且 $(v,k_1+k_2)<0$，则 $v\sim k_1+k_2$ 但是 $u\not\sim k_1+k_2$，这与 $u\sim v$ 矛盾。所以 $(u,k_1+k_2)$ 和 $(v,k_1+k_2)$ 中必然有一个是 0，即 $u$ 和 $v$ 中必有一个是 $k_1+k_2$ 的倍数，然而 $\H$ 中与 $k_1+k_2$ 共线的点是唯一确定的，所以 $C_{k_1}\cap C_{k_2}$ 和 $C_{-k_1}\cap C_{-k_2}$ 中必有一个至多包含一个点，且此点与 $k_1+k_2$ 共线。$\blacksquare$

:::{.lemma #intersect-pair}
设 $\P$ 是球堆且 $k_1\ne k_2\in\P$。如果 $v\in\H$ 满足
$$(v,k_1)\geq0\quad \text{and}\quad (v,k_2)>0.$$
则 $|C_{k_1}\cap C_{k_2}|>1$。
:::

**证明**：记 $a=(v,k_2)>0$，考虑向量 $u=v-tk_2$，其中 $t\in(0, a)$ 是实数。

由于 $(u,u)=(v,v)+t^2-2at<0$ 是 time-like 的，以及 $(u,v)=(v,v)-at<0$，所以 $u\sim v$。从而 $u$ 的某个正倍数 $u'=cu\,(c>0)$ 属于 $\H$。由于

$$\begin{aligned}
(u,k_1)&=\overbrace{(v,k_1)}^{\geq0} - \overbrace{t}^{>0}\cdot\overbrace{(k_1,k_2)}^{\leq-1}>0,\\
(u,k_2)&=a-t>0.\end{aligned}$$
所以 $(u',k_1)>0,\,(u',k_2)>0$，从而 $u'\in C_{k_1}\cap C_{k_2}$。由于 $t\in(0,a)$ 有无穷多个取值，并且不难验证不同的 $t$ 给出的 $u'$ 互不相同，所以 $|C_{k_1}\cap C_{k_2}|=\infty>1$。$\blacksquare$


:::{.lemma #intersect-triple}
设 $\P$ 是球堆，$k_1,k_2,k_3\in\P$ 互不相同。如果 $C_{k_1}\cap C_{k_2}$ 只包含一个点 $v$，则 $v\notin C_{k_3}$。
:::

**证明**：由于 $C_{k_1}\cap C_{k_2}$ 只包含 $v$，根据 @Pre:disjoint-pair 我们有 $(k_1,k_2)=-1$ 且 $v$ 与 $k_1+k_2$ 共线。特别地 $(v,k_1)=(v, k_2)=0$。

用反证法，若 $v\in C_{k_3}$，则 $(v,k_3)\geq0$，于是 $(v,k_1+k_2+k_3)\geq0$。但是 $k_1+k_2+k_3$ 是一个 time-like 的向量：
$$(k_1+k_2+k_3,k_1+k_2+k_3)=3 + 2\sum_{i<j}(k_i,k_j)\leq -3 < 0.$$
所以只能是 $(v,k_1+k_2+k_3)=(v,k_3)>0$。记 $a=(v,k_3)>0$。

考察 $u=v-tk_3$，其中 $t\in(0,a)$。仿照 @Pre:intersect-pair 的证明可以得到 $(u,u)<0,\,(u,v)<0$ 从而 $u\sim v$，从而 $u$ 的一个正倍数 $u'\in\H$，以及
$$\begin{aligned}
(u,k_1)&=\overbrace{(v,k_1)}^{=0} - \overbrace{t}^{>0}\cdot\overbrace{(k_3,k_1)}^{\leq-1}>0,\\
(u,k_2)&=\overbrace{(v,k_2)}^{=0} - \overbrace{t}^{>0}\cdot\overbrace{(k_3,k_2)}^{\leq-1}>0.\end{aligned}$$
从而 $u'\in C_{k_1}\cap C_{k_2}$。由于这样的 $t$ 有无穷多个，并且显然不同的 $t$ 给出不同的 $u'$，这与 $C_{k_1} \cap C_{k_2}$ 只包含一个点矛盾。$\blacksquare$

::: {.theorem #thm-sphere-packing}
设 $\P$ 是 $V$ 的一个非空子集，则下面两点是等价的：

1. $\P$ 是一个非平凡的球堆。
2. 对 $\P$ 或者 $-\P$ 之一，其包含的任何两个球帽 $C_k$ 和 $C_{k'}$ 至多有一个公共点。
:::
**证明**：

1 $\Rightarrow$ 2：根据 @Pre:disjoint-pair，不妨设 $k_1,k_2\in\P$ 使得 $C_{k_1}\cap C_{k_2}$ 至多包含一个点。我们来证明 $\P$ 中所有球帽两两之间至多只有一个公共点。为此设 $k\ne k'\in\P$ 且 $\{k,k'\}\ne\{k_1,k_2\}$，不妨设 $k\notin\{k_1,k_2\}$。若 $C_k\cap C_{k'}$ 为空则结论自然成立；否则设 $v\in C_k\cap C_{k'}$ 是一个公共点，我们来证明必有 $|C_{-k}\cap C_{-k'}|>1$，从而由 @Pre:disjoint-pair 可知 $v$ 是 $C_k$ 和 $C_{k'}$ 的唯一公共点。为此我们只要找一个向量 $w\sim v$ 满足 $(w, k)<0$ 和 $(w,k')\leq0$ 即可，这样 $w$ 的某个正倍数 $w'\in\H$，从而根据 @Pre:intersect-pair 即得结论。

这个 $w$ 是很好找的，取 $w=k_1-(k_1,k_2)k_2$，则 $w$ 满足 $(w, k)<0$ 和 $(w,k')\leq0$。麻烦的地方在于证明 $w\sim v$。我们有
$$(v,w)=(v,k_1)-(k_1,k_2)(v,k_2)=(v-(v,k_2)k_2, k_1).$$

记 $u=v-(v, k_2)k_2$，则

$$\begin{aligned}
(u,k_2) &= (v,k_2) - (v,k_2)(k_2,k_2)=0,\\
(u,u)&=(v,v)-(v,k_2)^2 \leq0.
\end{aligned}
$$
我们来说明 $u\sim v$。分两种情形：

1. 如果 $(v,k_2)=0$，那么 $u=v$ 自然有 $u\sim v$ 成立。
2. 如果 $(v,k_2)\ne0$，那么根据上面第二个式子 $(u,u)<0$，即 $u$ 是 time-like 的；并且 $(u,u)=(u,v)-(v,k_2)\overbrace{(u,k_2)}^{=0}=(u,v)<0$，从而 $u\sim v$。

总之 $u$ 的某个正倍数 $u'=cu$ 属于 $\H$。

由于 $C_{k_1}\cap C_{k_2}$ 至多只包含一个点，结合 $(u',k_2)=0$ 和 @Pre:intersect-pair 可得 $(u',k_1)\leq0$，当然就有 $(u,k_1)\leq0$，从而 $(v,w)\leq0$。

现在我们已经准备好了证明 $w\sim v$：

1. 如果 $(w,v)<0$ 自然有 $w\sim v$；
2. 如果 $(w,v)=0$ 但 $w\not\sim v$，则 $w,v$ 必然是反向共线的 light-like 的向量。由 $(w,w)=0$ 可得 $(k_1,k_2)=-1$，即 $w=k_1+k_2$，从而 $v=d(k_1+k_2)\,(d<0)$。$v$ 满足 $(v,k_1)=(v,k_2)=0$，从而 $v$ 就是 $C_{k_1}$ 和 $C_{k_2}$ 的唯一交点。由于 $k\notin\{k_1,k_2\}$，所以
$$(v,k)=\underbrace{d}_{<0}(\underbrace{(k_1,k)}_{\leq-1} + \underbrace{(k_2,k)}_{\leq-1})>0.$$
从而 $v\in C_{k}$。这与 @Pre:intersect-triple 矛盾。

2 $\Rightarrow$ 1: 不妨设 $\P$ 中任何两个球帽至多只有一个交点。则对任何 $k_1,k_2\in\P$，内积 $\inn$ 限制在二维子空间 $U=\span\{k_1,k_2\}$ 上肯定不是正定的，否则的话 $U^\bot=k_1^\bot\cap k_2^\bot$ 是 time-like 的，从而 $C_{k_1}$ 和 $C_{k_2}$ 会在 $\H$ 的内部有交点，所以 $|(k_1,k_2)|\geq1$。如果是 $(k_1,k_2)\geq1$ 的话，则 $C_{k_1}\cap C_{-k_2}$ 和 $C_{-k_1}\cap C_{k_2}$ 二者中必有一个至多只包含一个点，不妨设为 $|C_{k_1}\cap C_{-k_2}|\leq1$。但是根据已知 $C_{k_1}\cap C_{k_2}$ 也至多只包含一个点，从而 $C_{k_1}$ 作为二者的并至多只有一个点，矛盾。$\blacksquare$


::: definition
记 $\Omega_r=\{\omega\in\Omega\mid (\omega,\omega)>0\}$ 是所有实权组成的集合，$\tc_r=\cone{\Omega_r}$ 是由所有实权生成的凸锥，以及
$$\hat{\Omega}_r=\{\hat{\omega}\mid \omega\in\Omega_r\}.$$
其中 $\hat{\omega}=\omega/\sqrt{(\omega,\omega)}$ 是将 $\omega$ 归一化得到的单位向量。
:::

::: {.theorem #real-cone-closure}
如果 $W$ 是不可约、双曲的，且 level 大于等于 2，则 $\tcr = \cl{\tc}$。
:::



**证明**：只要证明 $\tcr$ 包含那些非实的基本权 $(\omega_s, \omega_s)\leq 0$ 即可。若如此，则 $\tcr$ 包含全部基本权 $\Delta^\ast$，从而也包含 $\cone{\Delta^\ast}=\barfd$，再结合 $\tcr$ 是 $W$- 不变的，即得 $\tcr$ 包含 $\bigcup\limits_{w\in W}w\barfd=\tc$，从而包含 $\cl{\tc}$。

设 $\omega_s$ 是任一非实的基本权，记 $I=S-\{s\}$，$W_I$ 为标准椭圆子群。

$(\omega_s,\omega_s)<0$ 的情形比较容易，这时 $\omega_s$ 是 time-like 的，其正交补 $V_I=\span\{\alpha_t\mid t\ne s\}$ 是 space-like 的，从而 $W_I$ 是有限群。任取一个实的基本权 $(\omega_t,\omega_t)>0\,(t\in I)$ 并考虑
$$v = \sum_{w\in W_I}w(\omega_t),$$
显然 $v\in\tcr$，并且 $W_I$ 保持 $v$ 不动。特别地对任何 $t\in I$ 都有 $t(v)=v$。这是 $n-1$ 个独立的线性约束，其解空间是一维的，所以 $v$ 和 $\omega_s$ 共线：存在 $a\in\R$ 使得 $v=a\omega_k$。两边同时与 $\alpha_s$ 作内积得到
$$a = (\alpha_s,v)=\sum_{w\in W_I}(\alpha_s,w(\omega_t))=\sum_{w\in W_I}(w^{-1}(\alpha_s), \omega_t)=\sum_{w\in W_I}(w(\alpha_s), \omega_t).$$
对任何 $w\in W_I$，$w\alpha_s$ 形如 $w\alpha_s=\alpha_s+\sum_{i\in I}c_i\alpha_i$，所以 $w\alpha_s$ 仍然是正根，所有的系数 $c_i$ 都非负。所以上式右边的每一项
$$(w(\alpha_s), \omega_t)=\sum_{i\in I}c_i(\alpha_i, w_t) = c_t\geq0.$$
我们来选择一个特殊的 $w\in W_I$ 使得 $c_t>0$：由于 $\Gamma$ 是连通的，所以 $\Gamma$ 中存在一条从 $s$ 到 $t$ 的路径 $s=s_0\sim s_1\sim\cdots\sim s_m=t$，其中每个 $s_i\,(i\geq1)\in I$  且互不相同。不难验证对 $w=s_m\cdots s_1\in W_I$，$w\alpha_s$ 的系数 $c_t>0$，所以 $a$ 严格大于 0，所以 $\omega_s=v/a\in\tcr$。

$(\omega_s, \omega_s)=0$ 的情形稍微麻烦一些：这时 $\omega_s$ 的正交补 $\omega_s^\bot$ 是 light-like 的，即子图 $\Gamma\setminus\{s\}$ 是仿射的。特别地，$\Gamma\setminus\{s\}$ 由一些仿射或者有限的连通成分组成，并且有且恰有一个连通成分是仿射的（否则两个线性无关的 light-like 的向量的组合会给出 time-like 的向量）。任取一个实的基本权 $(\omega_t,\omega_t)>0$，我们需要讨论两种情况：

1. 如果 $\omega_t$ 属于某个有限型的连通成分 $Y$，类似上面的讨论，$v = \sum_{w\in W_Y}w(\omega_t)\in\tcr$ 满足对任何 $t\ne s$ 都有 $t(v)=v$，从而 $v$ 等于 $\omega_s$ 乘以一个正实数，从而 $\omega_s\in\tcr$。

2. 如果 $\omega_t$ 属于某个仿射型的连通成分 $X$，设 $Y=\Gamma\setminus(X\cup\{s\})$ 是 $\Gamma\setminus\{s\}$ 除去 $X$ 以外其它连通成分的并，则 $X$ 和 $Y$ 互不连通，从而
$$\omega_s = \underbrace{(\omega_s, \omega_s)}_{=0}\alpha_s + \sum_{t\ne s} (\omega_s, \omega_t)\alpha_t=\sum_{t\in X} (\omega_s,\omega_t)\alpha_t + \sum_{t\in Y} (\omega_s,\omega_t)\alpha_t=v_1+v_2.$$
这里 $v_1$ 和 $v_2$ 是正交的。于是
$$(\omega_s, \omega_s)=0\Rightarrow (v_1+v_2,v_1+v_2)=0\Rightarrow (v_1,v_1) + (v_2,v_2) = 0.$$
由于 $v_1\in V_X$ 来自不可约仿射型，$v_2\in V_Y$ 来自有限型，所以 $\R v_1=\rad(V_X)$ 并且 $v_2=0$，从而 $\omega_s=v_1$。于是 $\R \omega_s=\rad(V_X)$。从而 $\omega_s$ 表示为 $\{\alpha_i\mid i\in X\}$ 的线性组合时，所有的系数 $(\omega_s,\omega_i)$ 系数都是非零且同号的。我们断言它们都小于 0。实际上在
$$\omega_s=\sum_{i\in X} (\omega_s,\omega_i)\alpha_i$$
两边同时用 $\alpha_s$ 作内积有
$$1=(\omega_s,\alpha_s)=\sum_{i\in X} (\omega_s, \omega_i)\underbrace{(\alpha_s,\alpha_i)}_{\leq0}.$$
所以必须所有 $(\omega_s, \omega_i)<0$。所以 $X\cup \{s\}$ 构成的子图满足 [这个结论](/coxeter-groups-level/#ideal-vertex) 的条件，于是我们得到
$$\omega_s\in\cl{\cone{\bigcup_{w\in W_I}w(\omega_t)}}\subset\tcr.$$

$\blacksquare$

::: {.theorem #max-packing}
若 $W$ 是双曲的，则 $\hat{\Omega}_r$ 是非平凡的球堆当且仅当 $\Gamma$ 的 level 是 2，这时 $\hat{\Omega}_r$ 还是极大球堆。
:::

**证明**：若 $\Gamma$ 的 level 是 2，则 [$\Omega_r$ 中的元素两两分离](/coxeter-groups-level#level-12)，将其归一化后得到的 $\hat{\Omega}_r$ 仍然两两分离，所以 $\hat{\Omega}_r$ 的元素两两之间的内积 $\leq -1$，从而 $\hat{\Omega}_r$ 给出一个球堆。如果存在某个 space-like 的向量 $k$ 满足 $(k,k)=1$ 且 $k$ 对应的球与 $\hat{\Omega}_r$ 中的任何球都没有公共内部的话，有 $(k,\hat{\omega})\leq -1$ 对任何 $\hat{\omega}\in\hat{\Omega}_r$ 成立，从而 $(k,\omega)<0$ 对任何 $\omega\in\Omega_r$ 成立，从而 $(k,y)\leq0$ 对任何 $y\in\tcr=\cone{\Omega_r}$ 成立。根据 @Pre:real-cone-closure，$\tcr=\cl{\tc}$，这意味着 $(k,y)\leq0$ 对任何 $y\in\tc$ 成立，即 $-k\in\tc^\ast$。由于 [对偶锥 $\tc^\ast$ 中的向量范数 $\leq0$](/coxeter-groups-tits-cone/#dual-cone-nonspace)，$(k,k)=(-k,-k)\leq0$，矛盾。这就证明了 level 2 时 $\Omega_r$ 是极大球堆。

反之若 $\hat{\Omega}_r$ 是一个非平凡球堆，则 $W$ 的 level 必然大于 1，且所有的实权之间两两分离。于是任何两个基本权生成的二维子空间 $\span\{\omega_i,\omega_j\}$ 都是 time-like 或者 light-like 的。又由于 $W$ 是双曲的，从而 $\Gamma\setminus\{i,j\}$ 是 space-like 或者 light-like 的，所以 $\Gamma$ 的 level 只能是 2。$\blacksquare$