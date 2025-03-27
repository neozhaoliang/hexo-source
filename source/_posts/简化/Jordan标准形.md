---
title: Jordan 标准形
date: "2009-07-12"
categories: [线性代数]
url: "jordan-canonical-form"
---

\DeclareMathOperator{\rk}{rk}
\renewcommand{\ker}{\mathrm{Ker}}
\newcommand{\im}{\mathrm{Im}}

Jordan 标准形定理是线性代数中的基本定理，专门为它写一篇长文好像有点多余：这方面的教材讲义实在是太多了！一个陈旧的定理还能写出什么新意来呢？

理由有两个。第一个原因是我曾经在做助教给学生讲这个定理的时候，突然发现不知道该怎么启发他们为好。虽然我知道 Jordan 标准形定理的很多种证法，照念几个不在话下，但是感觉有点疙疙瘩瘩的：怎么才能说清定理背后的想法，让学生觉得定理的成立是顺理成章的呢？于是我知道我对这个定理的理解还有模糊的地方。

第二个原因是 Jordan 块有一个重要的代数性质是通常教材中不讲的，而这个性质是代数学中一类重要而常见的性质的雏形，这就是不可分解性。与之对应的是可对角化的线性变换的完全可约性。从一开始就让学生接触这些现象是有好处的。

<!-- more -->

# 什么是 Jordan 标准形

我们从中学就知道整数环和多项式环有唯一因子分解定理：每个整数可以唯一地分解为素数的乘积，每个域上的多项式可以唯一地分解为不可约多项式的乘积。数学里面有很多这样的唯一分解定理，现在我们想知道：有没有所谓的“线性变换的唯一分解定理” 呢？可以猜测如果有这样的定理存在，那么大概可以表述为如下的样子：

:::{.simple #unique-1}
**线性变换的唯一分解定理** （粗糙的版本）：设 $V$ 是域 $F$ 上的有限维向量空间，$T$ 是 $V$ 上的线性变换，则 $T$ 可以唯一地分解为若干个「简单的」线性变换，而这些「简单的」线性变换本身不能再分解。
:::

这个表述很不清楚，什么是线性变换的分解呢？什么又是不可分解的线性变换呢？要说清楚这些，我们需要借助直和的概念：

:::{.simple}
设 $T$ 是向量空间 $V$ 上的线性变换，如果 $V$ 可以分解为一些非平凡的子空间的直和 $V=V_1\oplus\cdots\oplus V_k$，使得每一个 $V_i$ 都是 $T$- 不变的子空间，则称 $T$ 是可以分解的； 如果 $V$ 不存在这样的分解，则称 $T$ 是不可分解的线性变换。
:::

这样我们就可以比较准确的表述线性变换的唯一分解定理了：

:::{.simple #unique-2}
**线性变换的唯一分解定理** （修正的版本）：设 $V$ 是域 $F$ 上的有限维向量空间，$T$ 是 $V$ 上的线性变换，则 $V$ 可以分解为若干个 $T$- 不变子空间的直和 $V=V_1\oplus\cdots\oplus V_k$，$T$ 限制在每个 $V_i$ 上是不可分解的线性变换。这个分解还是唯一的，即如果 $V=W_1\oplus\cdots\oplus W_l$ 是另一种分解，则 $k=l$ 且适当重排以后，对每个 $i$，$T$ 在 $V_i$ 上的限制与 $T$ 在 $W_i$ 上的限制是相似的。
:::

这里有一个重要的问题需要说明：在一般的域上研究不可分解的线性变换是一个棘手的多的问题，这个问题的解决要用到 Frobenius 有理标准形，而在复数域上问题就简单很多，这就是 Jordan 标准形做的事情。在本文中我们都在复数域上讨论。

那么什么样的线性变换算是不可分解的线性变换呢？

最简单也是最重要的例子就是移位算子：假设 $T$ 在 $V$ 的一组基 $\{v_1,\cdots,v_n\}$ 的作用是一个向右的移位：
$$T:\quad v_n\rightarrow v_{n-1}\rightarrow\cdots\rightarrow v_1\rightarrow0.$$
则称 $T$ 是一个移位算子。$T$ 在这组基下的矩阵为 $J_0$:
$$(v_1, v_2, \ldots, v_n)J_0 = (0, v_1, \ldots, v_{n-1}),\quad J_0=\begin{pmatrix}0&1&&\\ &\ddots &\ddots &\\ &&0&1\\ &&&0\end{pmatrix}.$$

$J_0$ 叫做特征值为 0 的 Jordan 块。注意 $T$ 是一个幂零算子：$T^n=0$，它仅有唯一的特征值 0。

为什么 $T$ 是不可分解的？假设 $V=U\oplus W$ 是两个非平凡 $T$- 不变子空间的直和，则 $T$ 作为 $U$ 和 $W$ 上的幂零线性变换必然各有一个特征值为 0 的特征向量，因此齐次线性方程组 $TX=0$ 的解空间至少包含两个线性无关的向量。但是 $T$ 的秩是 $n-1$，所以 $TX=0$ 的解空间是 1 维的，这就导致了矛盾。

用同样的方法可以说明给移位算子 $T$ 加上一个数乘变换以后得到的仍然是不可分解的线性变换：设 $\lambda\in\mathbb{C}$，$S=T+\lambda I$，则 $S$ 也是不可分解线性变换，其对应的矩阵
$$J_\lambda=\begin{pmatrix}\lambda&1&&\\&\ddots&\ddots&\\&&\lambda&1\\&&&\lambda\end{pmatrix}$$
叫做特征值为 $\lambda$ 的 Jordan 块。

现在我们已经找到了一族不可分解的线性变换，那么它们是否就构成了全部的线性变换呢？答案是肯定的，这就是 Jordan 标准形定理：

:::{.theorem .unnumbered #jordan-canonical}
**Jordan 标准形定理** 设 $T$ 是 $\mathbb{C}$ 上有限维向量空间 $V$ 上的线性变换，则存在 $V$ 的一组基使得 $T$ 在这组基下的矩阵为 Jordan 块的直和：
$$T=J_{\lambda_1}\oplus\cdots\oplus J_{\lambda_r}.$$
这种分解是唯一的，意思是如果存在 $V$ 的另一组基使得 $T$ 的矩阵也是 Jordan 块的直和
$$T=J_{\mu_1}\oplus\cdots\oplus J_{\mu_s},$$
则 $r=s$ 且适当重排后有 $J_{\lambda_i}=J_{\mu_i}$。
:::

# Jordan 标准形定理的证明

定理的结论包含存在性和唯一性两部分，我们先来处理存在性的证明。

## 分解存在性 1：转化为幂零的情形

首先我们需要另一个重要的定理：准素分解定理。准素分解定理是一个初步的分解，它把 $V$ 分解为若干 $T$- 不变子空间 $V_i$ 的直和，使得 $T$ 在每个 $V_i$ 上只有单一的特征值 $\lambda_i$。于是 $N=T-\lambda_i I$ 是 $V_i$ 上的幂零线性变换。这样就把目标简化为论证任何幂零线性变换总是可以分解为一些零特征值的 Jordan 块的直和。

:::{.theorem .unnumbered #primary-decomposition}
**准素分解定理** 设 $T$ 的特征多项式为 $f(x)$，且 $f(x)$ 在复数域上分解为一次因式的乘积
$$f(x)=(x-\lambda_1)^{n_1}\cdots(x-\lambda_k)^{n_k},$$
这里的 $\lambda_i$ 互不相同。令 $V_i=\ker (T-\lambda_i I)^{n_i}$，
则每个 $V_i$ 都是 $T$- 不变子空间而且
$$V=V_1\oplus\cdots\oplus V_m.$$
:::

**证明**：我们从一个简单的引理出发：

:::{.lemma .unnumbered #coprime}
设 $T$ 是域 $F$ 上有限维向量空间 $V$ 上的线性变换，$p(x),q(x)\in F[x]$ 是两个互素的多项式，且有 $p(T)\cdot q(T)=0$。则 $V=\ker p(T)\oplus \ker q(T)$。
:::

引理的证明：由于 $p(x),q(x)$ 是互素的多项式，所以存在多项式 $s(x),t(x)$ 满足
$$s(x)p(x)+t(x)q(x)=1.$$
即
$$s(T)p(T)+t(T)q(T)=I.$$
于是对任何 $v\in V$ 有
$$v = \underbrace{s(T)p(T)v}_{\in\ker q(T)} + \underbrace{t(T)q(T)v}_{\in\ker p(T)}.$$
这说明 $V = \ker p(T) + \ker q(T)$。要验证这是直和，不妨设 $v\in\ker p(T)\cap\ker q(T)$，则 $p(T)v=q(T)v=0$，于是
$$v =s(T)p(T)v+t(T)q(T)v = 0.$$

把引理的结论反复应用在 $f(x)$ 上即可得出准素分解定理。$\blacksquare$


## 分解存在性 2：证明幂零的情形

借助 @primary-decomposition，我们把分解存在性转化为论证若 $N$ 是某个向量空间 $V$ 上的幂零线性变换，则存在 $V$ 的一组基，使得 $N$ 在这组基下的矩阵是若干零特征值 Jordan 块 $J_0$ 的和。注意一个 Jordan 块对应的是一个链
$$v\rightarrow Nv\rightarrow \cdots \rightarrow N^kv\rightarrow 0.$$
我们要证明存在若干条这样的互不相交的链，这些链所包含的全部非零向量构成 $V$ 的一组基。

这一步的证明方法很多，但是相差不是很大，具体喜欢那种要看个人主观，这里介绍的是最简单也是最容易被初学者接受的一种。

对 $V$ 的维数 $\dim V$ 归纳，$\dim V=1$ 时显然结论成立。

现假设结论对所有维数小于 $\dim V$ 的向量空间成立，考虑 $V$ 的像空间 $\im(V)$。这是一个 $N$- 不变子空间，且由于 $N$ 是幂零线性变换所以 $\dim \im(V)<\dim V$，所以可以对 $\im(V)$ 使用归纳假设：存在 $\im(V)$ 的一组基如下，它们构成 $q$ 条不相交的链 $\mathcal{O}_1,\cdots,\mathcal{O}_q$：

$$\begin{array}{l}&v_{1,1}\rightarrow v_{1,2}\rightarrow\cdots\rightarrow v_{1,n_1}\rightarrow 0.\\&v_{2,1}\rightarrow v_{2,2}\rightarrow\cdots\rightarrow v_{2,n_2}\rightarrow 0.\\&\cdots\\& v_{q,1}\rightarrow v_{q,2}\rightarrow\cdots\rightarrow v_{q,n_q}\rightarrow 0.\end{array}$$

由于 $v_{i,1}\in \im(V)$ 因此可以设 $v_{i,1}=Nw_i$，从而我们得到一组更长的链（就是在前面加上一项）

$$\begin{array}{l}&w_1\rightarrow v_{1,1}\rightarrow v_{1,2}\rightarrow\cdots\rightarrow v_{1,n_1}\rightarrow 0.\\&w_2\rightarrow v_{2,1}\rightarrow v_{2,2}\rightarrow\cdots\rightarrow v_{2,n_2}\rightarrow 0.\\&\cdots\cdots\cdots\\&w_q\rightarrow v_{q,1}\rightarrow v_{q,2}\rightarrow\cdots\rightarrow v_{q,n_q}\rightarrow 0.\end{array}$$

那么这些新链包含的向量是否构成 $V$ 的一组基？答案是我们还要补上一些在 $V$ 中长度是 1，但是在 $\im(V)$ 中“消失”了的链：注意 $\{v_{1,n_1},\cdots,v_{q,n_q}\}$ 是 $\ker N$ 中的线性无关元，但是 $\ker N$ 还可能有其它的基向量。将它们扩充为 $\ker N$ 的一组基

$$\{ v_{1,n_1},\cdots,v_{q,n_1}\}\cup \{ w_{q+1},\cdots,w_{K}\},\quad K=\dim\ker N.$$

从而我们最终得到下面的链图：

$$\begin{array}{r}\mathbf{w_1}\rightarrow v_{1,1}\rightarrow v_{1,2}\rightarrow\cdots\rightarrow v_{1,n_1}\rightarrow 0.&\\\mathbf{w_2}\rightarrow v_{2,1}\rightarrow v_{2,2}\rightarrow\cdots\rightarrow v_{2,n_2}\rightarrow 0.&\\\cdots\cdots\cdots&\\\mathbf{w_q}\rightarrow v_{q,1}\rightarrow v_{q,2}\rightarrow\cdots\rightarrow v_{q,n_q}\rightarrow 0.&\\\mathbf{w_{q+1}}\rightarrow 0.&\\\cdots\cdots&\\\mathbf{w_K}\rightarrow0.\end{array}$$

你可以看到 $w_{q+1},\ldots,w_K$ 正是那些在 $V$ 中长度为 1，但是在 $\im(V)$ 中「消失」了的链。

最后只剩下验证这些向量确实构成 $V$ 的一组基。显然这些向量一共有
$$\dim \im(V)+\dim\ker N=\dim V$$
个，所以只要再说明它们是线性无关的。

假设有线性关系

$$\cdots+(c_0w_i+c_1v_{i,1}+\cdots+c_{n_i}v_{i,n_i})+\cdots+\sum_{j=q+1}^K d_jw_j=0,$$

我们要说明出现在上式中的所有系数 $c_i,d_j$ 都是 0。左边用 $N$ 作用得到

$$\cdots+(c_0v_{i,1}+c_1v_{i,2}+\cdots+c_{n_i-1}v_{i,n_i})+\cdots=0.$$

这是一个关于 $\im(V)$ 的一组基的一个线性关系，于是 $c_0=\cdots=c_{n_i-1}=0$，从而剩下的线性关系为

$$\cdots+c_{n_i}v_{i,n_i}+\cdots+\sum_{j=q+1}^K d_jw_j=0.$$

而这是一个关于 $\ker N$ 的一组基的一个线性关系，于是 $c_{n_i}=d_{q+1}=\cdots=d_K=0$，从而所有的系数都是 0，这就完成了 Jordan 标准形存在性的证明。

## 分解唯一性的证明

要证明分解的唯一性，我们只要证明任何幂零线性变换 $N$ 分解为 Jordan 块的方式是唯一的。根据 Jordan 标准形存在性的证明，我们有如下的链图：
$$\begin{array}{r}v_{1,1}\rightarrow v_{1,2}\rightarrow\cdots\rightarrow v_{1,n_1}\rightarrow 0.&\\v_{2,1}\rightarrow v_{2,2}\rightarrow\cdots\rightarrow v_{2,n_2}\rightarrow 0.&\\\cdots\cdots&\\ v_{q,1}\rightarrow v_{q,2}\rightarrow\cdots\rightarrow v_{q,n_q}\rightarrow 0.\end{array}$$
这里每个链代表一个 Jordan 块，按照 $n_1\geq\cdots\geq n_q$ 的顺序排列。我们要证明链图中行数 $q$ 和行的长度 $(n_1,\ldots,n_q)$ 都是唯一确定的，不依赖于基的选择。

我用一个具体的例子来说明：

$$\begin{array}{r}
\bullet\rightarrow {\color{blue}{\bullet}} \rightarrow{\color{green}{\bullet}}\rightarrow {\color{red}{\bullet}}\rightarrow 0.\\
{\color{blue}{\bullet}} \rightarrow{\color{green}{\bullet}}\rightarrow{\color{red}{\bullet}}\rightarrow 0.&\\
{\color{green}{\bullet}}\rightarrow{\color{red}{\bullet}}\rightarrow 0.&\\
{\color{red}{\bullet}}\rightarrow 0.\\
{\color{red}{\bullet}}\rightarrow 0.
\end{array}$$

注意到在链图中，从右边数起，从第 $1$ 到第 $i$ 列，都会被 $N^i$ 变成零向量。这些向量构成了 $\ker N^i$ 的一组基。例如在上面例子中，$\{ {\color{red}{\bullet}} \}$ 的列构成了 $\ker N$ 的一组基，$\{ {\color{green}{\bullet}}\mid {\color{red}{\bullet}}\}$ 的列构成了 $\ker N^2$ 的一组基，等等。

于是我们有子空间的升链：
$$(0)\subset \underbrace{\ker N}_{\{ {\color{red}{\bullet}} \}}\subset \underbrace{\ker N^2}_{\{ {\color{green}{\bullet}}\mid {\color{red}{\bullet}}\}} \subset \underbrace{\ker N^3}_{\{ {\color{blue}{\bullet}}\mid {\color{green}{\bullet}}\mid {\color{red}{\bullet}}\}} \subset \underbrace{\ker N^4}_{\{ \bullet\mid {\color{blue}{\bullet}}\mid {\color{green}{\bullet}}\mid {\color{red}{\bullet}}\}}=V.$$
不难看到右边的第 $i$ 列正好构成商空间 $\ker N^{i}/\ker N^{i-1}$ 的一组基。
$$\begin{aligned}
\ker N: \quad &  \{ {\color{red}{\bullet}} \}\\
\ker N^2/\ker N: \quad & \{ {\color{green}{\bullet}} \}\\
\ker N^3/\ker N^2: \quad & \{ {\color{blue}{\bullet}} \}\\
\ker N^4/\ker N^3=U/\ker N^3: \quad & \{ \bullet \}\\
\end{aligned}
$$
所以右边第 $i$ 列的长度等于 $\dim\ker N^i - \dim\ker N^{i-1}$。

另一方面右边第 $i$ 列的长度还等于“长度 $\geq i$ 的链的个数”。所以长度恰好等于 $i$ 的链，即 $i$ 阶 Jordan 块的个数，等于
$$\begin{aligned}
&(\dim\ker N^i - \dim\ker N^{i-1})-(\dim\ker N^{i+1} - \dim\ker N^i)\\
=&\,2\dim\ker N^i - \dim\ker N^{i-1}-\dim\ker N^{i+1}.\end{aligned}$$
这是一个由 $N$ 完全确定的值。这就证明了分解的唯一性。

# 进一步的思考

一个很有意思的问题是，给定

$$J_\lambda=\begin{pmatrix}\lambda&1&&\\&\ddots&\ddots&\\&&\lambda&1\\&&&\lambda\end{pmatrix}_{n\times n}$$

为一个特征值 $\lambda$ 的 Jordan 块，计算其 $k$ 次幂 $J_\lambda^k$ 的 Jordan 标准形。

当 $\lambda\ne0$ 时，

$$J_\lambda^k = \begin{pmatrix}\lambda^k &k\lambda^{k-1}&\ddots &\\&\lambda^k&\ddots&\ddots\\&&\ddots&k\lambda^{k-1}\\&&&\lambda^k\end{pmatrix}.$$

你知道怎样计算 $J_\lambda^k$ 吗？记住这个技巧：把多项式 $x^k$ 在 $\lambda$ 处 Taloy 展开：

$$x^k=(x-\lambda)^k+a_{k-1}(x-\lambda)^{k-1}+a_1(x-\lambda)+a_0,$$

然后代入即可。

和 Jordan 块不可分解性的证明完全一样，我们发现 $J_\lambda^k-\lambda^k I$ 的秩是 $n-1$，因此方程组 $J_\lambda^kX=\lambda^k X$ 的解空间是 1 维的，从而 $J_\lambda^k$ 是不可分解的，因此其 Jordan 标准形只有一块，就是

$$\begin{pmatrix}\lambda^k&1&&\\&\ddots&\ddots&\\&&\lambda^k&1\\&&&\lambda^k\end{pmatrix}_{n\times n}.$$

最有意思的情形发生在 $\lambda=0$ 时，这个时候 Jordan 会均匀的碎裂为一些小的 Jordan 块的和。

这时 $J_0$ 是一个移位算子：

$$J_0:\quad v_n\rightarrow v_{n-1}\rightarrow \cdots \rightarrow v_1\rightarrow 0.$$

整个链只有一条。但是 $J_0^k$ 则是 $k$ 步 $k$ 步地「跳」：

$$J_0^k:\quad \left\{\begin{array}{l} v_n\rightarrow v_{n-k}\rightarrow \cdots \rightarrow0,\\v_{n-1}\rightarrow v_{n-1-k}\rightarrow \cdots\rightarrow 0,\\\cdots\\v_{n-k+1}\rightarrow v_{n-2k+1}\rightarrow \cdots \rightarrow 0.\end{array}\right.$$

所以 $J_0^k$ 有 $k$ 条链，每个链都是一个 Jordan 块，即 $J_0^k$ 的标准形中有 $k$ 个 Jordan 块。设 $n=qk+r$，这里 $0\leq r< k$，则这 $k$ 个 Jordan 块中有 $r$ 个是 $q+1$ 阶的，$k-r$ 个是 $q$ 阶的。

举个例子就明白了，一个 8 阶的 0 特征值 Jordan 块 $J_0$，$J_0^3$ 的 Jordan 标准形是什么样子的？这个时候 $J_0^3$ 有 3 个链 $\{v_8,v_5,v_2\}$, $\{v_7,v_4,v_1 \}$, $\{v_6,v_3\}$，所以 $J_0^3$ 的 Jordan 标准形有 2 个 3 阶的 Jordan 块和 1 个 2 阶的 Jordan 块。

总结一下：零特征值的 Jordan 块的高次幂一定会分裂，而且是尽可能均匀的分裂；非零特征值的 Jordan 块的任意次幂都不会分裂。

一个不可约的代数结构，在某种限制或者扩张的意义下却能均匀的「碎裂」，这是代数学中一个常见而重要的现象。比如设 $f$ 是一个有理数域 $\mathbb{Q}$ 上的不可约多项式，$F$ 是 $\mathbb{Q}$ 的一个正规扩域，则如果 $f$ 在 $F$ 上是可约的，那么 $f$ 必然分解成一些次数相同的多项式的乘积：

$$f=f_1f_2\cdots f_r,\quad \deg f_1=\cdots=\deg f_r.$$

类似的现象还有代数数论中素理想的分解，群表示论中不可约表示 （在诱导和限制下） 的分解，代数几何中不可约代数簇的分解等等。