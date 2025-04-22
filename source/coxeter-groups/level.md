---
title: "Coxeter 群笔记（五）：Coxeter 群的 level"
categories: [Coxeter Groups]
date: 2021-12-08
url: "coxeter-groups-level"
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

本文主要改写自 [@Maxwell82] 和[@Maxwell89]。

我们来介绍 Coxeter 群的 level 的概念，并证明 level 等于 1 或 2 的群都是双曲的。

# level 的定义

:::{.definition}
@Maxwell82

$(W,S)$ 的 level 定义为最小的非负整数 $l$，使得在 $\Gamma$ 中删去任何 $l$ 个顶点后，剩下的部分每个连通分支都是仿射或者有限的。
:::

<!--more-->

根据定义有限和仿射 Coxeter 群的 level 都是 0（因为不需要删去任何顶点）。

我们来看几个 level 大于 0 的例子：

::: example

|     |     |     |
|:---:|:---:|:---:|
| level=1 | level=2 | level=3 |
|![](/images/coxeter/level1.svg){.fig width=120}|![](/images/coxeter/level2.svg){.fig width=120}|![](/images/coxeter/level3.svg){.fig width=120}|

+ 左图的三条边标号分别是 $(3,3,7)$，它是双曲的；但是删去任何一个顶点后剩下的两个顶点给出一个有限二面体群，所以其 level 等于 1。
+ 中间图的三条边标号（采用了 Vinberg 记号）分别是 $(3, 4, -1.1)$，它删去红色顶点以后剩下的两个顶点仍然构成一个双曲群，所以 level 大于 1；删去任何两个顶点的话只剩一个顶点当然是有限的，所以这个群的 level 就是 2。
+ 右图删去两个红色顶点以后剩下的两个顶点仍然构成一个 Vinberg 记号下的双曲群，所以 level 大于 2；删去任何三个顶点以后只剩一个顶点当然是有限的，所以这个群的 level 等于 3。
:::

:::{.theorem #level-l}
若 $\Gamma$ 是连通的，且 level 等于 $l$，则在 $\Gamma$ 中删去任何 $l+1$ 个顶点后，剩下的每个连通成分都是有限的。
:::

**证明**：对 $l$ 归纳。当 $l=0$ 时，由于在一个有限或者仿射的连通图中删去任何一个顶点后剩下的一定是有限子图 [@Humphreys90, section 2.6]，所以结论成立。

假设结论对所有小于 $l$ 的正整数成立，考虑 $l$ 的情形。用反证法。

假设从 $\Gamma$ 中删去 $\{i_1,\ldots,i_{l+1}\}$ 这 $l+1$ 个顶点后，剩下的部分中某个连通分支是仿射的。不妨设 $\Gamma\setminus\{i_1,\ldots,i_{l+1}\}=\Gamma'\cup\Gamma''$，其中 $\Gamma'$ 是一个仿射的连通分支，$\Gamma''$（可能为空集）和 $\Gamma'$ 之间没有边相连。

![](/images/coxeter/lemma.svg){.fig width=400}

由于 $\Gamma$ 是连通的，所以 $\Gamma'$ 必然和 $\{i_1,\ldots,i_{l+1}\}$ 中某个顶点有边连接，不妨设为 $i_{l+1}$。

由于 $\Gamma$ 的 level 是 $l$，所以 $\{i_{l+1}\}\cup\Gamma'\subseteq\Gamma\setminus\{i_1,\ldots,i_l\}$ 是一个仿射的连通子图，这个仿射子图删除 $i_{l+1}$ 后得到的 $\Gamma'$ 仍然是仿射的，这与 $l=0$ 的情形矛盾，所以结论得证。$\blacksquare$

# 两个恒等式

这一节是纯技术性的，我会介绍两个关于 $\Delta=\{\alpha_s\mid s\in S\}$ 和对偶基 $\Delta^\ast=\{\omega_s\mid s\in S\}$ 之间关系的显然等式，这样下文用到它们时就不必再重复说明。

在本节中我们都假定内积 $\inn$ 是非退化的，于是我们可以通过 $\inn$ 将 $V$ 和 $V^\ast$ 等同起来：对任何 $\alpha_s\in\Delta$ 和 $\omega_t\in\Delta^\ast$ 有 $(\alpha_s,\omega_t)=\delta_{st}$。

内积 $\inn$ 在 $\Delta$ 这组基下的 Gram 矩阵记作
$$A=\big((\alpha_s,\alpha_t)\big)_{s,t\in S}\ .$$
则 $\inn$ 在 $\Delta^\ast$ 这组基下的 Gram 矩阵就是
$$A^{-1}=\big((\omega_s,\omega_t)\big)_{s,t\in S}\ .$$
$A$ 的第 $s$ 行与 $A^{-1}$ 的第 $s$ 列的点积是 1，所以
$$1=\sum_{t\in S}(\alpha_s,\alpha_t)\cdot (\omega_t,\omega_s)=(\omega_s,\omega_s)+\sum_{t\ne s}(\omega_t,\omega_s)\cdot(\alpha_s,\alpha_t).\tag{I}\label{eq:idI}$$
这是我们的第一个恒等式。

设 $\bfA$ 是 $V$ 上的线性变换，满足对每个 $s\in S$ 有 $\bfA(\omega_s)=\alpha_s$，则 $\bfA$ 在 $\{\omega_s\}$ 这组基下的矩阵就是 $A$：
$$(\alpha_1,\ldots,\alpha_n)= (\omega_1,\ldots,\omega_n)A.$$
于是
$$(\omega_1,\ldots,\omega_n)=(\alpha_1,\ldots,\alpha_n)A^{-1}.$$
在两边取下标为 $s$ 的列，得到
$$\omega_s = \sum_{t\in S}\alpha_t \cdot (\omega_t,\omega_s)=(\omega_s,\omega_s)\alpha_s + \sum_{t\ne s} (\omega_s,\omega_t)\alpha_t.\tag{II}\label{eq:idII}$$
这是我们的第二个恒等式。

# Level 1 是双曲的

本节来证明 level 等于 1 的群都是双曲的。

首先是一个定义：

::: definition
+ 如果 $v\in V$ 满足 $(v, v)>0$，我们就称 $v$ 是**实的**。
+ 如果 $u,v\in V$ 满足 $(u,v)\leq 0$ 且 $u,v$ 张成的二维子空间 $\span\{u,v\}$ **不是正定**的，就称 $u,v$ 是**分离**的 (disjoint)。
:::

:::note
在 $\inn$ 是 Lorentzian 内积时，$v$ 是实的等价于 $v$ 是 space-like 的。
:::

::: {.lemma #lemma-uv}
如果 $\Gamma$ 的 level 大于等于 1，并且不是双曲的，则 $V$ 中存在两个互相正交的向量 $u,v$ 满足 $(u,u)<0$ 和 $(v,v)=0$。
:::

**证明**：由于 $\Gamma$ 的 level 大于等于 1，所以 $\inn$ 不可能是正定或者半正定的，显然也不可能是负定/半负定的（因为所有根 $\alpha$ 的范数都是 1），所以 $\inn$ 的正负惯性指数都非 0。如果 $W$ 不是双曲的，那么有两种可能：

1. $\inn$ 的负惯性指数是 1 且 $\rad(V)\ne\{0\}$。
2. $\inn$ 的负惯性指数至少是 2。

情形 1 可以取 $V$ 的一组正交基包含两个向量 $u,v$ 满足 $(u, u)=-1$ 和 $(v,v)=0$。情形 2 可以取 $V$ 的一组正交基包含三个向量 $x,y,z$ 满足 $(x,x)=1$ 和 $(y, y)=(z,z)=-1$，然后取 $u=z$ 和 $v=x+y$，则 $u,v$ 正交且 $(u,u)=-1,\,(v,v)=0$。$\blacksquare$

::: {.theorem #level-1}
@Maxwell82

如果 $\Gamma$ 的 level 是 1，则 $\Gamma$ 是双曲的。所有的 [基本权](/coxeter-groups/tits-cone#fundamental-weights) 都不是实的并且两两分离。
:::

:::{.note}
当 $|S|=4$ 时，level 1 的 Coxeter 群给出了三维双曲空间中的**紧** (compact) 和**仿紧** (paracompact) 的蜂巢结构。基本权不是实的意味着所有的权都不是实的，即蜂巢的顶点全部位于双曲空间的内部或者边界上。维基百科的 [这个页面](https://en.wikipedia.org/wiki/Uniform_honeycombs_in_hyperbolic_space) 上列出了所有紧和仿紧的蜂巢。
:::

**证明**：首先注意到 $\Gamma$ 的 level 是 1 蕴含了 $\Gamma$ 是连通的，若不然，设 $\Gamma=\Gamma_1\cup\cdots\cup\Gamma_k$ 是多于一个连通分支的并，则每个分支 $\Gamma_i$ 作为删去其它分支后剩下的子图必须都是有限或者仿射的，但这导致 $\Gamma$ 的 level 是 0，矛盾。

我们需要证明三件事情：

1. 内积 $\inn$ 的正负惯性指数是 $(n-1, 1)$；
2. 任何基本权 $\omega_s$ 满足 $(\omega_s,\omega_s)\leq0$；
3. 任何两个基本权 $\omega_s,\omega_t$ 满足 $(\omega_s,\omega_t)\leq0$ 并且它们生成的二维子空间 $\span\{\omega_i,\omega_j\}$ 不是正定的。

先证明 1。用反证法，如果 $\Gamma$ 的 level 是 1 但不是双曲的，则根据 @Pre:lemma-uv 我们可以取两个正交的非零向量 $u,v$ 满足 $(u,u)<0,\, (v,v)=0$。

我们有如下两个断言：

:::{.simple #assetA}
**断言** \

1. 任何满足 $(u,u)<0$ 的向量 $u=\sum_{s\in S}u_s\alpha_s$ 其系数 $u_s$ 都非零且同号。
2. 任何满足 $(v,v)=0$ 的向量 $v=\sum_{s\in S}v_s\alpha_s$ 其系数 $v_s$ 至多只有一个为 0，其余都同号。
:::

我把这两个断言的证明放在 [附录](#appendixA) 中，先承认它们是正确的，用它们来导出矛盾：

取 $s\in S$ 使得 $v_s\ne 0$，则 $u'=v_su-u_sv$ 满足 $(u',u')=v_s^2(u,u)<0$，且 $u'$ 的 $\alpha_s$ 项系数 $u'_s=0$，这与断言 1 矛盾。所以 $\Gamma$ 是双曲的。

再来证明 2。

由于 $\Gamma$ 的 level 是 1，对任何 $s\in S$，子空间 $\omega_s^\bot=\span\{\alpha_t\mid t\ne s\}$ 是有限或者仿射的，从而 [$\omega_s$ 不是 space-like 的](/coxeter-groups/three-geometries/#orth-complement-lorentzian)，即 $(\omega_s,\omega_s)\leq 0$。于是任何 $\omega_s\,(s\in S)$ 都不是实的。

再来证明 3。

观察恒等式 $(\ref{eq:idII})$：
$$\omega_s = (\omega_s,\omega_s)\alpha_s + \sum_{t\ne s} (\omega_s,\omega_t)\alpha_t.$$

结论 2 中已经证明了必然有 $(\omega_s,\omega_s)\leq0$。根据 [断言](#assetA) 我们有：

1. 如果 $(\omega_s,\omega_s)<0$，则后面所有的系数 $(\omega_s,\omega_t)$ 都小于 0。
2. 如果 $(\omega_s,\omega_s)=0$，则后面所有的系数 $\{(\omega_s,\omega_t)\}_{t\ne s}$ 都不为 0 且同号。我们来确定它们的符号：根据恒等式 $(\ref{eq:idI})$
$$1 = (\omega_s,\omega_s) + \sum_{t\ne s} (\omega_s,\omega_t)(\alpha_t,\alpha_s)=\sum_{t\ne s} (\omega_s,\omega_t)\underbrace{(\alpha_t,\alpha_s)}_{\leq0},$$
显然只能是 $(\omega_s,\omega_t)<0$。

总之我们说明了对任何 $s\ne t$ 都有 $(\omega_s,\omega_t)<0$。此外二维子空间 $U_{s,t}={\rm span}\{\omega_s,\omega_t\}$ 的正交补是 $U_{s,t}^\bot=\span\{\alpha_{k}\mid k\ne s,t\}$，根据 @Pre:level-l $U_{s,t}^\bot$ 是 space-like 的，从而 $U_{s,t}$ 是 time-like 的，从而 $\{\omega_s,\omega_t\}$ 是分离的。

至此定理得证。$\blacksquare$

::: {.corollary #level-1-tits}
若 $W$ 的 level 为 1，则 Tits 锥的闭包 $\cl{\tc}$ 等于 $\Q_+$ 或者 $\Q_-$ 之一。
:::

:::{.note}
这个结论告诉我们在 level 1 时空间的边界上没有球堆。
:::

**证明**：由于 level 1 是双曲的，根据 [双曲情形 Tits 锥的结论](/coxeter-groups/three-geometries#tits-closure)，$\tc$ 包含 $\N_+,\N_-$ 之一，不妨设 $\tc\supset\N_+$，则 $\cl{\tc}\supset\cl{\N_+}=\Q_+$。为了证明反向包含关系，只要证 $\cl{\tc}\subset\Q$ 和 $\cl{\tc}\cap\Q_-=\{0\}$。

根据 @Pre:level-1，所有的基本权 $\{\omega_s\}$ 都不是实的且两两分离。设 $x=\sum_{s\in S}c_s\omega_s\,(c_s\geq0)$ 是 $\barfd$ 中任意一点，则
$$(x,x)=\sum_{s,t\in S}c_sc_t\underbrace{(\omega_s,\omega_t)}_{\leq0}\leq0.$$
即 $\barfd\subset\Q$。$W$ 作为正交变换群保持 $\Q$ 不变，所以 $\tc=\bigcup\limits_{w\in W}w\barfd\subset\Q$，从而 $\cl{\tc}\subset\Q$。

再来说明 $\cl{\tc}\cap\Q_-=\{0\}$。若不然，设 $z\ne0\in \cl{\tc}\cap\Q_-$。任取 $x\in\N_+\subset\tc$ 使得 $x$ 与 $z$ 线性无关，仿照 [这个命题的证明](/coxeter-groups/three-geometries/#dual-cone-trivial-intersection)，可得 $x$ 和 $z$ 的某个正线性组合是 space-like 的向量，此向量仍在 $\cl{\tc}$ 中，这与 $\cl{\tc}\subset\Q$ 矛盾。$\blacksquare$

:::{.proposition #ideal-vertex}
[@Maxwell89, proposition 5.15] \

设 $s\in S$，$I=S\setminus\{s\}$，如果有如下条件成立：

1. $(\omega_s,\omega_s)=0$。
2. 标准椭圆子群 $W_I$ 是不可约、仿射的。
3. 对任何 $t\in I$ 有 $(\omega_s,\omega_t)<0$。

则对任意 $p\in\barfd$ 都有 $\omega_s\in\cl{\cone{\bigcup_{w\in W_I}wp}}$。
:::

:::note
这里没有限制 $W$ 的 level。

由于 $\bigcup_{w\in W_I}wp$ 是无限集，$\cone{\bigcup_{w\in W_I}}$ 未必是闭集，因此闭包记号不可少。

当 $W$ 的 level 是 1 时，若 $\omega_s$ 是一个位于双曲空间边界上的理想顶点，则命题的条件都满足。这时 $W_I$ 是经过 $\omega_s$ 的那些镜面生成的标准椭圆子群，$W_I$ 会把基本区域无限压缩到 $\omega_s$ 附近，如下图所示：

![](/images/coxeter/ideal-vertex.jpg){.fig width=350}
:::

**证明**：由已知子空间 $V_I=\span\{\alpha_t\mid t\ne s\}$ 是仿射的，并且 $\rad(V_I)$ 是一维的。根据恒等式 $(\ref{eq:idII})$
$$\omega_s = \underbrace{(\omega_s,\omega_s)}_{=0}\alpha_s +  \sum_{t\ne s}(\omega_s, \omega_t)\alpha_t = \sum_{t\ne s}(\omega_s, \omega_t)\alpha_t\in V_I$$
可得 $\rad(V_I)=\R\omega_s$。于是 $W_I$ 保持 $\omega_s$ 不动，即
$$\R\omega_s\xrightarrow{\ W_I\, -\, 1\ } 0.$$
$W_I$ 同样作用在商空间 $V_I/\R\omega_s$ 上，此作用给出了一个同态 $W_I\to\gl(V_I/\R\omega_s)$。令 $K$ 为此同态的核，则对任何 $w\in K$，
$$w(v + \R\omega_s) = v + \R\omega_s,\quad v\in V_I.$$
即 $wv-v\in\R\omega_s$，从而
$$V_I\xrightarrow{\ K - 1\ }\R\omega_s\xrightarrow{\ W_I\, -\, 1\ } 0.$$
由于 $K\leqslant W_I$，所以
$$V_I\xrightarrow{\ K - 1\ }\R\omega_s\xrightarrow{\ K-1\ }0.$$
即 $(K-1)^2$ 在整个 $V_I$ 上恒为 0。

更进一步，对任何 $w\in K$，$w\alpha_s$ 形如 $w\alpha_s=\alpha_s+\sum\limits_{t\ne s}c_t\alpha_t$，所以 $(w-1)\alpha_s\in V_I$，从而 $w-1$ 将整个 $V$ 也映入 $V_I$，于是
$$V\xrightarrow{\ K-1\ } V_I\xrightarrow{\ K - 1\ }\R\omega_s\xrightarrow{\ K-1\ }0.$$
即 $(K-1)^2V\subset\R\omega_s$，$(K-1)^3V\equiv0$。

取 $w\in K$ 且 $w\ne 1$ [^1]，由于 $w$ 在 $V_I$ 上不是恒等变换，所以存在 $t\in I$ 使得 $w\alpha_t\ne\alpha_t$。设
$$\beta = w\alpha_t=\alpha_t+a\omega_s\,(a\ne 0).$$
则 $s_\beta=wtw^{-1}$，从而对任何 $p\in V$，
$$\begin{align*}
s_\beta(p)&=p - 2(p,\beta)\beta\\
&=p-2(p,\alpha_t+a\omega_s)(\alpha_t+a\omega_s)\\
&=p-2(p,\alpha_t)\alpha_t- 2a(p, \omega_s)\alpha_t - c\omega_s\\
&=t(p) - 2a(p, \omega_s)\alpha_t - c\omega_s.
\end{align*}$$
其中 $c=2(p,\alpha_t+a\omega_s)a$ 是实数。$c$ 具体是多少不用关心。

构造换位子 $w_1=twtw^{-1}\in K$，则由 $(K-1)^2V\subset\R\omega_s$ 有 $(w_1-1)^2p=b\omega_s\,(b\in\R)$。我们来计算 $b$。首先，

$$(w_1-1)p=ts_\beta(p)-p=-2a(p,\omega_s)\alpha_t - c\omega_s.\label{eq:wp1}\tag{1}$$
其中我们利用了 $t(\alpha_t)=-\alpha_t$ 和 $t(\omega_s)=\omega_s$。

到目前为止，我们的计算对任何 $p\in V$ 都是成立的。我们可以在 $(\ref{eq:wp1})$ 式中取 $p=\alpha_t$，得到
$$(w_1-1)\alpha_t=2a\underbrace{(\alpha_t,\omega_s)}_{=0}\alpha_t -c\omega_s=-c\omega_s= -2(\alpha_t,\alpha_t+a\omega_s)a\omega_s=-2a\omega_s.\label{eq:wp2}\tag{2}$$

继续，将 $w_1-1$ 作用在 $(\ref{eq:wp1})$ 两端，由于 $(w_1-1)\omega_s=0$，所以
$$(w_1-1)^2p = 2a(p,\omega_s)(w_1-1)\alpha_t.\label{eq:wp3}\tag{3}$$

将 $(\ref{eq:wp2})$ 代入 $(\ref{eq:wp3})$ 的右边，我们得到
$$(w_1-1)^2p=-4a^2(p,\omega_s)\omega_s.$$
即 $b=-4a^2(\omega_s,p)$。

我们来判断 $b$ 的符号。这里要用到 $p\in\barfd=\cone{\Delta^\ast}$ 的条件。如果 $p$ 是 $\omega_s$ 的正倍数，显然 $\omega_s\in\cl{\cone{\bigcup_{w\in W_I}wp}}$，命题自然成立。所以我们可以假设 $p$ 与 $\omega_s$ 不共线。

设 $p=\sum_{t\in S} c_t\omega_t\,(c_t\geq0)$，则至少有一个 $t\ne s$ 满足 $c_t>0$。于是
$$(\omega_s,p)=\sum_{t\ne s}\underbrace{c_t}_{\geq0 \text{ 且至少有一个 } >0}\ \cdot\ \underbrace{(\omega_s,\omega_t)}_{\text{已知 }<0}<0.$$
从而 $b>0$。

最后利用 $(w_1-1)^3=0$ 和 $(w_1-1)^2p=b\omega_s$ 我们得到对任何 $N\geq 1$ 有
$$w_1^N(p)=(1 + w_1-1)^N(p)= p + \binom{N}{1}(w_1-1)(p) + \binom{N}{2}b\omega_s,$$
可见 $\lim\limits_{N\to\infty}\dfrac{w_1^Np}{\binom{N}{2}b} = \omega_s$，即得所证。$\blacksquare$


# 处理 level 2 的基本技巧

本节我们在上一小节的结论中再进一步，证明 level 2 的群也是双曲的。由于接下来的证明篇幅更长，包含更多的细节，读者难免在阅读时感到吃力。我这里借鉴编程中的模块化思想，先解释接下来的证明中会用到的主要思想。

处理 level 2 的情形的基本思路是转化为 level 1 的情形。具体讲，设 $\Gamma$ 是 level 为 2 的 Coxeter 图，取一个实的基本权 $(\omega_s,\omega_s)>0$，则子图 $\Gamma\setminus\{s\}$ 的 level 就是 1。记 $I = S\setminus\{s\}$，$W_I$ 是标准椭圆子群，
$$V_I=\omega_s^\bot=\span\{\alpha_t\mid t\ne s\}.$$
$W_I$ 在 $V_I$ 上作用的基本区域的闭包就是
$$\barfd_I= \{v\in V_I\mid (v, \alpha_t)>0,\, \forall t\in I\}=\cone{\{\omega_t\mid t\in I\}}.$$

根据 @Pre:level-1-tits，$\barfd_I$ 包含在 $\Q_I=\{v\in V_I\mid (v,v)\leq0\}$ 的上下两个分支之一中，所以任何 $x,y\in\barfd_I$ 之间的内积小于等于 0：
$$(x,y)\leq0, \quad \forall x,y\in \barfd_I.$$
特别地，对任何 $x\in\barfd_I$ 有
$$(x,x)\leq0 \text{ and } (x,\omega_t)\leq0\text{ for all }t\in I.$$
于是对 $v\in V$，如果它在 $V_I$ 上的投影 $v_I$ 满足 $v_I\in\barfd_I$，那么我们就可以利用上面的关系得出关于 $v$ 的信息来。

:::{.example #observeA}
**观察 A**


取 $v=\alpha_s$，$\alpha_s'=\alpha_s-\omega_s/(\omega_s,\omega_s)$ 是 $\alpha_s$ 在 $\omega_s^\bot=V_I$ 上的投影，则对任何 $t\in I$ 有
$$(\alpha_s',\alpha_t)= (\alpha_s,\alpha_t)\leq0.$$
这说明 $-\alpha_s'\in\barfd_I$，于是我们有
$$\begin{aligned}
&(\alpha_s',\alpha_s')=1-\frac{1}{(\omega_s,\omega_s)}\leq0,\\
&(-\alpha_s',\omega_t)=\frac{(\omega_s,\omega_t)}{(\omega_s,\omega_s)}\leq0 \text{ for all }t\in I.
\end{aligned}$$
整理即得 $0<(\omega_s,\omega_s)\leq1$，以及 $(\omega_s,\omega_t)\leq0$ 对任何 $t\in I$ 成立。
:::

真不错！我们轻松得到了一个关于 level 2 情形实的基本权 $\omega_s$ 的重要结论。

:::{.example #observeB}
**观察 B**

这次我们取 $v\in\tc$ 是 Tits 锥中的一点，则 $v$ 形如 $v=wx\,(w\in W,x\in\barfd)$。并且
$$v_I = v - \frac{(v,\omega_s)}{(\omega_s,\omega_s)}\omega_s.$$
由于 $(v-v_I)\bot V_I$，所以对任何 $\alpha_k\,(k\ne i)$ 有
$$(v_I,\alpha_k)=(v,\alpha_k) =(wx,\alpha_k)=(x,w^{-1}\alpha_k).$$
为了保证让 $v_I$ 落在 $\barfd_I$ 中，我们需要让这些 $(x,w^{-1}\alpha_k)\geq0$。但是 $x\in\barfd$，所以只要让每个 $w^{-1}\alpha_k\,(k\in I)$ 都是负根，也就是让 $l(s_kw)<l(w)$ 即可。

总结起来就是，如果对任何 $k\in I$ 有 $l(s_kw)<l(w)$，那么就有 $v_I\in\barfd_I$ 成立。
:::

这个例子看起来附加了比较强的条件，但是它确实会在后面用到。


# Level 2 也是双曲的

::: {.theorem #level-2}
level 等于 2 的群都是双曲的，所有的基本权 $\{\omega_s\mid s\in S\}$ 两两分离。$\omega_s$ 是实的当且仅当 $T\setminus\{s\}$ 的 level 等于 1，且对这样的 $\omega_s$ 有 $0<(\omega_s,\omega_s)\leq 1$。
:::

**证明**：我们先来证明 $\Gamma$ 是双曲的。

如果 $\Gamma$ 是不连通的，则 $\Gamma$ 必须是一个 level 为 1 的子图和一个孤立顶点的并，由于 @Pre:level-1 已经证明了 level 1 的群是双曲的，再加上一个孤立顶点仍然是双曲的，所以 $\Gamma$ 是双曲的。于是我们不妨假设 $\Gamma$ 是连通的。

如果 $|\Gamma|=3$，$\Gamma$ 的 level 是 2 说明其必然有一条边的 Vinberg 标号小于 -1。不妨设 $\inn$ 的 Gram 矩阵形如
$$\begin{pmatrix}1&a&b\\a&1&c\\b&c&1\end{pmatrix}.$$
其中 $a,\,b,\,c\leq0$ 且 $a < -1$。这个矩阵的行列式是
$$1-a^2 + 2bc(a+1)-(b+c)^2<0.$$
由于矩阵的迹等于 3，所以其符号必然是 $(2, 1)$，从而是双曲的。

再处理 $|\Gamma|\geq4$ 的情形。仍然根据 @Pre:lemma-uv，如果 $\Gamma$ 不是双曲的，则可以取两个非零且正交的向量 $u,v$ 满足 $(u, u)<0,\,(v, v)=0$。

我们也有如下两个断言：

:::{.simple #assetB}
**断言** \

1. 任何满足 $(u,u)<0$ 的向量 $u=\sum_{s\in S}u_s\alpha_s$ 除去至多一个系数 $u_j$ 之外，其它的 $u_s$ 都非零且同号。
2. 任何满足 $(v,v)=0$ 的向量 $v=\sum_{s\in S}v_s\alpha_s$ 除了满足断言 1 的情形之外，还有一种情形是 $\{v_s\}$ 中有两个是 0，其余的非零且同号。
:::

我仍然把断言的证明放在 [附录](#appendixB) 中，先承认它们是正确的并完成证明。

由于 $u$ 的系数 $\{u_s\}$ 中至多只有一个是 0，$v$ 的系数 $\{v_s\}$ 中至多只有两个是 0，而 $|\Gamma|\geq4$，所以存在下标 $i$ 使得 $u_i,\,v_i$ 均不为 0。于是 $u'=v_iu-u_iv$ 仍然满足 $u'$ 与 $v$ 正交和 $(u',u')<0$，但是它的下标 $i$ 的系数 $u'_i=0$，所以我们不妨一开始就取 $u$ 为 $u'$，于是 $u$ 有一个系数 $u_i=0$，其它系数都非 0 且同号，不妨假设这些非零系数都大于 0。

现在我们已经有了 $v_i\ne0$，由于 $\{v_s\}$ 中至多只有两个为 0，而 $|\Gamma|\geq4$，所以 $\{v_j,\,j\ne i\}$ 中至少还有一个非零。

+ 如果 $\{v_j,\,j\ne i\}$ 中仅有一个非零，则这时必有 $|\Gamma|=4$ 且 $v$ 形如 $v=v_i\alpha_i + v_j\alpha_j$。根据 @Pre:level-l ${\rm span}\{\alpha_i,\alpha_j\}$ 是有限/或者仿射的，但是由于此平面包含 $(v,v)=0$，所以是仿射的，从而 $(\alpha_i,\alpha_j)=-1$。我们可以不妨把 $v$ 取为 $v=\alpha_i+\alpha_j$。

    |   | $i$  |  $j$  |  $k$  | $m$ |
    |:---:|:---:|:---:|:---:|:---:|
    | $u$ | 0   |  $>0$ | $>0$ |$>0$ |
    | $v$ | $\ne0$ | $\ne0$ | 0 | 0 |

    $u_i=0$ 说明 $u$ 形如 $u=u_j\alpha_j+u_k\alpha_k+u_m\alpha_m$。
    由 $(u,v)=0$ 有
    $$(u, v)=(u_j\alpha_j+u_k\alpha_k+u_m\alpha_m, v)=(u_k\alpha_k+u_m\alpha_m, \alpha_i+\alpha_j)=0,$$
    由于 $\{\alpha_k,\alpha_m\}$ 和 $\{\alpha_i,\alpha_j\}$ 之间的内积都小于等于 0，而 $u_k,u_m$ 大于 0，这说明
    $$(\alpha_k,\alpha_i) = (\alpha_k,\alpha_j) =(\alpha_m, \alpha_i) =(\alpha_m,\alpha_j)=0.$$
    即顶点 $\{i, j\}$ 与 $\{k,m\}=\Gamma\setminus\{i,j\}$ 是不连通的，与 $\Gamma$ 连通矛盾。

+ 如果 $\{v_j,\,j\ne i\}$ 至少有两个非零，则可以取下标 $j,k$ 使得 $v_j/u_j\ne0,\,v_k/u_k\ne0$。

    |   | $i$  |  $j$  |  $k$  | $\cdots$ |
    |:---:|:---:|:---:|:---:|:---:|
    | $u$ | 0   |  $>0$ | $>0$ |$>0$ |
    | $v$ | $<0$ | $\ne0$ | $\ne0$ | $\cdots$ |

    由于 $v_i\ne0$，通过选择 $v$ 或者 $-v$ 可以不妨设 $v_i<0$，并不妨设 $v_j/u_j\leq v_k/u_k$。记 $a=v_j/u_j$，则 $u'=au-v$ 满足 $(u',u')<0$，但是 $u'_i=-v_i>0$，$u'_j=0$，$u'_k\leq 0$，这与上面断言中 $u'$ 的系数除去至多一个例外，剩下的均非零且同号矛盾。

至此我们证明了当 $\Gamma$ 的 level 等于 2 时是双曲的。

我们接下来证明所有的基本权 $\{\omega_s\}$ 是两两分离的。我们先来说明不论 $(\omega_s,\omega_s)$ 的符号如何，它与其它的基本权 $\omega_t\,(t\ne s)$ 的内积满足 $(\omega_s, \omega_t)\leq0$。

分情况讨论：

+ 如果 $(\omega_s,\omega_s)>0$，由 @Prev:observeA 的讨论即得。

+ 如果 $(\omega_s,\omega_s)\leq0$，则根据 $(\ref{eq:idI})$，$\{(\omega_s,\omega_t)\}_{t\ne s}$ 中必须至少有一个严格小于 0，从而根据 [断言](#assetB)，在 $\{(\omega_s,\omega_t)\}_{t\ne s}$ 中至多有一个为正。但我们将证明这不可能。否则不妨设 $k\ne s$ 使得 $(\omega_s,\omega_k)>0$。在 $(\ref{eq:idII})$ 两边用 $\alpha_k$ 内积得到
$$0=(\omega_s,\omega_s)(\alpha_s,\alpha_k) +\sum_{t\ne s,k} (\omega_s,\omega_t)(\alpha_t,\alpha_k) + (\omega_s,\omega_k).$$
上面的和项前两个都非负，最后一个大于 0，矛盾。所以所有的 $\{(\omega_s,\omega_t)\}_{t\ne s}$ 都非正。

又因为对任何 $s,t$，$\Gamma\setminus\{s,t\}$ 是有限或者仿射的，所以其正交补，即 $\{\omega_s,\omega_t\}$ 张成的二维子空间不是正定的，从而 $\{\omega_s\}$ 之间是两两分离的。

# level = 1, 2 等价于双曲和分离

:::{.theorem #level-12}
下面两点是等价的：

1. $\Gamma$ 的 level 等于 1 或 2；
2. $\Gamma$ 是双曲的，且任何两个权都互相分离。
:::

**证明**：

$1\Rightarrow 2$：只要再证明对任何 $w\in W$，以及两个基本权 $\omega_i,\,\omega_j$，如果有 $\omega_i\ne w(\omega_j)$，则 $(\omega_i,w(\omega_j))\leq0$，并且二维子空间 $\{\omega_i,w(\omega_j)\}$ 不是正定的。

对 $l(w)$ 归纳：$l(w)=0$ 的情形在 @Pre:level-1 和 @Pre:level-2 中已经证明。下面假设 $l(w)>0$，且结论对所有长度 $<l(w)$ 的元素成立。

1. 如果存在 $k\ne i$ 使得 $l(s_kw)<l(w)$，则由于反射 $s_k$ 是正交变换，并且保持 $\omega_i$ 不动，有
   $$(\omega_i,s_kw(\omega_j))\xrightarrow{\ s_k\ } (\omega_i,w(\omega_j)).$$
   由归纳假设左边是分离的，从而右边也是分离的。

2. 如果对任何 $k\ne i$ 都有 $l(s_kw)>l(w)$，则 $w$ 的任一既约表示必然以 $s_i$ 开头，即 $w$ 形如 $w=s_iw'$ 且 $l(w)>l(w')$。从而
    $$(\omega_i,w(\omega_j))\xrightarrow{\ s_i\ }(\omega_i-2\alpha_i, w'(\omega_j)) =(\omega_i, w'(\omega_j))-2(\alpha_i,w'(\omega_j)).$$

    + 如果 $\omega_i\ne w'(\omega_j)$，则由归纳假设上面第一项 $(\omega_i, w'(\omega_j))\leq0$。第二项由于
    $$l(s_iw')>l(w')\Rightarrow w'^{-1}\alpha_i\in\Phi^+\Rightarrow (w'^{-1}\alpha_i, \omega_j)\geq0 \Rightarrow (\alpha_i, w'(\omega_j))\geq0.$$
    所以 $(\omega_i,w(\omega_j))\leq0$ 成立。
    + 如果 $\omega_i=w'(\omega_j)$，则 $w(\omega_j)=s_iw'(\omega_j)=s_i(\omega_i)$，于是
      $$(\omega_i, w(\omega_j))=(\omega_i, s_i(\omega_i))\xrightarrow{\ s_i\ }(\omega_i-2\alpha_i,\omega_i)=(\omega_i, \omega_i)-2 <0.$$
      其中最后一个不等号是利用了 @Pre:level-1 和 @Pre:level-2 的结论：若 $\Gamma$ 的 level 是 1 则 $(\omega_i, \omega_i)\leq0$，若 $\Gamma$ 的 level 是 2 则 $(\omega_i,\omega_i)\leq 1$。

    我们已经证明了 $(\omega_i,w(\omega_j))$ 总是 $\leq0$ 的。还需要说明 $\span\{\omega_i,w(\omega_j)\}$ 不是正定的。记 $U=\span\{\omega_i,w(\omega_j)\}$。用反证法，如果 $U$ 是正定的，则 $(\omega_i,\omega_i)>0$ 是实的。记
    $$v_I = w(\omega_j) - \frac{(\omega_i,w(\omega_j))}{(\omega_i,\omega_i)} \omega_i$$
    是 $w(\omega_j)$ 在 $\omega_i^\bot$ 上的投影，则 $v_I\in U$ 是 space-like 的向量。但是根据 @Prev:observeB 中的讨论，$v_I\in\barfd_I$，从而 $(v_I, v_I)\leq0$，矛盾。

$2\Rightarrow 1$：由于内积 $\inn$ 是双曲的，而子空间 $\span\{\omega_i,\omega_j\}$ 不是正定的，所以其正交补是正定或者半正定的。于是 $\Gamma\setminus\{i,j\}$ 是有限或者仿射的，从而 $\Gamma$ 的 level 等于 1 或 2。

# 附录

## level 1 情形断言的证明 {#appendixA}

首先是断言 1 的证明。记

$$I_+=\{s\in S\mid u_s>0\},\quad I_-=\{s\in S\mid u_s<0\},\quad I_0=\{s\in S\mid u_s=0\}.$$
并记 $u_+=\sum_{s\in I_+}u_s\alpha_s$，$u_-=\sum_{t\in I_-}u_t\alpha_t$，则 $u=u_++u_-$ 且
$$(u,u)=(u_+,u_+) + (u_-,u_-) + 2(u_+,u_-)<0.$$
但是注意到
$$(u_+, u_-)=\sum_{s\in I_+}\sum_{t\in I_-}\underbrace{u_s}_{>0}\underbrace{u_t}_{<0}\underbrace{(\alpha_s,\alpha_t)}_{\leq0}\geq 0.$$
所以 $(u_+, u_+) < 0$ 和 $(u_-, u_-)<0$ 至少有一个成立，不妨设 $(u_+, u_+)<0$。如果 $I_-\cup I_0\ne\emptyset$，那么 $I_+$ 作为从 $\Gamma$ 中删去 $I_-\cup I_0$ 后得到的真子图包含 time-like 的向量 $u_+$，这与 $\Gamma$ 的 level 等于 1 矛盾。所以 $I=I_+$，即所有系数 $u_s$ 都大于 0。相应地如果是 $(u_-,u_-)<0$ 的话则所有 $u_s$ 都小于 0。

对断言 2 我们仍然采用类似的记号，记 $v_+=\sum_{s\in I_+}v_s\alpha_s$，$v_-=\sum_{t\in I_-}v_t\alpha_t$，则同样有 $(v_+,v_-)\geq0$。

我们想证明 $|I_0|\leq1$，并且 $I_+$ 和 $I_-$ 中必有一个是空集。

如果 $|I_0|\geq2$，那么 $(v, v)=0$ 说明删除 $I_0$ 以后得到的子图不是有限的，这与 $\Gamma$ 的 level 是 1 和 @Pre:level-l 矛盾。所以 $|I_0|\leq 1$。

如果 $I_+,\,I_-$ 都不是空集的话，则 $v_+,v_-$ 都非零，并且必然有 $(v_+, v_+)\geq0$ 和 $(v_-, v_-)\geq0$ 成立，否则删掉 $I_+$ 或者 $I_-$ 以后剩下的子图不是有限或者仿射的，与 $\Gamma$ 的 level 是 1 矛盾。然而
$$0=(v, v) = (v_+,v_+) + (v_-,v_-) + 2(v_+,v_-).$$
三个非负数的和等于 0，只能是 $(v_+,v_+) = (v_-,v_-) =(v_+, v_-)=0$。现在分情况讨论：

1. 如果 $|I_0|=1$，那么删掉 $I_-\cup I_0$ 会至少删掉两个顶点，但 $(v_+,v_+)=0$ 说明 $I_+$ 不是有限的，与 $\Gamma$ 的 level 是 1 和 @Pre:level-l 矛盾。
2. 如果 $I_0=\emptyset$，则 $S=I_+\cup I_-$。然而 $(v_+,v_-)=\sum_{s\in I_+,\,t\in I_-}v_sv_t(\alpha_s,\alpha_t)=0$ 说明对任何 $s\in I_+,\,t\in I_-$ 有 $(\alpha_s,\alpha_t)=0$，从而 $I_+$ 和 $I_-$ 互不连通，这与 $\Gamma$ 连通矛盾。

总之 $I_+$ 和 $I_-$ 必有一个是空集，断言 2 得证。

## level 2 情形断言的证明 {#appendixB}


首先是断言 1 的证明。记 $I_+,I_-,I_0$ 如前，并记 $u_+=\sum_{s\in I_+}u_s\alpha_s$，$u_-=\sum_{t\in I_-}u_t\alpha_t$。则 $(u,u)<0$ 和 $(u_+,u_-)\geq0$ 说明 $(u_+, u_+) < 0$ 和 $(u_-, u_-)<0$ 中至少有一个成立。

如果 $|I_0|\geq2$，则 $(u,u)<0$ 与 $\Gamma$ 的 level 是 2 矛盾。所以 $|I_0|\leq 1$。

1. 如果 $I_+,I_-$ 都不是空集，则 $u_+,\,u_-$ 均不为 0。由于 $(u_+, u_+) < 0$ 和 $(u_-, u_-)<0$ 中至少有一个成立，不妨设 $(u_+,u_+)<0$，结合 $\Gamma$ 的 level 是 2，这要求 $|I_-\cup I_0|\leq 1$，从而只能是 $|I_-|=1,\, I_0=\emptyset$。即系数全部非 0 且恰好有一个异号。
2. 如果 $I_+,I_-$ 中有一个是空集，不妨设 $I_-=\emptyset$，我们仍然有 $|I_-\cup I_0|=|I_0|\leq1$。即系数至多有一个为 0 且其它的均同号。

总之我们证明了除去至多一个系数之外，其它的系数均非 0 且同号。断言 1 得证。

对断言 2，类似地，我们记 $v_+=\sum_{s\in I_+}v_s\alpha_s$，$v_-=\sum_{t\in I_-}v_t\alpha_t$。

首先 $|I_0|\leq2$ 是显然的，否则 $(v,v)=0$ 与 $\Gamma$ 的 level 是 2 和 @Pre:level-l 矛盾。

1. 如果 $I_0\ne\emptyset$，则 $I_+,I_-$ 中必有一个为空。否则 $|I_+\cup I_0|\geq2,\,|I_-\cup I_0|\geq2$。level 2 要求 $(v_+,v_+)\geq0,\,(v_-,v_-)\geq0$，从而 $(v,v)=0$ 和 $(v_+,v_-)\geq0$ 导致 $(v_+,v_+)=(v_-, v_-)=(v_+,v_-)=0$。由于 $\Gamma$ 至少包含 4 个顶点，所以 $I_+,\,I_-$ 中必有一个包含两个或者更多的顶点。不妨设 $|I_+|\geq2$，则删除 $I_+\cup I_0$ 会至少删掉 3 个顶点，但得到的子图不是正定的，与 $\Gamma$ 的 level 等于 2 矛盾。所以系数 $\{v_s\}$ 中如果有 0 的话，则至多只有两个 0，且剩下的都同号。
3. 如果 $I_0=\emptyset$ 是空集，则要么 $I_+,I_-$ 中有一个也是空集，从而所有的系数都非 0 且同号；要么 $v_+,\,v_-$ 均不为 0。这时 $\Gamma$ 连通说明 $(v_+,v_-)>0$，结合 $(v,v)=0$ 可以得出 $(v_+,v_+) < 0$ 和 $(v_-, v_-)<0$ 中至少有一个成立。不妨设 $(v_+,v_+)<0$，则 level 2 要求 $|I_-|\leq1$，即 $\{v_s\}$ 均非零且恰有一个元素与其它元素异号。

至此断言 2 得证，从而定理得证。$\blacksquare$

[^1]: 这里解释下为什么在 $K$ 中一定可以找到一个非平凡的元素。由于 $W_I$ 是不可约仿射的，$\rad(V_I)=\R\omega_s$，$\inn$ 在 $V_I/\R\omega_s$ 上诱导的内积是正定的。商群 $W_I/K$ 是 $V_I/\R\omega_s$ 中的反射群，并且保持这个正定内积不变，所以根据 [@Humphreys90 section 6.4] 的结论，$W_I/K$ 是有限群。由于 $W_I$ 是无限群，所以 $K$ 也是无限群。