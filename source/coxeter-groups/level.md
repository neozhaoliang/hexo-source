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
\DeclareMathOperator{\im}{im}

本文主要改写自 [@Maxwell82] 和[@Maxwell89]。

在这一讲，我将介绍 Coxeter 群的 level 的概念，并证明 level 等于 1 或 2 的群都是双曲的。这两种情形下 $\inn$ 都是非退化的，从而我们可以将 $V$ 和 $V^\ast$ 等同起来。于是根系、[基本权](/coxeter-groups/tits-cone/#fundamental-weights) $\Delta^\ast$、Tits 锥 $\tc$ 都在 $V$ 中。$\Delta^\ast$ 满足 $(\alpha_s,\omega_t)=\delta_{st}\,(\forall s,t\in S)$。

注意，在文中我总是先证明 $\inn$ 是双曲的，然后不加说明地将对偶空间 $V^\ast$ 和 $V$ 等同起来。所以我会直接写 $(\omega_s,\omega_t)$ 这样的记号。

此外我们总假定 $W$ 是不可约 Coxeter 群，即 Coxeter 图 $\Gamma$ 是连通的。


# level 的定义

:::{.definition}
@Maxwell82

$(W,S)$ 的 level 定义为最小的非负整数 $l$，使得在 $\Gamma$ 中删去任何 $l$ 个顶点后，剩下的每个连通分支都是有限或者仿射的。
:::

:::{.note}
**注意** level 的定义依赖于具体的几何实现（Vinberg 记号），一个抽象 Coxeter 群在不同的几何实现下可能有不同的 level。
:::

<!--more-->

根据定义，有限和仿射 Coxeter 群的 level 都是 0（因为不需要删去任何顶点）。

下面是几个 level 大于 0 的例子：

::: example

|     |     |     |
|:---:|:---:|:---:|
| level=1 | level=2 | level=3 |
|![](/images/coxeter/level1.svg){.fig width=120}|![](/images/coxeter/level2.svg){.fig width=120}|![](/images/coxeter/level3.svg){.fig width=120}|

+ 左图：三条边标号是 $(3,3,7)$，是双曲的；删去任何一个顶点后，剩下的是一个有限二面体群，因此 level = 1。
+ 中图：三条边标号（采用了 Vinberg 记号）是 $(3, 4, -1.1)$，删去红色顶点后，剩下的两个顶点构成一个双曲群，说明 level > 1；删去任何两个顶点的话只剩一个顶点，当然是有限的，因此 level = 2。
+ 右图：删去两个红色顶点以后，剩下的两个顶点构成一个 Vinberg 记号下的双曲群，说明 level > 2；删去任何三个顶点以后只剩一个顶点，当然是有限的，所以 level = 3。
:::

:::{.theorem #level-l}
若 $\Gamma$ 是连通的，且 level 等于 $l$，则在 $\Gamma$ 中删去任何 $l+1$ 个顶点后，剩下的每个连通成分都是有限的。
:::

**证明**：假设删去 $|U|=l+1$ 后存在一个不是有限型的连通分支 $Y$。由于 $\Gamma$ 连通，存在 $u\in U$ 与 $Y$ 相连。删除 $U\setminus\{u\}$ 后，令 $C$ 为包含 $Y\cup\{u\}$ 的连通分支。由 level $=l$，$C$ 必为有限型或仿射型。由于 $C$ 包含非有限型子图 $Y$，它不可能是有限型，所以 $C$ 是不可约仿射型。但不可约仿射图删除任一顶点后，所有剩余分支都是有限型；这与 $C\setminus\{u\}$ 包含非有限型分支 $Y$ 矛盾。$\blacksquare$

:::{.lemma}
level 1 的图必然是连通的。
:::

证明很简单，这里省略。


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


::: {.theorem #level-1}
@Maxwell82

如果 $\Gamma$ 的 level 是 1，则 $\Gamma$ 是双曲的。所有的 [基本权](/coxeter-groups/tits-cone#fundamental-weights) 都不是实的并且两两分离。
:::


**证明**：

**1. 证明 $\inn$ 是双曲的**。

我们约定对 $s\in S$，记 $U_s = \span\{\alpha_t\mid t\ne s\}$。由于 $\Gamma$ 的 level 是 1，$U_s$ 是正定或者半正定的 $n-1$ 维子空间。

用反证法，如果 $\Gamma$ 不是双曲的，由于它不可能是半正定的（否则与 level 1 矛盾），所以只有两种可能：

1. $\inn$ 的负惯性指数至少是 2。则 $V$ 中存在 2 维的负定子空间 $N$。根据维数公式 $\dim(U_s\cap N)\ge 1$，这不可能。
2. $\inn$ 的负惯性指数是 1，并且 $\rad(V)\ne0$。取
$$0\ne v=\sum_{s\in S}v_s\alpha_s\in\rad(V).$$
并取 $u=\sum_{s\in S}u_s\alpha_s$ 使得 $(u,u)<0$。
由于 $v\ne 0$，取 $s$ 使得 $v_s\ne0$。令
$$u'= u - \frac{u_s}{v_s} v$$
则 $u'$ 的 $\alpha_s$ 系数为 0，于是 $u'\in U_s$。然而 $(u',u')=(u,u)<0$，这也不可能。

所以 $\Gamma$ 是双曲的。

**2. 证明 $(\omega_s,\omega_s)\leq0$**

刚刚已经证明了 $\inn$ 是双曲的，而 $\omega_s^\perp=U_s$ 是正定或者半正定的，所以 $(\omega_s, \omega_s) \leq 0$。

**3. 证明 $(\omega_s,\omega_t)\leq0$ 且 $\span\{\omega_i,\omega_j\}$ 非正定**

记 Gram 矩阵 $G=((\alpha_s,\alpha_t))_{s,t\in S}$。则 $G$ 的对角元恒为 1、非对角元均非正。所以
$$G=I-B,\quad B\ge0.$$
又因为 $\Gamma$ 连通，$B$ 还是一个不可约非负矩阵。

我们已经证明了 $\inn$ 是双曲的，所以 $G$ 有一个负特征值，于是 $B$ 的谱半径满足 $\rho(B)>1$。由 Perron-Frobenius 定理，存在向量
$$\lambda = (\lambda_s)_{s\in S},\quad \lambda_s>0.$$
满足
$$B\lambda = \rho(B)\lambda.$$
令 $v = \sum_{s\in S}\lambda_s\alpha_s$，则
$$(v,v)=\lambda^\mathsf{T} G\lambda=\lambda^\mathsf{T}(I-B)\lambda=(1-\rho(B))\lambda^\mathsf{T}\lambda<0.$$
所以 $v$ 是一个 time-like 的向量。

而对每个 $s\in S$ 都有
$$(v,\omega_s) = \lambda_s > 0.$$
根据第二步，所有 $\omega_s$ 都和 $-v$ 位于 $\Q$ 的同一个分支中。于是
$$(\omega_s,\omega_t)\le0,\quad \forall s,t\in S.$$
特别地，$\span\{\omega_s,\omega_t\}$ 包含非正范数的非零向量，不可能是正定的，所以所有的基本权两两分离。$\blacksquare$

::: {.corollary #level-1-tits}
若 $W$ 的 level 为 1，则 Tits 锥的闭包 $\cl{\tc}$ 等于 $\Q_+$ 或者 $\Q_-$ 之一。
:::

**证明**：在 @Pre:level-1 中我们证明了所有的基本权 $\{\omega_s\}$ 都位于 $\Q$ 的同一个分支中。不妨设这个分支为 $\Q_+$。由于 $\Q_+$ 是凸锥，所以
$$\barfd\subset\Q_+.$$
又因为 $W$ 保持 $\Q_+$，所以
$$\tc =\bigcup_{w\in W}w\barfd\subset\Q_+.$$

由于 level 1 是双曲的，根据前文中关于 [双曲情形 Tits 锥的结论](/coxeter-groups/three-geometries#tits-closure)，$\tc$ 包含 $\N_+,\N_-$ 之一，这显然只能是 $\tc\supset\N_+$，于是 $\cl{\tc}\supset\cl{\N_+}=\Q_+$。$\blacksquare$

# Level 2 也是双曲的

:::{.lemma #gram-inverse}
设 $A$ 是 $\Gamma$ 的某个子图对应的 Gram 矩阵。则：

1. 如果该子图是有限型的，则 $A^{-1}\ge0$。
2. 如果该子图的 level 为 1，则 $A^{-1}\le0$。
:::

**证明**：

1. $A=I-B,\,B\ge0$。由于正定矩阵的特征值都大于 0，所以根据 Perron-Frobenius 定理，$B$ 的谱半径 $0\le\rho(B)<1$。于是
$$A^{-1} = \sum_{k=0}^\infty B^k \ge 0.$$
谱半径小于 1 保证了这个无穷和是收敛的。
2. 由于 level 1 的图是双曲的，根据 @Pre:level-1，它的基本权都不是实的，且两两内积非正。由于这些基本权给出的 Gram 矩阵正是 $A^{-1}$，因此 $A^{-1}\le0$。

$\blacksquare$

::: {.theorem #level-2}
level 等于 2 的群都是双曲的，所有的基本权 $\{\omega_s\mid s\in S\}$ 两两分离。$\omega_s$ 是实的当且仅当 $\Gamma\setminus\{s\}$ 的 level 等于 1，且对这样的 $\omega_s$ 有 $0<(\omega_s,\omega_s)\leq 1$。
:::

**证明**：

**1. 证明 $\Gamma$ 是双曲的**

由于 $\Gamma$ 的 level 恰好为 2，对每个 $s\in S$，子图 $\Gamma_s =\Gamma\setminus\{s\}$ 的 level 至多为 1；并且至少存在一个 $s$，使得 $\Gamma_s$ 的 level 恰好为 1。固定这样的 $s$，令 $I=S\setminus\{s\}$。按照 $\alpha_s,\alpha_{t_1},\ldots$ 的顺序，将 Gram 矩阵 $G$ 写成

$$G=\begin{pmatrix} 1 & b^\mathsf{T}\\
b & A
\end{pmatrix}$$
其中 $A$ 是 $\Gamma_s$ 的 Gram 矩阵，并且
$$b = ((\alpha_s,\alpha_t))_{t\in I}\le0.$$
由于 $\Gamma_s$ 的 level 为 1，所以 $A$ 是 Lorentzian 的，于是根据 @Pre:gram-inverse $A^{-1}\le0$。因此
$$b^\mathsf{T}A^{-1}b \le 0.$$
令 $d=1−b^\mathsf{T}A^{-1}b$，于是 $d\ge1$。通过 Schur 补合同变换，$G$ 合同于
$$G \sim\begin{pmatrix} d & 0\\ 0 & A\end{pmatrix}.$$
显然 $G$ 也是 Lorentzian 的。于是 $\Gamma$ 是双曲的。

**2. 证明 $\omega_s$ 是实权等价于 $\Gamma_s$ level 是 1 且实权都满足 $0<(\omega_s,\omega_s)\le1$**

如果 $\omega_s$ 是实权，由于刚刚证明了 $\Gamma$ 是双曲的，所以 $\Gamma_s$ 仍然是双曲的。并且 $\Gamma$ 的 level 是 2 保证了 $\Gamma_s$ 的 level $\le1$，从而 $\Gamma_s$ 的 level 必须是 1。

反之，若 $\Gamma_s$ 的 level 是 1，由分块求逆公式，
$$G^{-1}=\frac{1}{d}\begin{pmatrix}1  & -b^\mathsf{T}A^{-1}\\
-A^{-1}b & \ast
\end{pmatrix}.\tag{$\ast$}\label{eq:schur-inverse}$$
故
$$(\omega_s,\omega_s) = (G^{-1})_{ss} = \frac{1}{d}.$$
满足
$$0<(\omega_s,\omega_s)\le1.$$
则 $\omega_s$ 是实权，并且 $0<(\omega_s,\omega_s)\le1$。

**3. 证明所有的基本权两两分离**

首先任何两个基本权 $\omega_s,\omega_t$ 张成的子空间不可能是正定的，否则删去 $s,t$ 后的子图 $\Gamma\setminus\{s,t\}$ 仍然是双曲的，这与 $\Gamma$ 的 level 是 2 矛盾。所以只要再证任何两个基本权之间的内积 $(\omega_s,\omega_t)\le0$ 即可。

+ 当 $\omega_s,\omega_t$ 中至少有一个是实权时，不妨设 $\omega_s$ 是实权。根据 $(\ref{eq:schur-inverse})$，
$$(\omega_s,\omega_t) = -\frac{1}{d}(A^{-1}b)_t.$$
由于 $A$ 的 level 是 1，根据 @Pre:gram-inverse，$A^{-1}\le0$。又因为 $b\le0$，所以
$$(\omega_s,\omega_t)\le0.$$
+ 如果 $\omega_s,\omega_t$ 都不是实权，那么它们都在 $\Q$ 中。我们故技重施，用 level 1 情形中的技巧，记 $G=I-B,\, B\ge0$，则 $B$ 的谱半径 $\rho(B)>1$。设 $\lambda>0$ 是 $\rho(B)$ 对应的正特征向量，则 $v=\sum_{s\in S}\lambda_s\alpha_s$ 是 time-like 的向量，且满足
$$(v,\omega_s)=\lambda_s > 0,\quad (v,\omega_t)=\lambda_t > 0.$$
所以 $\omega_s,\omega_t$ 都和 $-v$ 位于 $\Q$ 的同一分支中。于是自然也有 $(\omega_s,\omega_t)\le0$。

$\blacksquare$

# level = 1, 2 等价于双曲和分离

:::{.lemma #key-lemma}
设 $w\in W$，则对任意基本权 $\omega_i,\omega_j$ 有
$$(\omega_i,w\omega_j)\le (\omega_i,\omega_j).$$
此外，当 $i=j$ 时，如果 $w\omega_i\ne \omega_i$，则还有
$$(\omega_i,w\omega_i)\le (\omega_i,\omega_i)-2.$$
:::

**证明**：设 $w=s_1\cdots s_m$ 是一个既约表达式。记 $w_k=s_1\cdots s_k\,(1\le k\le m)$ 和 $w_0=1$。

由于
$$s_k(\omega_j)=\begin{cases}\omega_j-2\alpha_j,&s_k=s_j,\\\omega_j,&s_k\ne s_j.\end{cases}$$
直接望远镜求和可得
$$w(\omega_j)=\omega_j-2\sum_{\substack{1\le k\le m\\ \\ s_k=s_j}}w_{k-1}(\alpha_j).$$
两边与 $\omega_i$ 作内积，得到
$$(\omega_i, w(\omega_j))=(\omega_i, \omega_j)-2\sum_{\substack{1\le k\le m\\ \\ s_k=s_j}}(\omega_i, w_{k-1}(\alpha_j)).$$
由于表达式是既约的，所以每个 $w_{k-1}(\alpha_j)\in\Phi^+$ 是单根的非负线性组合，与 $\omega_i$ 的内积给出它的 $\alpha_i$ 项系数，是非负的。因此 $$(\omega_i, w(\omega_j))\le (\omega_i, \omega_j).$$
如果 $i=j$ 且 $w\omega_i\ne \omega_i$，则 $w$ 的既约表示中必然出现 $s_i$。取最小的 $k$ 使得 $s_k=s_i$。在此之前的反射 $s_1,\ldots,s_{k-1}$ 都不改变 $\alpha_i$ 分量，所以 $w_{k-1}(\alpha_i)$ 的 $\alpha_i$ 分量仍然是 1，因此
$$(\omega_i, w_{k-1}(\alpha_i))=1.$$
这一项会在上面的求和中贡献 1，所以
$$(\omega_i,w\omega_i)\le (\omega_i,\omega_i)-2.$$ 
$\blacksquare$

:::{.theorem #level-12}
下面两点是等价的：

1. $\Gamma$ 的 level 等于 1 或 2；
2. $\Gamma$ 是双曲的，且任何两个不同的权都互相分离。
:::

**证明**：

$1\Rightarrow 2$：前面已经证明了 level 为 1 或 2 的时候都是双曲的，并且所有基本权都是两两分离的。只要再证明任何两个不同的权都是分离的。设
$$\lambda = u\omega_i,\ \mu = v\omega_j,\quad u,v\in W.$$
是两个权。令 $w=u^{-1}v$，只要证明 $\omega_i$ 和 $w\omega_j$ 分离即可。

首先 $\omega_i$ 和 $w\omega_j$ 必然线性无关。若不然，设 $w\omega_j = c\omega_i$，由于无限不可约 Coxeter 群的 Tits 锥是点锥，所以必须 $c>0$。这时 $c\omega_i$ 和 $\omega_j$ 都属于基本区域 $\barfd$，并且属于同一个 $W$- 轨道。由于每个 $W$- 轨道恰好与 $\barfd$ 交于一点，所以 $c\omega_i=\omega_j$，这只能是 $i=j$ 且 $c=1$。于是任何两个不同的权线性无关。

根据 @Pre:key-lemma，
$$(\omega_i,w\omega_j)\le (\omega_i,\omega_j).$$

下面分两种情形证明 $\omega_i$ 与 $w\omega_j$ 分离。

**情形一：$i\ne j$**

由于基本权 $\omega_i,\omega_j$ 两两分离，因此 $(\omega_i,\omega_j)\le 0$ 并且 $\span\{\omega_i,\omega_j\}$ 不是正定的。

如果 $\omega_i$ 和 $\omega_j$ 中有一个不是实的，那么 $\omega_i,w\omega_j$ 中对应的那个也不是实的，它们张成的二维空间不可能正定。再由
$$(\omega_i,w\omega_j)\le(\omega_i,\omega_j)\le0.$$
可知 $\omega_i$ 与 $w\omega_j$ 分离。

所以只需考虑 $\omega_i$ 和 $\omega_j$ 都是实权的情形。由于 $\omega_i,\omega_j$ 分离，它们张成的二维空间不是正定的，所以相应的 Gram 行列式非正：
$$(\omega_i,\omega_j)^2\ge(\omega_i,\omega_i)(\omega_j,\omega_j).$$
另一方面，
$$(\omega_i,w\omega_j)\le(\omega_i,\omega_j)\le0.$$
因此
$$(\omega_i,w\omega_j)^2\ge(\omega_i,\omega_j)^2\ge(\omega_i,\omega_i)(\omega_j,\omega_j) = (\omega_i,\omega_i)(w\omega_j,w\omega_j) .$$
所以 $\span\{\omega_i,w\omega_j\}$ 也不是正定的。于是 $\omega_i$ 与 $w\omega_j$ 分离。

**情形二：$i=j$**

现在考虑两个不同的权 $w\omega_i\ne\omega_i$。根据 @Pre:key-lemma 中的严格估计，
$$(\omega_i,w\omega_i)\le(\omega_i,\omega_i)-2.$$
如果 $\omega_i$ 不是实的，那么 $\span\{\omega_i,w\omega_i\}$ 不可能正定；同时
$$(\omega_i,w\omega_i)\le(\omega_i,\omega_i)-2<0.$$
所以此时二者分离。

下面只需考虑 $\omega_i$ 是实权的情形。Level 2 的实权满足
$$0<(\omega_i,\omega_i)\le1.$$
所以
$$(\omega_i,w\omega_i)\le (\omega_i,\omega_i)-2\le -(\omega_i,\omega_i)<0.$$
于是
$$(\omega_i,w\omega_i)^2\ge(\omega_i,\omega_i)^2.$$

又因为 $W$ 保持范数，所以
$$(\omega_i,w\omega_i)^2\ge(\omega_i,\omega_i)^2=(\omega_i,\omega_i)(w\omega_i,w\omega_i).$$
故 $\span\{\omega_i,w\omega_i\}$ 不是正定的。从而 $\omega_i$ 与 $w\omega_i$ 分离。

$2\Rightarrow 1$：由于内积 $\inn$ 是双曲的，而子空间 $\span\{\omega_i,\omega_j\}$ 不是正定的，所以其正交补是正定或者半正定的。于是 $\Gamma\setminus\{i,j\}$ 是有限或者仿射的，从而 $\Gamma$ 的 level 等于 1 或 2。

$\blacksquare$