---
title: "Todd Kemp 概率论课程笔记"
date: 2021-03-01
url: todd-kemp
---
<!-- md texcmd.md -->





# 16.1/16.2 Kolmogorov's Extension Theorem

这两讲的目的是介绍 Kolmogorov 扩张定理，即构造无穷乘积可测空间使得其有限维分布为给定的、满足相容性条件的有限维分布。

Kolmogorov 扩张定理看起来是一个纯测度论定理，但它本质与空间的拓扑性质有关。

设 $I$ 是指标集，$\{\A_i,\, i\in I\}$ 是某个样本空间 $\O$ 的一族子 $\sigma-$ 代数（每个 $\A_i$ 都是一个 $\sigma-$ 代数），满足条件：对任何两个 $\sigma-$ 代数 $\A_\alpha,\A_\beta$，都存在 $\A_\gamma$ （$\A_\gamma$ 未必唯一）使得 $\A_\alpha\subset\A_\gamma,\,\A_\beta\subset\A_\gamma$。

设 $\P_i$ 是 $\A_i$ 上的概率测度，如果对任何 $\A_\alpha\subset\A_\gamma$ 还有
$$\P_\gamma \big|_{A_\alpha} = \P_\alpha.$$
这时我们就称概率空间 $\{(\A_i,\P_i)\}$ **满足 Kolmogorov 相容性条件**。

这就自然地引出一个问题：是否存在代数 $\A=\cup_{i\in I}\A_i$ 上存在一个可数可加的概率测度 $\P$，使得它是所有 $\P_i$ 的扩张？即对任何 $\A_i$ 都有 $\P\big|_{\A_i}= \P_i$？如果有这样的 $\P$，我们就可以用 Carathéodory 定理将 $\P$ 扩张为 $\sigma(\A)$ 上的可数可加测度。

基本逻辑是：

1. 根据 Carathéodory 测度扩张定，我们只要证明代数 $\mathcal{A}=\cup_{n=1}^\infty\B_n$ 上的有限可加测度是可数可加的。这里
    $$\B_n=\B([0,1])^n\times Q,\quad Q=[0,1]^{\infty}.$$
    而这只要证明测度的连续性：若 $B_n\in\mathcal{A}, B_n\downarrow$ 且 $\inf_n\P(B_n)=\epsilon>0$，则 $\cap B_n\ne\emptyset$。
2. 我们可以不妨假设 $B_n\in\B_n$。这可以通过拉伸整个序列，在缝隙中塞上 $\Omega_k$ 或者 $B_k$ 来得到。
3. 我们可以取紧集 $K_n\in B_n$ 使得 $\mu(B_n\backslash K_n)<\epsilon/2^n$，然后证明对任何 $N$，$\cap_{n=1}^NK_n$ 非空，然后利用 $Q$ 的紧性，和紧集的有限交性质，证明 $\cap_{n=1}^\infty K_n$ 非空，从而 $\cap_{n=1}^\infty B_n$ 非空。
4. 在上一步中，可以取这样的紧集 $K_n$ 要用到 $R^d$ 上的概率测度是 Radon 测度这一性质：它们同时被开集从外部逼近和紧集从内部逼近。$Q$ 的紧性是用了 Tychonoff 定理。

> **引理**：$K$

# 17.1 Kolmogorov's 0-1 Law

本讲介绍了独立随机变量序列的尾事件，以及 Kolmogrov 0-1 律。

设 $\{X_n\}$ 是独立的随机变量序列 (不是两两独立，而是任何有限多个都独立)称 $\mathcal{T}=\cap_{n=1}^\infty\sigma(X_n,X_{n+1},\ldots)$ 为尾事件域。

> **Kolmogrov 0-1 律**：对任何 $A\in\mathcal{T}$ 有 $\mathbb{P}(A)\in\{0,1\}$。

**证明概要**：

+ $\sigma(X_1,\ldots,X_n)$ 和 $\sigma(X_{n+1},X_{n+2},\ldots)$ 是独立的。因为考虑如下两个集合族：
$$\{\text{all finite intersections like }\cap A_i, A_i\in\sigma(X_i),i=1,2,\ldots,n\}.$$
$$\{\text{all finite intersections like }\cap A_j, A_j\in\sigma(X_j),j=n+1,n+2,\ldots\}.$$
这俩都是 $\pi$- 系且互相独立，所以它们生成的 $\sigma$- 域也独立。前者可以生成 $\sigma(X_1,\ldots,X_n)$，后者可以生成 $\sigma(X_{n+1},X_{n+2},\ldots)$。
+ 于是 $\sigma(X_1,\ldots,X_n)$ 和 $\mathcal{T}$ 是独立的。
+ 于是 $\pi$- 系 $\cup_{n=1}^\infty\sigma(X_1,\ldots,X_n)$ 和 $\mathcal{T}$ 是独立的。
+ 于是 $\sigma$- 域 $\sigma(X_1,\ldots,X_n,\ldots)$ 和 $\mathcal{T}$ 独立，从而 $\mathcal{T}$ 和 $\mathcal{T}$ 独立，从而得证。


# 48.1 Uniform Integrability

这一讲介绍了随机变量集合的一致可积性，要点非常多。

对任何 $L^1$ 的随机变量 $X$，总是可以找一个紧集 $K$，使得 $|X|$ 在 $K^c$ 上的积分任意小：对任何 $\epsilon>0$，存在 $a>0$ 使得 $\E[|X|:\ |X|\geq a]<\epsilon$。但是如果是一族可积的随机变量的话，这个统一的 $a$ 就未必存在了。

如果这样的 $a$ 总是存在的话，我们就称这族随机变量是一致可积的。

> **定义**：随机变量列 $\{X_n\}$ 称作是一致可积的 (UI) 的，如果它们满足以下条件：
>
> 1. 每个 $X_i$ 都是 $L^1$ 的。
> 2. 对任何 $\epsilon>0$，存在 $a>0$ 使得 $\sup_n\E[X_n:\ |X_n|\geq a]< \epsilon$。

不难验证如果 $\{X_n\}$ 被一个可积随机变量控制，则它们是一致可积的：

> **例子 1**：如果 $|X_n|\leq Y,\ Y\in L^1$，则 $\{X_n\}$ 是一致可积的。

这是因为被积函数和积分区域都可以放大：$\E[|X_n|:\ |X_n|\geq a]\leq\E[|Y|:\ |Y|\geq a]$。

> **例子 2**：如果 $\{X_n\}$ 是 $L^p,\,p>1$ 一致有界的：$\sup_n\E |X_n|^p<\infty$，则 $\{X_n\}$ 是一致可积的。

这是因为被积函数可以放大：
$$\E[|X|: |X|\geq a]\leq \E[|X|\cdot\frac{|X|^{p-1}}{a^{p-1}}: |X|\geq a] = \frac{1}{a^{p-1}}\E[|X|^p: |X|\geq a]\leq \frac{M}{a^{p-1}}.$$

这个例子中的 $p>1$ 是不能减弱为 $p\geq1$ 的。不过我们可以证明 UI 的变量族必然是 $L^1$ 一致有界的：

> **定理**：若 $\{X_n\}$ 一致可积，则 $\sup_n E|X_n| <\infty$。

取 $a$ 使得 $\sup_n \E[|X_n|: |X_n|\geq a] < 1$，则不难证明 $\E |X_n| < a+1$。

现在我们来给出一致绝对连续的概念，并将说明**一致可积 = $L^1$ 一致有界 + 一致绝对连续**。

> **定义**：随机变量序列 $\{X_n\}$ 是一致绝对连续的，如果对任何 $\epsilon>0$，都存在 $\delta>0$，使得只要集合 $B$ 满足 $\mu(B)<\delta$，就有 $\sup_n\E[|X_n|: B]<\epsilon$。

> **定理**：$\{X_n\}$ 一致可积当且仅当它们 $L^1$ 一致有界且一致绝对连续。

$\Rightarrow$: $L^1$ 一致有界已经有了。下证一致绝对连续性质。对任何可测集 $B$，我们考虑用一个待定的 $a>0$ 把积分 $\E[|X_n|: B]$ 变成
$$\E[|X_n|: B,\ |X_n|\geq a] + \E[|X_n|: B,\ |X_n|<a].$$
第一项小于等于  $\E[|X_n|: |X_n|\geq a]$，由一致可积性我们可以取 $a$ 使得它小于 $\epsilon/2$。第二项小于等于 $a\mu(B)$。所以只要 $\mu(B)<\delta=\frac{\epsilon}{2a}$ 即可。

$\Leftarrow$: 我们可以料想 $\{|X_n|\geq a\}$ 的测度是会一致地越来越小的：

$$\P(\{|X_n|\geq a\})=\E[1: |X_n|\geq a]\leq \E[\frac{|X_n|}{a}: |X_n|\geq a]\leq \frac{\E|X_n|}{a}=\frac{K}{a}.$$
其中 $K$ 是 $\{X_n\}$ 的 $L^1$ 上界。所以确实可以取 $a$ 适当大使得 $\{|X_n|\geq a\}$ 的测度一致地小于一致绝对连续性中所需要的那个 $\delta$。

> **定理**：一致可积性是平移不变的： $\{X_n\}$ 一致可积且 $Y\in L^1$，则 $\{X_n+Y\}$ 也是一致可积的。

为此只要证明它们一致 $L^1$ 有界且一致绝对连续。其中一致 $L^1$ 有界是显然的。

对于一致绝对连续，我们有
$$\E[|X_n+Y|: B]\leq\E[|X_n|:B] + \E[|Y|: B].$$
取 $\delta_1$ 使得只要 $\mu(B)<\delta_1$ 就有 $\E[|X_n|:B]<\frac{\epsilon}{2}$，再取 $\delta_2$ 使得只要 $\mu(B)<\delta_2$ 就有 $\E[|Y|:B]<\frac{\epsilon}{2}$，则 $\delta=\min\{\delta_1,\delta_2\}$ 符合要求。

最后一个重要定理是：**依 $L^1$ 范数收敛 = 一致可积 + 依测度收敛**。

> **定理**：随机变量序列 $X_n\xrightarrow{L^1} X$ 当且仅当 $X_n\xrightarrow{\P}X$ 且 $\{X_n\}$ 一致可积。

$\Rightarrow$: $L^1$ 收敛当然可以得出依测度收敛 (Markov 不等式一步即得)。要证明一致可积，我们只要根据平移不变性，证明 $Y_n=X_n-X$ 是一致可积的即可。

考虑取一个待定的正整数 $N$，则
$$\sup_n\E[|Y_n|: |Y_n|\geq a] \leq \sup_{n< N}\E[|Y_n|: |Y_n|\geq a] \vee \sup_{n\geq N}\E[|Y_n|: |Y_n|\geq a]$$
上面右边第一项是有限多个可积随机变量组成的集合，是一致可积的，所以只要 $a$ 足够大第一项是可以任意小的。第二项小于等于 $\E|Y_n|$ 并且由于 $\E|Y_n|\to 0$ 所以只要 $N$ 足够大也是可以任意小的。所以我们先取 $N$ 足够大使得 $\E|Y_n|<\epsilon/2$，再取 $a$ 足够大使得 $n<N$ 时 $\sup_{n< N}\E[|Y_n|: |Y_n|\geq a]<\epsilon/2$，就得到了一致可积性。

$\Leftarrow$: 记 $Y_n = X_n - X$，则 $Y_n\ind_{|Y_n|<a}$ 是一个不大于 $a$ 的函数序列，且依测度收敛到 0，从而由**依测度的控制收敛定理**有 $Y_n\ind_{|Y_n|<a}\xrightarrow{L^1}0$。
从而
$$\|X_n-X\|_{L^1} = \E[Y_n\ind_{\{|Y_n|<a\}}] + \E[Y_n\ind_{\{|Y_n|\geq a\}}].$$
第一项取 $n$ 足够大就可以任意小，第二项取 $a$ 足够大也可以任意小，得证。

> **推论**：正则鞅 $X_n = \E[X|\mathcal{F}_n]$ 是一致可积的。

反过来也是对的：鞅序列如果是一致可积的，则一定是正则鞅。
