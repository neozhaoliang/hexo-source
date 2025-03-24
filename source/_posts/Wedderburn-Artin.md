---
title: "Artinian 环与 Wedderburn-Artin 定理"
date: "2010-10-22"
categories: ["有限群表示与结合代数"]
url: "wedderburn-artin-theorem"
---
\newcommand{\rad}[1]{\mathrm{rad}(#1)}

Wedderburn-Artin 定理最早源于 1907 年 Wedderburn 研究域上有限维结合代数的分类定理。在 Wedderburn 考虑这个问题的时候，Killing 和 Cartan 等人已经完成了有限维复半单 Lie 代数的分类工作，如果读者对有限维 Lie 代数有所了解的话，可能已经知道任何有限维复 Lie 代数 $L$ 有一个极大可解理想 $\rad{L}$，叫做 $L$ 的根 (radical)，去掉这个根的商代数 $L/\rad{L}$ 是半单代数，其上的双线性型 Killing 型是非退化的，从而可以通过反复取正交补的方式将 $L/\rad{L}$ 分解为一些单代数的直和，然后对单 Lie 代数的结构进行讨论得出其共有 9 种不同的类型。Wedderburn 的思路自然受到了 Killing 等人工作的启发，他采取了类似的套路：

对域 $F$ 上的有限维结合代数 $A$：

1. 定义根理想 $\rad{A}$。
2. 转移到半单代数 $A/\rad{A}$。
3. 将 $A/\rad{A}$ 分解为单代数的直和。
4. 讨论单代数的结构。

整个路线图如下所示：

![](/images/wedderburn-artin/steps.svg){.fig}

总之虽然有限维复李代数和结合代数结构相差很大，但它们的结构定理遵循了类似的套路：拿走可解/幂零的部分，剩下的部分是半单的，而半单是单的直和，于是最终归结为对单成分的结构进行讨论。

Wedderburn-Artin 定理的过程比较长，不过在头脑中事先明确这条主线，理解整个证明并不是一件困难的事情。

本文将针对左 Artinian 环的情形证明 Wedderburn-Artin 定理。我主要参考了 Curtis 和 Reiner 的经典 [@curtis-reiner]，Herstein 的精彩小书 [@herstein-rings]，以及林节玄的 [@Lam01]。C&R 的书是个大部头，但它总是从最基本的概念讲起，叙述清楚易懂，对新手非常友好。Herstein 的书则是另一种风格，主线简单，节奏很快，短短几章就讲到了中心单代数和 Galois 上同调。林节玄的书风格则更为现代一些，我没有细读，不多评价。

<!--more-->

:::{.note}
**注意**

1. Wedderburn 对 $\rad{A}$ 的定义方法只适用于像左 Artinian 环这样有特殊限制的环。现代普遍采用 Jacobson 根 $J(A)$ 来定义 $\rad{A}$。Jacobson 根的好处是它对任意的含 1 结合环都有定义，而且在建立了关于 Jacobson 根的事实后，证明 Wedderburn-Artin 定理相对采用 Wedderburn 的途径要简洁很多。
2. 定义 $A$ 的半单性有两种定义方法：$\rad{A}=(0)$ 或者完全可约性。后者是更常见的做法。在左 Artinian 环的情形，这两种方法是等价的。
:::

# 记号与约定

+ 在本文中，$R$ 总表示含乘法单位元的结合环。我们称 $R$ 是**左 Artinian 环**，如果 $R$ 的左理想满足所谓的降链条件 (Descending chain condition, DCC)，即对任何左理想 $\{I_n\}_{n=1}^\infty$ 组成的无穷序列
$$I_1\supseteq I_2\supseteq \cdots \supseteq I_n\supseteq\cdots$$
都必然存在正整数 $N$ 使得 $I_N=I_{N+1}=\cdots$。左 Artinian 环的另一种等价刻画是，任何由 $R$ 的左理想组成的非空集合必有极小元。

+ 如果一个左 $R-$ 模 $M$ 除了 $(0)$ 和自身以外没有其它非平凡的子模，就称 $M$ 是**不可约**的。如果左理想 $I\subseteq R$ 作为左 $R-$ 模是不可约的，就称 $I$ 是不可约左理想。非零的不可约左理想叫作**极小左理想**。

# 定义环 $R$ 的根 $\rad{R}$

前面提到，Wedderburn 的想法第一步是仿照 Lie 代数的情形定义环 $R$ 的根 $\rad{R}$，它必须是一个双边理想，从而可以取商环 $R/\rad{R}$，$R/\rad{R}$ 的根是平凡的。

Wedderburun 的想法是将 $\rad{R}$ 定义为 $R$ 的极大幂零理想，即 $R$ 的所有**幂零左理想**的和。这个定义本身的合理性是存疑的，所有幂零左理想的和是否真的是双边理想？即便是双边理想，它是否仍然幂零？虽然这两点确实都成立，但是背后的原因并不直观。这一节的任务就是解决这个问题。

:::{.definition}
我们称 $R$ 的左理想 $I$ 是幂零的，如果存在正整数 $n$ 使得 $I^n=0$。
:::

显然 $I$ 幂零自动蕴含其元素都是幂零的：对任何 $x\in I$ 有 $x^n=0$。但是反过来则未必对：$I$ 的每个元素都幂零并不能保证 $I$ 是幂零的。

:::{.definition}
$R$ 的所有幂零左理想的和记作 $\rad{R}$。
:::

我们要解决两个问题：

1. $\rad{R}$ 还是幂零左理想的吗？不难证明有限多个幂零左理想的和仍然是幂零的，但是无穷多个幂零左理想的和还幂零吗？

2. $\rad{R}$ 是双边理想吗？

这两个问题都可以用一个引理来解决，这个引理的证明颇有一点技巧性：

:::{.definition}
如果 $e\in R$ 满足 $e\ne0$ 且 $e^2=e$，就称 $e$ 是一个幂等元。
:::

:::{.lemma #idempotent}
设 $R$ 是左 Artinian 环。如果左理想 $I\subseteq R$ 不是幂零的，则其必然包含一个幂等元。
:::


我们把 @Pre:idempotent 的证明稍微放一放，先看看它是怎么解决上面的问题 1, 2 的。

记 $N$ 为 $R$ 的所有幂零左理想 $\{I_{\alpha}\}$ 的和，则 $N$ 也是左理想，并且其中的元素都是 $\{I_{\alpha}\}$ 中元素的有限线性组合：
$$x = x_{\alpha_1}+x_{\alpha_2}+\cdots+x_{\alpha_k},\quad x_{\alpha_i}\in I_{\alpha_i}.$$

1. 如果 $N$ 不是幂零的，那么根据 @Pre:idempotent 它包含一个幂等元 $e$，于是 $e$ 可以表示为有限多个幂零元的和，从而也是幂零的，矛盾！
2. $NR$ 是一个双边理想，而且它是幂零的：$$(NR)^i=N(RN)^{i-1}R\subseteq N^iR.$$特别它是一个幂零左理想，于是 $NR\subseteq N$，从而 $N$ 是双边理想。

**@Pre:idempotent 的证明**：

我们会反复使用 DCC 降链条件，即任何由 $R$ 的左理想构成的非空集合必有最小元。

首先不妨假设 $I$ 是「极小」非幂零的，即 $I$ 本身不幂零，但 $I$ 的任何非平凡左理想都是幂零的。否则考察所有包含在 $I$ 内的、非幂零的左理想组成的集合，此集合包含 $I$ 所以非空，于是根据 DCC 条件它包含一个极小元 $I_1$，$I_1$ 不是幂零的，但是任何真包含于 $I_1$ 内的左理想都是幂零的。用 $I_1$ 代替 $I$，故而可以假设 $I$ 是极小非幂零的。

$I^2\subseteq I$，$I^2$ 不可能是幂零的，否则 $I$ 就幂零了，所以 $I^2=I$。我们考察所有满足如下条件的左理想 $L$ 组成的集合 $S$：

1. $L\subseteq I$。
2. $IL\ne0$。

显然 $I\in S$ 从而 $S$ 非空，于是 $S$ 包含一个极小元 $L$。由于 $IL\ne0$ 所以存在 $x\in L$ 使得 $Ix\ne 0$。由于 $Ix$ 是包含在 $L$ 内的一个左理想，而且 $I(Ix)=Ix\ne0$ 所以 $Ix$ 也在 $S$ 中，由 $L$ 的极小性有 $Ix=L$。由 $x\in L$ 可知存在 $a\in I$ 满足 $x=ax$，从而
$$x= ax = a^2x = \cdots.$$
所以 $a$ 不可能是幂零的，并且 $(a^2-a)x=0$。我们断言 $a^2-a$ 是幂零的。为此进一步考虑包含在 $I$ 内的左理想
$$N = \{ u\in I\ |\ ux = 0\}.$$
于是 $Nx=0$，但 $Ix\ne0$，所以 $N$ 真包含于 $I$ 内，所以 $N$ 是幂零的，从而其每个元素都是幂零的，特别地 $a^2-a\in N$ 是幂零的。我们断言存在一个多项式 $p$ 使得 $u=p(a)$ 是一个幂等元。为此假设 $(a^2-a)^k=0$，展开以后可得存在多项式 $q$ 使得 $a^k=a^{k+1}q(a)$，从而 （反复将等式右边的 $a^k$ 替换为 $a^{k+1}q(a)$）
$$a^k=a^kaq(a)=a^{k+2}q^2(a)=a^{k+3}q^3(a)=\cdots=a^{2k}q^{k}(a).$$
令 $e=a^kq^k(a)$，则 $a^k=a^ke$, 由于 $a$ 不是幂零的所以 $e\ne0$。在 $a^k=a^ke$ 两边同乘以 $q^k(a)$ 得到 $a^kq^k(a)=a^{k}q^{k}(a)e$，即 $e=e^2$，从而 $e$ 是幂等元，这就证明了结论。$\blacksquare$

整理上述讨论，我们给出半单性的定义：

:::{.definition}
设 $R$ 是左 Artinian 环，定义其根 $\rad{R}$ 为 $R$ 的所有幂零左理想之和，则 $\rad{R}$ 是双边理想，且是幂零的。如果 $\rad{R}=0$，即 $R$ 不含任何非零的幂零左理想，就称 $R$ 是**半单**的。
:::

不难验证环 $R/\rad{R}$ 不含非零的幂零左理想，从而它符合我们对半单性的定义。下面的任务就是对半单环进行讨论。

@Pre:idempotent 有一个简单的推论，后面会用到。我把它写在这里：

:::{.corollary #L-proj}
设 $R$ 是半单左 Artinian 环，$L$ 是 $R$ 的极小左理想，$e\in L$ 是幂等元，则：

1. 对任何 $R$ 的左理想 $I\supset L$ 都有 $Ie=L$。
2. 对任何 $x\in L$ 有 $xe=x$。
:::

这里 $e$ 的存在性由 $R$ 半单以及 @Pre:idempotent 保证。这个结论的含义是，对 $x\in R$，右乘 $x\mapsto xe$ 将 $x$ 投影到 $L$ 中。特别地，这个投影保持 $L$ 中的元素不动。

**证明**：

1. 显然 $Ie\subset L$，并且 $e=e\cdot e\in Ie$，所以 $Ie\ne (0)$，于是由 $L$ 是极小左理想可得 $Ie=L$。
2. 取 $I=R$ 即得 $L=Re$，即 $L$ 中的任何元素 $x$ 都形如 $x=ae,\,a\in R$。于是 $xe=ae^2=ae=x$。$\blacksquare$


# 将半单环分解为单环的直和

我们将证明半单环总是可以分解为一些单环的直和（单环的含义后面会介绍），而且这种分解还是唯一的。如果用整数分解为素数乘积来类比的话，极小左理想相当于单个素因子，单环相当于某个素因子的幂。

我们首先来证明半单环的极小左理想具有直和补性质。首先是一个引理：

:::{.lemma #ideal-decomp}
设 $R$ 是半单环，$L\subset I$ 都是 $R$ 的左理想并且 $L$ 还是极小左理想，则存在 $R$ 的左理想 $J$ 满足 $I=L\oplus J$。
:::

**证明**： 根据 @Pre:L-proj，设幂等元 $e\in L$ 满足 $I=Le$。考虑 $J=I(1-e)$，这也是一个包含在 $I$ 中的左理想。显然 $I=Ie\oplus I(1-e)=L\oplus J$。$\blacksquare$

::: {.theorem #decompose-minimal}
半单环 $R$ 一定可以分解为有限个极小左理想的直和 $R=L_1\oplus\cdots\oplus L_n$。
:::

**证明**：设 $L_1$ 是 $R$ 的任一极小左理想，在 @Pre:ideal-decomp 中取 $L=L_1,I=R$ 可得存在 $R$ 的左理想 $J$ 使得 $R=L_1\oplus J$。如果 $J$ 非零，则它包含 $R$ 的某个极小左理想 $L_2$。同样地 $J$ 可以进一步分解为 $J=L_2\oplus K$。其中 $K$ 也是 $R$ 的左理想。这样继续分解下去，由于 $R$ 是左 Artinian 环，这样的分解只能进行有限多次，所以
$$R=L_1\oplus J =L_1\oplus L_2\oplus K = \cdots = L_1\oplus L_2\oplus\cdots\oplus L_n.$$
$\blacksquare$

我们接下来要把 $R=\oplus_{i=1}^nL_i$ 中所有同构于某个 $L_i$ 的极小左理想合起来，形成一个单环。这类似于在整数的素因子分解中把相同的素数的乘积合起来得到单一素因子的幂。

:::{.definition}
如果两个极小左理想 $L,L'$ 作为左 $R-$ 模是同构的，就称它们是同构的，记作 $L\cong L'$。
:::

我们先来说明极小左理想具有某种「正交性」：

::: {.lemma #two-left-ideals}
两个极小左理想 $L\cong L'$ 当且仅当 $L'L\ne0$。特别地这个同构可以由右乘一个元素 $a\in L$ 给出：$L'=La$。
:::

**证明**：由于 $L'L\subset L$，它只能是 $(0)$ 或者 $L$，所以陈述 $L'L\ne0$ 等价于 $L'L=L$。于是我们只要证明以下三点是等价的即可：

::: {.simple}
1. $L\cong L'$。
2. 存在 $a\in L$ 使得 $L=L'a$。
3. $L'L = L$。
:::

$1\Rightarrow 2$：
设 $\varphi: L\to L'$ 是一个左 $R-$ 模同构，利用 @Pre:L-proj 的结论，设 $e\in L$ 是幂等元，则对任何 $x\in L$ 都有 $x=xe$，所以
$$\varphi(x)=\varphi(xe)=x\varphi(e),\quad x\in L.$$
即同构 $\varphi$ 由右乘 $a=\varphi(e)$ 给出。

$2\Rightarrow 3$：
注意到 $L'L\subset L$ 和 $L'L\supset L'a=L$ 即可。

$3\Rightarrow 1$：
若 $L'L=L$，则存在 $a\in L$ 使得 $L'a\ne0$，而 $(0)\ne L'a\subset L$，所以 $L'a=L$，于是 $y\to ya$ 给出了从 $L'$ 到 $L$ 的一个左 $R-$ 模同构。$\blacksquare$

:::{.corollary #left-ideal}
设 $R=\oplus_{i=1}^n L_i$ 是上面所述的将 $R$ 分解极小左理想的直和，则 $R$ 的任何极小左理想必然同构于某个 $L_i$。
:::

**证明**：对任何极小左理想 $L$ 有 $L=\oplus_{i=1}^nLL_i$，所以必然存在某个 $i$ 使得 $LL_i\ne0$，从而根据 @Pre:two-left-ideals 有 $L\cong L_i$。$\blacksquare$

对 $R$ 的任一极小左理想 $L$，记 $B_L$ 为 $R$ 的所有同构于 $L$ 的极小左理想的和。我们来分析 $B_L$ 具有哪些性质。

:::{.lemma #Bi-orth}
$B_LB_{L'}\ne 0$ 当且仅当 $L\cong L'$。
:::
**证明**：由 @Pre:two-left-ideals 这是显然的。$\blacksquare$

:::{.lemma}
$B_L$ 是双边理想。
:::

**证明**：记 $R = \oplus_{i=1}^nL_i$ 为极小左理想的直和，于是 $B_LR=\oplus_{i=1}^nB_LL_i$。右边每个 $B_LL_i$ 要么是 $(0)$ ($L_i\ncong L$)，要么等于 $L_i$ ($L_i\cong L$) 从而属于 $B_L$，所以 $B_LR\subset B_L$，即 $B_L$ 是双边理想。$\blacksquare$

为简便以下记 $B_i = B_{L_i}$。

:::{.lemma}
$B_L$ 也有乘法单位元 （与 $R$ 的单位元未必相同）。
:::

**证明**：不妨设在 $R = \oplus_{i=1}^nL_i$ 中，$\{L_1,\ldots, L_m\}$ 是互不同构的，$\{L_{m+1},\ldots, L_n\}$ 中的任何一个都与 $\{L_1,\ldots, L_m\}$ 中的某一个同构，则 $R=B_1+\cdots+B_m$。于是环 $R$ 的单位元可以表示为
$$1 = e_1+\cdots + e_m,\quad e_i\in B_i.$$
对任何 $x\in B_i$，利用 $i\ne j$ 时 $B_iB_j=0$ 有
$$x=1\cdot x = e_1x+\cdots+e_mx = e_ix.
$$
同理也有 $x=xe_i$。从而 $e_i$ 是 $B_i$ 的乘法单位元。

根据 @Pre:left-ideal 任何 $B_L$ 必然等于 $\{B_1,\ldots,B_m\}$ 之一，所以也是有单位元的。$\blacksquare$

:::{.lemma}
$B_L$ 也满足左理想的 DCC 降链条件。
:::

**证明**：只要说明 $B_{L}$ 的左理想 $I$ 也是 $R$ 的左理想即可：由于 $e$ 是 $B_{L}$ 的乘法单位元所以 $I=eI$，于是 $RI=ReI\subset B_{L}I\subset I$。$\blacksquare$

与这个引理的证明类似，我们可以得出 $B_L$ 的右理想 $I$ 也是 $R$ 的右理想。特别地 $B_L$ 的双边理想也是 $R$ 的双边理想。

:::{.lemma}
$B_L$ 除了 (0) 和自身外不含其它双边理想。
:::

**证明**：设 $D$ 是 $B_L$ 的非零双边理想，则 $D$ 也是 $R$ 的双边理想，从而其包含 $R$ 的某个极小左理想 $L_1$，即$$L_1\subset D \subset B_L.$$由于 $L_1B_L\supset L_1^2\ne0$ 所以 $L_1\cong L$。

由于对任意的 $a\in R$ 都有 $L_1a\subset D$，根据 @Pre:two-left-ideals，这些 $L_1a$ 跑遍所有与 $L_1$ 同构的极小左理想，从而 $B_L\subset D$，于是 $B_L=D$，即 $B_L$ 不含非平凡的双边理想。$\blacksquare$

:::{.lemma}
$R = B_1\oplus\cdots\oplus B_m$。
:::

**证明**：设 $x_i\in B_i$ 满足 $x_1+\cdots+x_m=0$，两边同时乘以 $B_i$ 的单位元 $e_i$ 并利用 @Pre:Bi-orth 可得 $x_i=0$。$\blacksquare$

:::{.lemma}
$R$ 的任何双边理想 $I$ 都可以表示为若干 $B_i$ 的直和。
:::

**证明**：由 $R=\oplus_{i=1}^mB_i$ 有 $I=\oplus_{i=1}^m IB_i$。每个 $IB_i$ 都是 $B_i$ 中的双边理想，而我们已经证明了 $B_i$ 没有非平凡的双边理想，所以每个 $IB_i$ 要么等于 $B_i$，要么等于 $(0)$，从而 $I$ 是一些 $B_i$ 的直和。$\blacksquare$

:::{.definition}
如果左 Artinian 环 $R$ 除了 $(0)$ 和自身外不含有其它的双边理想，就称 $R$ 是**单环**。
:::

显然单环的根都是 $(0)$，所以也是半单的。

:::{.proposition}
设 $R$ 是单环，则在同构意义下只有一种不可约左 $R-$ 模，即 $R$ 的某个极小左理想。
:::

**证明**：显然 $R$ 的所有极小左理想都是互相同构的。设 $M$ 是任一不可约左 $R-$ 模，则 $R$ 的某个极小左理想 $L$ 满足 $LM\ne 0$，从而存在 $m\in M$ 满足 $Lm\ne 0$，从而 $Lm=M$。$\phi\colon\ x\mapsto xm$ 给出了 $L$ 到 $M$ 的 $R-$ 模同构。$\blacksquare$

至此我们已经把半单环 $R$ 分解为了单环的直和：
$$R = B_1\oplus\cdots\oplus B_m.$$
实际上这个分解还是唯一的，即若
$$R = B'_1\oplus\cdots\oplus B'_l.$$
其中每个 $B'_j$ 是单环，并且是 $R$ 的双边理想，则 $m=l$ 且适当重排以后有 $B_i=B'_j$。（证明简单，略）

# 单环的结构定理

最终我们来到了单环的结构定理。在本节中，我们用 $A$ 来表示单环，以便与前面的半单环 $R$ 区分。

::: {.theorem #w-a}

(Wedderburn-Artin)

设 $A$ 是单环，则存在除环 $D$ 使得 $A\cong {\rm Mat}_n(D)$，这里 $n$ 和 $D$ 由 $A$ 唯一确定。
:::

我们先来验证 ${\rm Mat}_n(D)$ 是单环。记 $e_{ij}\in {\rm Mat}_n(D)$ 是第 $(i,j)$ 个分量为 1，其余位置都是 0 的初等矩阵。

1. 恒等矩阵 $I_n$ 是乘法单位元。
2. ${\rm Mat}_n(D)$ 可以分解为极小左理想的直和
$${\rm Mat}_n(D)={\rm Mat}_n(D)e_{11}\oplus\cdots {\rm Mat}_n(D)e_{nn}.$$
    其中 $\{e_{ii},\,1\leq i\leq n\}$ 是仅在对角线上第 $i$ 个元素为 1，其余所有元素都为 0 的矩阵，它们构成一组互相正交的幂等元，其和为单位矩阵。左理想 $L_i={\rm Mat}_n(D)e_{ii}$ 中的矩阵除了第 $i$ 列以外，其余的列都是 0。$L_i$ 是极小左理想是因为，对任何两个非零元素 $x,y\in L_i$，我们总可以用初等行变换将 $x$ 变成 $y$，而初等行变换就是左乘一个 ${\rm Mat}_n(D)$ 中的矩阵，所以任何非零元 $x$ 都可以在 ${\rm Mat}_n(D)$ 的左乘作用下生成整个 $L_i$，所以 $L_i$ 确实是极小左理想。
3. 这些极小左理想 $L_i\,(1\leq i\leq n)$ 是互相同构的。为此只要说明
    $$L_iL_j={\rm Mat}_n(D)e_{ii}\cdot {\rm Mat}_n(D)e_{jj}$$
    不为 0 即可，而这个乘积包含 $e_{ii}e_{ij}e_{jj}=e_{ij}$，当然不是 0。

下面回到 @Pre:w-a 的证明。

大多数文献上对这一步的处理方式都是证明单环 $A$ 和它的不可约模满足所谓的双重中心化子性质。我们先介绍大致的思路：

设 $M$ 是一个左 $A-$ 模，则 $A$ 在 $M$ 上的左乘给出了 $A\to {\rm End}(M)$ 的一个环同态，记 $A$ 在 ${\rm End}(M)$ 中的同态像为 $A_L$。由于 $A$ 是单环所以 $A\cong A_L$。

记 $D={\rm Hom}_A(M,M)$ 为 $M$ 的 $A-$ 模自同态。$D$ 正是 $A_L$ 在 ${\rm End}(M)$ 中的中心化子：
$$(am)d = a(md),\quad a\in A_L,\,m\in M,\,d\in D.$$
值得注意的是，我们把 $A_L$ 的作用写在左边（这就是为什么用了 $L$ 作为下标），$D$ 在 $M$ 上的作用写在右边：对任何 $d\in D$，$d$ 在 $M$ 上的作用为 $m\to md$。把 $D$ 的作用写在右边有两个好处：一是可以避免后面在矩阵中使用讨厌的反环记号 [^4]，二是这样一来 $A$ 和 $D$ 交换就等价于说 $M$ 是一个 $(A, D)-$ 双模。

进一步记 $E={\rm Hom}_D(M,M)$ 为 $D$ 在 ${\rm End}(M)$ 中的中心化子，$E$ 在 $M$ 上的作用写在左边。即 $E$ 由所有满足
$$(fm)d = f(md),\quad f\in {\rm End}(M),\,m\in M,\,d\in D.$$
的自同态 $f$ 组成。显然 $E$ 是由 $A_L$ 在 ${\rm End}(M)$ 中连续取两次中心化子得到的，且 $A_L\subseteq E$。特别地，如果 $A_L=E$ 我们就称 $(A,M)$ 具有**双重中心化子性质**。

设 $M$ 是 $A$ 的一个极小左理想，从而 $M$ 也是不可约左 $A-$ 模。我们希望证明 $(A,M)$ 具有双重中心化子性质。这时 $D={\rm Hom}_A(M,M)$ 是除环，$M$ 作为右 $D-$ 模是除环 $D$ 上的右向量空间。若 $(A,M)$ 具有双重中心化子性质则 $A\cong A_L\cong {\rm Hom}_D(M,M)$，即 $A$ 同构于除环 $D$ 上的右向量空间 $M$ 上的所有 $D-$ 线性变换构成的环。特别地如果维数 $\dim_D  M=n<\infty$，则 $A\cong {\rm Mat}_n(D)$，这就证明了 Wedderburn-Artin 定理。

于是我们的思路就是先证明 $(A, M)$ 具有双重中心化子性质，再证明 $\dim_D M<\infty$。

注意到对左正则模 $_AA$ ，$(A, \,_AA)$ 是具有双重中心化子性质的。事实上很容易验证 $A$ 在自身上的左乘 $A_L$ 和右乘 $A_R$ 互为对方在 ${\rm End}(A)$ 中的中心化子，所以 $(A,\, _AA)$ 是具有双重中心化子性质的。

当 $A$ 是单环时，左正则模 $_AA$ 同构于 $A$ 的某个极小左理想 $L$ 的若干重直和：$_AA\cong\oplus_{i=1}^nL$，所以我们只要证明这样的结论就好了：

:::{.lemma #A-M}
设左 $A-$ 模 $V,M$ 满足 $V=\oplus_{i=1}^n M$。若 $(A, V)$ 具有双重中心化子性质，则 $(A, M)$ 也具有双重中心化子性质。
:::

注意这个引理中 $A$ 可以是任意的环，不仅限于单环；$M$ 也是任意的左 $A-$ 模，不仅限于不可约模。

**证明**：对任何 $f\in E={\rm Hom}_D(M, M)$，将其提升为 $V$ 的一个自同态
$$f^\ast: (m_1,m_2,\ldots, m_n)\to (f(m_1), f(m_2), \ldots, f(m_n)).$$
我们希望证明 $f^\ast \in {\rm Hom}_{D^\ast}(V, V)$，其中 $D^\ast={\rm Hom}_A(V, V)$，这样利用已知 $(A, V)$ 具有双重中心化子性质，可得 $f^\ast$ 来自某个 $a\in A$ 在 $V$ 上的左乘，即对任何 $(m_1,m_2,\ldots,m_n)$ 有
$$ f^\ast(m_1,m_2,\ldots, m_n) =  (am_1,am_2,\ldots,am_n).$$
只看第一个分量即得对任何 $m\in M$ 有 $f(m)=am$，这就证明了结论。

为此我们只要注意到 [^5] （一个简单的练习，细节见脚注）
$$D^\ast={\rm Hom}_A(\oplus_{i=1}^nM, \oplus_{i=1}^nM)\cong {\rm Mat}_n({\rm Hom}_A(M, M)) = {\rm Mat}_n(D).$$
换言之任何 $\varphi\in D^\ast$ 都形如 $\varphi=(d_{ij})_{1\leq i,j\leq n}$，其中 $d_{ij}\in D={\rm Hom}_A(M,M)$，所以验证 $f^\ast\in{\rm Hom}_{D^\ast}(V, V)$ 变成了验证一串矩阵等式：
$$\begin{align*}
(f^\ast(m_1,\ldots,m_n))\varphi&=(f(m_1),\ldots,f(m_n))\varphi\\&=(f(m_1),\ldots,f(m_n))\begin{pmatrix}d_{11}&\cdots& d_{1n}\\\vdots&\ddots&\vdots\\d_{n1}&\cdots&d_{nn}\end{pmatrix}\\&=\left(\sum_{i=1}^nf(m_i)d_{i1},\ldots,\sum_{i=1}^nf(m_i)d_{in}\right)\\&=\left(f(\sum_{i=1}^nm_id_{i1}),\ldots,f(\sum_{i=1}^nm_id_{in})\right)\\&=f^\ast\left(\sum_{i=1}^nm_id_{i1},\ldots,\sum_{i=1}^nm_id_{in}\right)\\&=f^\ast((m_1,\ldots,m_n)\varphi)
\end{align*}
$$

即 $f^\ast \in {\rm Hom}_{D^\ast}(V, V)$，@Pre:A-M 得证。$\blacksquare$

这样我们就证明了单环具有双重中心化子性质。我把结论明确写下来：

:::{.proposition #double-centralizer}
设 $A$ 是单环，$M$ 是不可约左 $A-$ 模。将除环 $D={\rm Hom}_A(M,M)$ 的作用写在 $M$ 右边，则 $A\cong {\rm Hom}_D(M,M)$。特别地 ${\rm Hom}_D(M,M)$ 也是单环。
:::

我们还需要证明 $\dim_D M<\infty$。由于我们在 @Pre:double-centralizer 中证明了 ${\rm Hom}_D(M,M)$ 是单环，所以 $\dim_D M<\infty$ 的结论立刻可以由下面的命题得出：

:::{.proposition #dim-D-finite}
设 $M$ 是除环 $D$ 上的右向量空间，则 $\dim_D M<\infty$ 当且仅当 ${\rm Hom}_D(M,M)$ 是单环。
:::

**证明**：$\Rightarrow$ 说的是除环上的矩阵环都是单环，这一点在前面已经讨论过了。只要再证明 $\Leftarrow$。用反证法，如果 $\dim_D M=\infty$，考虑 ${\rm Hom}_D(M,M)$ 的子集
$$I = \{ f\in {\rm Hom}_D(M,M) \mid \dim_D  {\rm im}(f) <\infty\}.$$
我们来验证 $I$ 是 ${\rm Hom}_D(M,M)$ 中非平凡的双边理想。

1. 由于 $\dim_D M=\infty$，所以恒等映射不包含在 $I$ 中，所以 $I\ne {\rm Hom}_D(M,M)$。
2. 由于 ${\rm im}(f_1+f_2)\subset {\rm im}(f_1)+{\rm im}(f_2)$，所以 $I$ 对加法是封闭的。
3. 设 $f\in I,\,g\in {\rm Hom}_D(M,M)$，则不难验证 ${\rm im}(fg)$ 和 ${\rm im}(gf)$ 都是有限维的。
4. $I\ne(0)$。为此只要取 $M$ 的一组 $D-$ 基 $\{e_\alpha\}$，并固定某个基元素 $e_\beta$，规定
    $$f\colon\ \sum e_\alpha d_\alpha\mapsto e_\beta d_\beta .$$
    即 $f$ 是到 $e_\beta$ 生成的一维子空间的投影。$f\in I$ 并且 $f(e_\beta)=e_\beta$ 不是零映射。

$\blacksquare$


最后我们来说明 $n$ 和 $D$ 是唯一确定的，即若 $n'$ 和 $D'$ 使得 $A\cong {\rm Mat}_n(D)\cong {\rm Mat}_{n'}(D')$，则 $n=n'$ 且 $D\cong D'$。从上面的证明中我们已经看到 $n$ 是 $A$ 分解为极小左理想 $M$ 直和的重数，从而是唯一确定的。而除环 $D={\rm Hom}_A(M,M)$ 是其唯一不可约模的 $A-$ 自同态环，所以也是唯一确定的。

[^4]: 除环上的向量空间与域上的向量空间的一个显著不同是：如果 $V$ 是一个左 $D-$ 向量空间且 $\dim _DV=n$，则其 $D-$ 自同态环 ${\rm End}_D(V)\cong {\rm Mat}_n(D^{\rm op})$，这里 $D^{\rm op}$ 是 $D$ 的反环。但是如果 $V$ 是右 $D-$ 向量空间，并且把 ${\rm End}_D(V)$ 在 $V$ 上的作用写在左边的话（即把 $V$ 看作是 $({\rm End}_D(V), D)-$ 双模），则 ${\rm End}_D(V)\cong {\rm Mat}_n(D)$。

[^5]:  记 $i_k$ 是从 $M$ 到 $\oplus_{i=1}^nM$ 的第 $k$ 个分量的嵌入映射：
$$i_k: m\to(0, 0,\ldots, m,\ldots, 0).$$
$\pi_l$ 是从 $\oplus_{i=1}^nM$ 的第 $l$ 个分量到 $M$ 的投影：
$$\pi_l: (m_1,\ldots,m_l,\ldots, m_n) \to m_l.$$
对任何 $\varphi\in {\rm Hom}_A(\oplus_{i=1}^nM,\oplus_{i=1}^nM)$，$(m_1,\ldots,m_n)\varphi$ 的第 $j$ 个分量当然就是 $(m_1,\ldots,m_n)\varphi\circ\pi_j$。进一步把左边的 $(m_1,\ldots,m_n)$ 拆成求和有
$$(m_1,\ldots,m_n)\varphi\circ\pi_j=\left(\sum_{i=1}^nm_i\circ i_i\right)\varphi\circ\pi_j=\sum_{i=1}^n m_i(i_i\circ\varphi\circ\pi_j)=\sum_{i=1}^nm_i\varphi_{ij}.$$
其中 $\varphi_{ij}=i_i\circ\varphi\circ\pi_j\in{\rm Hom}_A(M,M)$，注意 $\varphi_{ij}$ 是写在 $m$ 右边的，$i_i$ 先作用，其次是 $\varphi$，最后是 $\pi_j$。
这告诉我们 $(m_1,\ldots,m_n)\varphi$ 的第 $j$ 个分量等于 $\sum_{i=1}^nm_i\varphi_{ij}$，即下面的矩阵乘法等式成立：
$$(m_1,\ldots,m_n)\varphi=(m_1,\ldots,m_n)\begin{pmatrix}\varphi_{11}&\cdots&\varphi_{1n}\\\vdots&\ddots&\vdots\\\varphi_{n1}&\cdots&\varphi_{nn}\end{pmatrix}.$$
不难验证 $\varphi\to(\varphi_{ij})$ 是一个从 ${\rm Hom}_A(\oplus_{i=1}^nM,\oplus_{i=1}^nM)$ 到 ${\rm Mat}_n(D)$ 的同构。
