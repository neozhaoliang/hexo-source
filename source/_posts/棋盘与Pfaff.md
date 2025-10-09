---
title: 国际象棋棋盘的多米诺骨牌密铺
date: 2009-05-08
categories: [计数组合学]
url: "Pfaffian-and-chessboard-tiling"
---
\newcommand{\pf}{\mathrm{pf}}
\newcommand{\dg}{\overrightarrow{G}}

下面的问题与统计物理中的 Dimer 格点模型有关：

:::{.question .unnumbered}
用 $1\times2$ 的多米诺骨牌密铺一张 $8\times8$ 的国际象棋棋盘，有多少种不同的方法？
:::

下图是其中一种：

![](/images/pfaff/chessboard.svg){.fig}

答案是 12988816，非常大的一个数字，显然不可能是逐个枚举数出来的。1961 年德国物理学家 Kasteleyn 借助线性代数的工具首先解决了这个问题，本文就来介绍他的方法。

<!-- more -->

# 反对称矩阵的 Pfaffian

我们从一个线性代数的结论说起，先来看一个 4 阶反对称矩阵的行列式：

$$\det\begin{pmatrix}0&a_{12}&a_{13}&a_{14}\\-a_{12}&0&a_{23}&a_{24}\\-a_{13}&-a_{23}&0&a_{34}\\-a_{14}&-a_{24}&-a_{34}&0\end{pmatrix}=(a_{12}a_{34}-a_{13}a_{24}+a_{14}a_{23})^2.$$
你发现了什么？这个反对称矩阵的行列式是一个多项式的平方，而且观察右边每个单项式的下标你发现，它们分别是 $\{(12),(34)\}$，$\{(14),(23)\}$，$\{(13),(24)\}$，恰好跑遍集合 $\{1,2,3,4\}$ 的所有匹配！

这个结论不是偶然的，实际上对任何 $2n$ 阶反对称矩阵 $A$，$A$ 的行列式都可以表示为一个多项式的平方，这个多项式叫做 Pfaffian 多项式，记作 $\pf(A)$。$\pf(A)$ 中的单项式与集合 $[2n]=\{1,2,\ldots,2n\}$ 的匹配一一对应。

那么奇数阶反对称矩阵呢？它们的行列式都是 0，所以不考虑它们。

我们来给出 $\pf(A)$ 的定义：考虑一种把 $[2n]$ 两两配对（从而分成 $n$ 对）的方式：
$$\pi = (i_1,j_1)(i_2,j_2)\cdots(i_n,j_n).$$
$\pi$ 叫做集合 $[2n]$ 的一个匹配，它可以用一个置换来表示，仍然记作 $\pi$：
$$\pi=\begin{pmatrix}1&2&3&4&\cdots&2n-1&2n\\i_1&j_1&i_2&j_2&\cdots&i_n&j_n\end{pmatrix}.$$
定义 $\pi$ 的权为
$$\mathrm{wt}(\pi)=\text{sgn}(\pi)\cdot a_\pi.$$
其中 $\text{sgn}(\pi)$ 就是置换 $\pi$ 的符号，偶置换时为 $+1$，奇置换时为 $-1$，
$$a_\pi=a_{i_1j_1}a_{i_2j_2}\cdots a_{i_nj_n}.$$
于是 $\mathrm{wt}(\pi)$ 是一个次数为 $n$ 的单项式。

但是，$\mathrm{wt}(\pi)$ 的定义是合理无歧义的吗？注意一个匹配 $\pi$ 可以有多种不同的置换表示：你可以按任意的顺序排列这些 $(i_k,j_k)$ 对，或是交换某一对中 $i_k$ 和 $j_k$ 的位置。不难验证，这些改变不会影响乘积 $\mathrm{wt}(\pi)$。比如把某个 $(i_k,j_k)$ 改写成 $(j_k,i_k)$，那么 $\text{sgn}(\pi)$ 和 $a_\pi$ 都同时变号，乘积不变。总之 $\mathrm{wt}(\pi)$ 的定义只与匹配 $\pi$ 有关，并不依赖于具体置换的选择。

:::{.definition .unnumbered}
设 $\mathcal{M}_{2n}$ 为 $[2n]$ 的所有匹配组成的集合，矩阵 $A$ 的 Pfaffian 多项式 $\text{pf}(A)$ 定义为
$$\text{pf}(A) =\sum_{\pi\in\mathcal{M}_{2n}} \mathrm{wt}(\pi).$$
:::

现在我们可以叙述本节的主要结论了：

:::{.theorem #pfaff}
设 $A$ 是 $2n$ 阶反对称矩阵，则 $\det A=[\text{pf}(A)]^2$。
:::

**证明**：根据行列式的定义，
$$\det A=\sum_{\sigma\in S_{2n}}\text{sgn}(\sigma)a_{\sigma}=\sum_{\sigma\in S_{2n}}\text{sgn}(\sigma) a_{1\sigma(1)}a_{2\sigma(2)}\cdots .$$

回忆任何置换 $\sigma$ 都可以表示为若干不相交的轮换的乘积：
$$\sigma = (i_1i_2\cdots i_k)(j_1j_2\cdots j_l)\cdots.$$
设 $\mathcal{E}_{2n}$ 为所有轮换的长度 $k,l,\cdots$ 都是偶数的那些置换组成的集合，我们要证明在上述行列式的求和中，$\sigma$ 只跑遍 $\mathcal{E}_{2n}$，不属于 $\mathcal{E}_{2n}$ 的那些置换整体对行列式的贡献为 0。

分两种情况：

1. 如果 $\sigma$ 包含一个不动点：$\sigma(i)=i$，则由于 $a_{i\sigma(i)}=0$ 从而 $\sigma$ 对行列式的贡献为 0。
2. 如果 $\sigma$ 没有不动点，但是包含长度为奇数的轮换，选择其中含有最小元素的那个，设为 $C=(i_1i_2\cdots i_k)$，这里 $k$ 为奇数且大于等于 3。定义置换 $\sigma'$ 如下：$\sigma'$ 的其它轮换与 $\sigma$ 完全相同，只是把 $C$ 整个倒过来变成 $(i_k\cdots i_2i_1)$。显然 $\sigma'$ 对应的和项与 $\sigma$ 抵消，而且如果对 $\sigma'$ 执行此操作又会回到 $\sigma$。于是所有没有不动点，而且包含长度是奇数的轮换的置换可以两两配对抵消。

:::{.example}
$\sigma=(1\,3)(2\,4\,6)(5\,7\,8)(9\,10)$ 有 2 个长度为奇数的轮换 $(246)$ 和 $(578)$，最小的元素 $2$ 出现在 $(2\,4\,6)$ 中，所以 $\sigma'=(1\,3)(6\,4\,2)(5\,7\,8)(9\,10)$。
:::

这就证明了在行列式的求和中，$\sigma$ 只跑遍那些轮换分解长度都是偶数的置换。

于是为了证明 $\det A=[{\rm pf}(A)]^2$，只要证明
$$\sum_{\pi\in\mathcal{M}_{2n}}\sum_{\pi'\in\mathcal{M}_{2n}}{\rm wt}(\pi){\rm wt}(\pi')=\sum_{\sigma\in\mathcal{E}_{2n}}{\rm sgn}(\sigma) a_\sigma.$$

为此我们来证明存在双射
$$\mathcal{M}_{2n}\times \mathcal{M}_{2n}\rightarrow \mathcal{E}_{2n}:\quad (\pi,\pi')\rightarrow \sigma.$$
而且这个双射还保持权的相等，即
$$\mathrm{wt}(\pi)\cdot \mathrm{wt}(\pi')=\text{sgn}(\sigma)a_{\sigma}.$$
这样就证明了定理。

对任何两个匹配 $(\pi,\pi')\in\mathcal{M}_{2n}\times\mathcal{M}_{2n}$，我们把它俩画在同一张图上，图的顶点集合就是 $[2n]$，$\pi$ 的边染成红色，$\pi'$ 的边染成蓝色。这样得到一个 2- 正则图，每个顶点恰有一条红色和一条蓝边与之相邻。这个图一定可以表示为若干条不相交的回路的并 [^1]，在每个回路中，红蓝边交错出现，因此每个回路的长度都是偶数。

设 $C$ 是这样的一条回路，$i_1$ 是 $C$ 中最小的元素，从 $i_1$ 出发，沿着红色的边，即 $\pi$ 的方向绕 $C$ 一圈：
$$i_1\,{\color{red}{\xrightarrow{\pi}}}\,i_2\,{\color{blue}{\xrightarrow{\pi'}}}\,i_3\,{\color{red}{\xrightarrow{\pi}}}\,\cdots\,{\color{blue}{\xrightarrow{\pi'}}}\,i_1.$$
这样得到了一个轮换 $(i_1i_2\cdots i_k)$。对每个回路都这样做，我们就得到了一组轮换，与 $(\pi,\pi')$ 对应的置换 $\sigma$ 就定义为所有这些轮换的乘积。由于这些回路互不相交，这些轮换两两交换，所以我们不必关心它们相乘的顺序，任何顺序都给出同样的 $\sigma$。

逆映射也很显然，对任何 $\sigma\in\mathcal{E}_{2n}$，在 $\sigma$ 的每个轮换 $C$ 中，找到最小的 $i_1\in C$，设 $C=(i_1i_2\cdots i_k)$，那么依次规定
$$i_1\,{\color{red}{\xrightarrow{\pi}}}\,i_2\,{\color{blue}{\xrightarrow{\pi'}}}\,i_3\,{\color{red}{\xrightarrow{\pi}}}\,\cdots\,{\color{blue}{\xrightarrow{\pi'}}}\,i_1.$$
即可。

:::{.example}
下面是将 $2n=12$，$\sigma=(1\,3\,4\,5\,7\,10)(2\,6\,9\,8)(11\,12)$ 对应到两个匹配 $\pi,\pi'$ 的示意图：

![](/images/pfaff/matching.svg){.fig width=500}
:::

最后我们来验证这个对应保持权的相等：设 $\sigma$ 的轮换分解式为
$$\sigma=(i_1i_2\cdots i_{2k-1}i_{2k})(j_1j_2\cdots j_{2l-1}j_{2l})\cdots.$$
其中 $i_1,j_1,\ldots$ 是每个轮换中最小的元素。于是
$$\pi=\begin{pmatrix}1&2&\cdots&2k-1&2k&2k+1&2k+2&\cdots\\i_1&i_2&\cdots&i_{2k-1}&i_{2k}&j_1&j_2&\cdots\end{pmatrix}.$$
$$\pi'=\begin{pmatrix}1&2&\cdots&2k-1&2k&2k+1&2k+2&\cdots\\i_2&i_3&\cdots&i_{2k}&i_1&j_2&j_3&\cdots\end{pmatrix}.$$

容易验证 $a_\pi a_{\pi'}=a_\sigma$ 以及 $\pi'=\sigma\cdot\pi$，从而 @Pre:pfaff 得证。

# 平面图的 Pfaffian 定向

Pfaffian 多项式的结论启发我们可以用它来计算一个图 $G$ 的所有匹配的个数。

设 $G$ 有 $2n$ 个顶点。首先给 $G$ 的边任意定向，得到一个简单有向图 $\dg$。写出 $\dg$ 的邻接矩阵 $A=(a_{ij})$：

$$a_{ij}=\begin{cases}1& i\rightarrow j,\\-1& j\rightarrow i,\\ 0&\text{else}.\end{cases}$$

则 $A$ 是一个反对称矩阵且

$$\det A=\left(\sum_{\pi\in\mathcal{M}_{2n}}\mathrm{wt}(\pi)\right)^2=\left(\sum_{\pi\in\mathcal{M}_{2n}}\text{sgn}(\pi)a_{i_1j_1}a_{i_2j_2}\cdots a_{i_nj_n}\right)^2.$$

这里 $\pi=(i_1,j_1)(i_2,j_2)\cdots(i_n,j_n)$ 跑遍集合 $[2n]$ 的所有匹配。由于每个 $a_{ij}$ 的取值是 $\pm1$ 或者 $0$，所以 $\mathrm{wt}(\pi)$ 的值也是 $\pm1$ 或者 $0$，并且 $\mathrm{wt}(\pi)\ne0$ 当且仅当对每个 $1\leq k\leq n$，$i_k$ 和 $j_k$ 在 $G$ 中是相邻的，即 $\pi$ 给出 $G$ 的一个匹配。于是 $G$ 的所有匹配与 $\pf(A)$ 中的非零项一一对应。不幸的是，这些非零项有 +1 有 -1，把它们直接加起来得到的可不是 $G$ 的所有匹配的个数。但是我们可以这样想： 能否通过适当的定向 $G$，即适当给 $a_{ij}$ 赋以 +1 或者 -1，使得每一个非零的 $\mathrm{wt}(\pi)$ 都同为 +1 或者同为 -1？如果可以，那么$\sqrt{|\det A|}$ 就是要求的匹配的个数。

回忆在证明 @Pre:pfaff 时，我们有结论
$$\mathrm{wt}(\pi)\cdot \mathrm{wt}(\pi')=\text{sgn}(\sigma)a_{\sigma}.$$
要使得所有非零的 $\mathrm{wt}(\pi)$ 都同为 +1 或者同为 -1，只要让每个非零的 $\text{sgn}(\sigma)a_{\sigma}$ 都等于 1 即可。设 $\sigma$ 是一个使得 $a_\sigma\ne0$ 的置换且 $\sigma$ 的轮换分解为 $\sigma=C_1\cdots C_l$，这里每个 $C_i$ 的长度都是偶数，则
$$\text{sgn}(\sigma)=(-1)^l,\quad a_\sigma=a_{C_1}\cdots a_{C_l}.$$
这里规定 $C_i=(i_1i_2\cdots i_k)$ 时 $a_{C_i}=a_{i_1i_2}\cdots a_{i_ki_1}$。如果我们能够使得每个 $a_{C_i}=-1$，那么就有
$$\text{sgn}(\sigma)\cdot a_\sigma = (-1)^l\cdot (-1)^l=1.$$
而 $a_{C_i}$ 等于 -1 意味着，当在 $\dg$ 中沿着回路
$$i_1\rightarrow i_2\rightarrow \cdots \rightarrow i_k\rightarrow i_1$$
绕 $C_i$ 一圈时，有奇数条边在与 $\dg$ 的定向一致（由于轮换长度 $k$ 是偶数，这也等价于有奇数条边与 $\dg$ 的定向相反）。

:::{.definition .unnumbered}
设 $G$ 是有限图。如果 $G$ 的一个回路 $C$ 的长度是偶数，且删除 $C$ 后剩下的部分仍然存在匹配，就称 $C$ 是一个好的回路。如果 $G$ 的一个定向 $\dg$ 使得 $G$ 的所有好的回路都是奇定向的，即沿着回路的任一方向行走都有奇数条边的定向与行走方向一致，就称 $\dg$ 是一个 Pfaffian 定向。
:::

对一般的图，找到其 Pfaffian 定向是困难的事，但是对平面图却很简单。这就是下面的定理：

:::{.theorem #Kasteleyn}

(Kasteleyn)

设 $G$ 是一个简单平面图，则可以给 $G$ 的边适当定向，使得当逆时针沿着 $G$ 的每个面行走时（外部的无穷区域不算），都有奇数条边与行走方向一致，这种定向就是 $G$ 的 Pfaffian 定向。
:::

**证明**：我们首先说明存在这样的定向，使得 $G$ 的每个面都是奇定向的。对面的个数归纳：$f=0$，则 $G$ 是一个树，任何定向都是 Pfaffian 定向。设结论对有 $f-1$ 个面的简单有向图成立，对有 $f>1$ 个面的图 $G$，找到一条内部面与外部区域相邻的边 $e$，删去 $e$ 得到的是一个有 $f-1$ 个面的有向图，由归纳假设，可以让每个面都是奇定向，然后把 $e$ 补回去，并适当在 $e$ 的两种可能的定向中选择一个使得最后这个面也是奇定向的即可。

其次我们要说明这样的定向是 Pfaffian 定向，即对 $G$ 中任意好的回路 $C$，当绕着 $C$ 的内部逆时针行走一圈时，有奇数条边的定向与行走方向一致。

设 $C$ 长度为 $l$，$C$ 内部有 $p$ 个顶点，$q$ 条边，$r$ 个面，$C$ 上逆时针定向的边的个数为 $c$，内部的第 $i$ 个面 ($1\leq i\leq r$) 上逆时针定向的边的个数为 $c_i$。

绕着所有面都逆时针走一圈，遇到的与行走方向定向相同的边的个数是 $\sum\limits_{i=1}^rc_i=c+q$，这是因为 $C$ 内部的 $q$ 条边都被走了两次，一次逆时针，一次顺时针，因此都被计算了一次；而 $C$ 上的边只有逆时针定向的那些边（一共有 $c$ 条）被计算了一次。

由于每个 $c_i$ 都是奇数，因此
$$r\equiv c+q\ (\text{mod}\ 2).$$

另一方面对 $C$ 包含的区域用 Euler 定理，得到
$$(p+l)-(q+l)+r=1.$$
从而 $p$ 与 $c$ 奇偶性相反，但是 $p$ 是偶数，这是因为删去 $C$ 以后仍然存在匹配说明 $C$ 的内部和外部各有偶数个顶点，因此 $c$ 是奇数，这就证明了定理。


# 棋盘的多米诺骨牌密铺的计数

回到文章开始的问题。

设棋盘的大小为 $m\times n$，$m$ 是行数。这里 $m,n$ 必须至少有一个是偶数，我们这里假定列数 $n$ 是偶数。

把棋盘的每个方格看作图 $G$ 的顶点，两个方格对应的顶点 $u,v$ 在 $G$ 中相邻当且仅当它们有公共的边，这样就得到一个有 $mn$ 个顶点的平面图。棋盘的多米诺密铺与 $G$ 的完美匹配是一一对应的：密铺中的每个骨牌恰好盖住两个相邻的方格，这两个方格匹配在了一起。

为了求出 $G$ 的完美匹配个数，只要标记出 $G$ 的一个 Pfaffian 定向，写出对应的邻接矩阵，然后求出行列式，再开平方即可。

Pfaffian 定向是很容易找的，如下图所示：

![$m\times n$ 网格图的 Pfaffian 定向](/images/pfaff/pfaff.svg){width=300}

下一步是写出这个定向图的邻接矩阵。我们按照从第一行开始，每一行从左到右的顺序给顶点排序。设
$$B_n=\begin{pmatrix}0&1&0&&\\-1&0&1&&\\&-1&0&1&\\&&&\ddots&1\\&&&-1&0\end{pmatrix}_{n\times n}.$$
则邻接矩阵为
$$L(m,n)=\begin{pmatrix}B_n&I_n&&&\\-I_n&-B_n&I_n&&\\&-I_n&B_n&&\\&&&\ddots&I_n\\&&&-I_n&(-1)^{m-1}B_n\end{pmatrix}_{m\times m}.$$

我把求邻接矩阵的详细过程放在后面的附录中。下面先来求 $L(m,n)$ 的行列式。

适当给 $L(m,n)$ 的行列变号，可以得到
$$
\det L(m,n)=\det(B_n\otimes I_m-I_n\otimes C_m).$$
其中
$$C_m=\begin{pmatrix}0&1&0&&\\1&0&1&&\\&1&0&1&\\&&&\ddots&1\\&&&1&0\end{pmatrix}_{m\times m}.$$
这个变号步骤并不显然，我们需要选择 $L(m,n)$ 的一些行列变号，使得对角线上的每个 $-B_n$ 所在的行列恰好有一次变号，每个 $B_n$ 所在的行列要变号两次，要么不变。具体规则是这样的：由于 $-B_n$ 出现在 $L(m,n)$ 对角线上的 $2,4,6,\ldots,$ 位置上，我们选择：

1. 将所有形如 $4k+2$ 的**列**变号；
2. 将所有形如 $4k$ 的**行**变号；
3. 将所有形如 $4k+3$ 的**行和列**同时变号；

这样显然可以把对角线上都变成 $B_n$。对每个位于次对角线上 $(i-1, i)$ 位置的 $I_n$，

+ 如果 $i=4k+2$，则 $(i-1,i)=(4k+1, 4k+2)$，根据 1 它改变了一次符号；
+ 如果 $i=4k$，则 $(i-1,i)=(4k-1, 4k)$，根据 2, 3 它改变了三次符号；
+ 如果 $i=4k+1$，则 $(i-1,i)=(4k, 4k+1)$，根据 2 它改变了一次符号；
+ 如果 $i=4k+3$，则 $(i-1,i)=(4k+2, 4k+3)$，根据 1, 3 它改变了三次符号。

总之 $I_n$ 都会变成 $-I_n$。类似地所有 $-I_n$ 均保持不变。

剩下的就是线性代数中求特征值的部分，需要一些关于矩阵张量积的知识，这里就不展开写了，大致逻辑是这样的：设 $B_n$ 的特征值为 $\lambda_1,\ldots,\lambda_n$，$C_m$ 的特征值为 $\mu_1,\ldots,\mu_m$，则 $B_n\otimes I_m- I_n\otimes C_m$ 的 $mn$ 个特征值为 $\{\lambda_i-\mu_j, 1\leq i\leq n, 1\leq j\leq m\}$，所以
$$\det(B_n\otimes I_m- I_n\otimes C_m) = \prod_{i=1}^n\prod_{j=1}^m(\lambda_i-\mu_j).$$
$B_n$ 和 $C_m$ 的特征值的计算应该是线性代数课程中行列式部分的常见的习题，我把具体的计算步骤放在附录中，最终结果是
$$\sqrt{|\det L(m,n)|} =\prod_{k=1}^m\prod_{l=1}^n(4\cos^2\frac{k\pi}{m+1}+4\cos^2\frac{l\pi}{n+1})^{\frac{1}{4}}.$$
此即为要求的完美匹配的个数。

# 未尽的讨论

我们已经得到了一个关于 $m\times n$ 棋盘的多米诺骨牌密铺的漂亮的表达式，事情可以结束了吗？其实还没有，这个表达式虽然很漂亮，但是我们没法用它来具体计算匹配个数的值（一堆三角函数的乘积怎么算？）。那应该怎么办呢？我把后面的故事留给 [@aigner07 section 10.1]。

# 附录

## 求邻接矩阵 $L(m,n)$ 的具体步骤

将 $L(m,n)$ 简写为 $L=L(m,n)$。把网格图 $G$ 的顶点标记如下：

$$\begin{matrix}(1,1)&(1,2)&\cdots&(1, n)\\(2,1)&(2,2)&\cdots&(2,n)\\\vdots&\vdots&\ddots&\vdots\\(m, 1)&(m,2)&\cdots&(m, n)\end{matrix}$$

对这些顶点排序，首先是第一行从左到右，然后是第二行从左到右，等等：
$$(1,1)<(1,2)<\cdots<(1,n)<(2,1)<\cdots<(2,n)<\cdots<(m,1)<\cdots<(m,n).$$

$L$ 是 $mn\times mn$ 阶矩阵，它的行和列分别由 $(i,j)_{\begin{smallmatrix}1\leq i\leq m\\1\leq j\leq n\end{smallmatrix}}$ 和 $(i',j')_{\begin{smallmatrix}1\leq i'\leq m\\1\leq j'\leq n\end{smallmatrix}}$ 标记。$L$ 可以划分成 $m\times m$ 个子块，每个子块是 $n\times n$ 阶的，其中位于 $(i,i')$ 处的子块对应的矩阵是 $(L_{(i,j)(i',j')})_{1\leq j,j'\leq n}$：
$$\begin{array}{c|c|c}&(i',1), \cdots, (i',j'),\cdots, (i',n)&\\ &\hline&\qquad\\(i, 1)&&\\\vdots&&\\(i,j)&\ast&\\\vdots&&\\(i,n)&&\\ &\hline&\qquad\\ &&\end{array}$$

注意到 $(i,j)$ 和 $(i',j')$ 之间有边相连当且仅当：

1. $i=i'$ 且 $j'=j\pm1$；
2. $i'=i\pm1$ 且 $j=j'$。

这说明 $L$ 在除去对角线以及两侧的次对角线以外的位置都是 0。

在情形 1 中，由于水平的边（红色和绿色）是交替改变方向的，所以
$$L_{(i,j)(i,j+1)} = (-1)^{i-1} \text{ for } 1\leq i\leq m \text{ and } 1\leq j\leq n-1.$$
这说明 $L$ 对角线上的第 $i$ 个子块是 $(-1)^{i-1}B_n$，其中
$$B_n=\begin{pmatrix}0&1&0&&\\-1&0&1&&\\&-1&0&1&\\&&&\ddots&1\\&&&-1&0\end{pmatrix}_{n\times n}.$$
即 $L$ 形如
$$\begin{pmatrix}
B_n &\ast&&&\\
\ast& -B_n &\ast&&\\
&\ast&\ddots&\ddots&\\
&&\ddots&\ddots& \ast\\
&&&\ast&(-1)^{m-1}B_n
\end{pmatrix}.$$
在情形 2 中，由于竖直的边（蓝色）是恒定向下的，所以
$$L_{(i,j),(i+1,j)}  = 1  \text{ for } 1\leq i\leq m-1 \text{ and } 1\leq j\leq n.$$
这说明 $L$ 右上方次对角线上的 $(i,i+1)$ 位置的子块都是 $I_n$。再结合 $L$ 是反对称的，下方次对角线上都是 $-I_n$，所以 $L$ 形如
$$\begin{pmatrix}
B_n &I_n&&&\\
-I_n& -B_n &I_n&&\\
&-I_n&\ddots&\ddots&\\
&&\ddots&\ddots& I_n\\
&&&-I_n&(-1)^{m-1}B_n
\end{pmatrix}.$$

此即为 $G$ 的邻接矩阵。

## 求 $B_n$ 和 $C_m$ 的特征值

我们以
$$C_m=\begin{pmatrix}0&1&0&&\\1&0&1&&\\&1&0&1&\\&&&\ddots&1\\&&&1&0\end{pmatrix}.$$
为例来说明怎样求它的特征值，$B_n$ 的求解是类似的。

我们需要求出其特征多项式

$$f_m(\lambda) = \det\begin{pmatrix}\lambda&-1&0&&\\-1&\lambda&-1&&\\&-1&\lambda&-1&\\&&&\ddots&-1\\&&&-1&\lambda\end{pmatrix}.$$

按第一行展开可得递推关系

$$f_m = \lambda f_{m-1} - f_{m-2},$$

结合初始条件 $f_0=1, f_1=\lambda$ （初始条件可以从 $m=2$ 的情形展开确定） 可得

$$f_m(\lambda) = \frac{1}{\sqrt{\lambda^2-4}}\left[\left(\frac{\lambda+\sqrt{\lambda^2-4}}{2}\right)^{m+1}-\left(\frac{\lambda-\sqrt{\lambda^2-4}}{2}\right)^{m+1}\right].$$

由此不难确定 $C_m$ 的 $m$ 个特征值为 $2\cos\dfrac{k\pi}{m+1},k=1,\ldots,m.$


[^1]: 提示：从任一顶点 $x$ 出发沿着红边到达顶点 $y$，再从 $y$ 出发沿着蓝边到达顶点 $z$，再从 $z$ 出发沿着红边到达顶点 $w$，这样一直继续下去肯定会回到某个访问过的点，从而形成一个回路。拿掉这个回路以后剩下的图每个顶点的度数仍然是偶数，所以可以继续重复这个过程。