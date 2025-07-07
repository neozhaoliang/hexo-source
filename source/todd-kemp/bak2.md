---
title: "Todd Kemp 概率论课程笔记"
date: 2021-03-01
url: todd-kemp
---
<!-- md texcmd.md -->




# 6.2 Measurable Functions

本讲介绍了测度空间上可测映射的概念。

> **引理**：设 $f:\Omega\to\S$ 是一个映射，$\mathcal{A}\subset2^\S$ 是 $\S$ 中一个集合族，定义
> $$f^{-1}(\mathcal{A}) = \{f^{-1}(E),E\in\mathcal{A}\}.$$
> 则 $\sigma(f^{-1}(\mathcal{A}))= f^{-1}(\sigma(\mathcal{A}))$。

引理的证明不难， 只要注意到一个 $\sigma-$ 域在映射下的像 (push forward) 和逆映射下的原像 (push back) 都是 $\sigma-$ 域即可。

> **定义：**若 $(\O,\F)$ 和 $(\S, \B)$ 是两个可测空间，我们称 $f:\O\to\S$ 是一个可测映射，如果有 $f^{-1}(\B)\subseteq\F$。

要检查一个映射是不是可测的，我们不必对每个 $B\in\B$ 都检查，只要对满足 $\sigma(\mathcal{A})=\B$ 的一个子集合族 $\mathcal{A}$ 检查有 $f^{-1}(\mathcal{A})\subseteq\F$ 即可。这是因为由上面的引理，
$$f^{-1}(\B)=f^{-1}(\sigma(\mathcal{A}))=\sigma(f^{-1}(\mathcal{A}))\subseteq\F.$$

> **推论**：如果 $X_1,\ldots,X_n$ 都是测度空间 $(\O,\F)$ 上的可测函数，$f:\R^n\to\R$ 是一个连续或者 Borel 可测的多元函数，则 $Y=f(X_1,\ldots,X_n)$ 也是可测函数。

证明：记 $X=(X_1,\ldots,X_n)$，我们要说明复合映射
$$\O\xrightarrow{\ X\ }\R^n\xrightarrow{\ f\ }\R$$
是可测的。由于 $f$ 显然可测，只要再说明 $X$ 是可测的。根据上面的引理，只要验证
$$X^{-1}\left((-\infty, t_1], (-\infty, t_2],\ldots, (-\infty, t_n]\right)=\bigcap_{i=1}^n \{X_i\leq t_i\}.$$
是可测的，这显然。


# 7.1 Robustness of Measurability

本讲主要介绍了可测函数集合在通常的运算，以及取极限的操作下得到的仍然是可测函数。

下面这个结论在整个课程中都会频繁用到：

> **推论 (Doob-Dynkin 分解)**：设 $X_1,\ldots,X_d, Y$ 都是 $(\O,\F)\to(\R,\B(\R))$ 的可测函数，而且 $Y$ 还关于 $\sigma(X_1,\ldots,X_d)$ 可测，则存在 Borel 可测函数 $f:\R^d\to\R$ 使得 $Y=f(X_1,\ldots,X_d)$。

记 $X=(X_1,\ldots,X_d)$，则 $X:\O\to\R^d$ 是 $\F/\B(\R^d)$ 可测的。

我们先来说明有 $\sigma(X_1,\ldots,X_n)=X^{-1}(\B(\R^d))$ 成立。这个基本就是把之前 6.2 讲的引理证了一遍。为方便记
$$I^d=\{(-\infty,t_1]\times\cdots\times(-\infty, t_d],\ t_i\in\R\text{ or }t_i=+\infty\}.$$ 首先 $\B(\R^d)$ 在 $X^{-1}$ 下的 pull back $X^{-1}(\B(\R^d))$ 是一个 $\sigma$- 域，而且包含 $X^{-1}(I^d)$，所以包含任何形如 $\{X_i\leq t_i\}$ 的集合，从而包含所有的 $\sigma(X_i)$，即包含 $\sigma(X_1,\ldots,X_n)$。

另一方面 $\sigma(X_1,\ldots,X_n)$ 在 $X$ 下的 push forward $X(\sigma(X_1,\ldots,X_n))$ 也是一个 $\sigma$- 域，并且包含 $I^d$，所以也就包含 $\B(\R^d)$。

回到推论证明。我们首先对 $Y=\ind_{A},\,A\in\sigma(X_1,\ldots,X_n)$ 是指标函数的情形证明。由于 $\sigma(X_1,\ldots,X_n)=X^{-1}(\B(\R^d)$，所以存在 $B\in\B(\R^d)$ 使得 $A=X^{-1}(B)$。于是
$$\ind_{A}=\ind_{X^{-1}(B)} = \ind_{B}\circ X.$$
$\ind_B$ 当然是 $\B(\R^d)/\B$ 可测函数，所以结论成立。

由此很容易得出结论对任意简单函数都成立。

对一般的可测函数 $Y\in\sigma(X_1,\ldots,X_d)$，取简单函数列 $\phi_n\to Y,\,\phi_n\in\sigma(X_1,\ldots,X_d)$。根据上面的结论，存在可测函数 $f_n:\R^d\to\R$ 使得 $\phi_n=f_n(X)$。记 $f=\varlimsup f_n$，则有
$$f(X)=\varlimsup f_n(X)=\varlimsup \phi_n = \lim\phi_n = Y.$$
结论得证。


# 8.2 Monotone convergence theorem

本讲给出了**非负可测函数积分**的定义：设 $f\in L^+$ 为非负可测函数，其积分定义为
$$\int f\du = \sup\left\{\int\varphi\du:\ \varphi\leq f,\ \varphi \text{ simple and measuable}\right\}.$$

这个定义的问题在于不容易直接得出积分的可加性：
$$\int (f+g) \du =\int f\du + \int g\du.$$

为此先证明了单调收敛定理：

> **单调收敛定理 (MCT)**：若 $\{f_n\}\in L^+$ 且 $f_n\uparrow f$，则 $\int f_n\du\uparrow \int f\du$。

**证明概要**：显然 $\lim\limits_{n\to\infty}\int f_n\du$ 存在且小于等于 $\int f\du$。为了证明二者相等，只要证明对任何简单函数 $\varphi\leq f$ 有
$$\lim_{n\to\infty} \int f_n\du \geq \int \varphi\du$$
即可。**不要指望通过分析集合 $\{f_n\geq \varphi\}$ 来得出结论**，这完全可能对任何 $n$ 都是空集。但是如果可以证明对任何 $0<c<1$ 有
$$\lim_{n\to\infty} \int f_n\du \geq c \int \varphi\du$$
成立，那么令 $c\uparrow1$ 即得结论（两边都是非负的）。而集合 $E_n=\{f_n\geq c\varphi\}$ 满足 $E_n\uparrow\Omega$。于是由 $f_n\geq c\varphi\ind_{E_n}$ 以及积分单调性有
$$\int f_n\du \geq c\int\varphi\ind_{E_n}\du.$$
由于 $\varphi$ 是简单函数，所以可设 $\varphi = \sum_{k} a_k\ind_{A_k}$ 并代入上面右边，有
$$\int f_n\du \geq c\int\varphi\ind_{E_n}\du = c\sum_{k}a_k\mu(A_k\cap E_n).$$
令 $n\to\infty$ 并利用测度连续性 $\mu(A_k\cap E_n)\uparrow\mu(A_k)$ 即得
$$\lim_{n\to\infty} \int f_n\du \geq c\sum_ka_k\mu(A_k)= c \int \varphi\du.$$
单调收敛定理得证。

**MCT 告诉我们总是可以用一个只取有限多个值、每个值都有限的简单函数来逼近 $f$ 的积分**。

非负可测函数 $f$ 可以用简单函数序列
$$\varphi_n = \sum_{k=1}^{2^{2n}}\frac{k-1}{2^n}\ind_{\{\frac{k-1}{2^n}\leq f<\frac{k}{2^n}\}} + 2^n\ind_{\{f\geq 2^n\}}$$
来逼近。在第 $n$ 次切割中，我们将切割范围扩大为原来的 2 倍以逼近 $f$ 在 $\infty$ 的部分，同时将切割的间隔缩小为原来的 1/2 以保证逼近的误差是减小的。

# 9.1 Integrals and Null Sets

本讲主要是论证积分的基本结论在 $\ae$ 的情形下也都成立。此外介绍了非负可测函数列积分的 Fatou 定理，它是上一讲中单调收敛定理的直接推论：

> **Fatou 定理**：设 $f_n\in L^+$ 是非负可积函数列，则
> $$\int\liminf f_n\du \leq \liminf \int f_n\du.$$

证明：设 $g_n=\inf_{m\geq n}f_m$，则 $g_n\leq f_m$，所以
$$\int g_n\du\leq\int f_m\du,\quad n\leq m$$
从而 $\int g_n\du\leq\liminf\int f_m\du$。
另一方面 $g_n\uparrow\liminf f_n$，所以利用 MCT 有
$$\int\liminf f_n\du =\int\lim_{n\to\infty} g_n\du=\lim_{n\to\infty}\int g_n\du\leq\liminf\int f_m\du.$$

---

另一个重要结论是 Borel-Cantelli 引理：

> **Borel-Cantelli (Ⅰ)**：如果 $\sum_{n=0}^\infty\mu(A_n)<\infty$，则 $\mu\{A_n,\ \io\}=0$。

这个用积分很容易看出来：
$$\sum_{n=0}^\infty\mu(A_n)=\int\sum_{n=0}^\infty\ind_{A_n}\du.$$
左边如果有限，那么右边的函数必须几乎处处有限，所以 $\{A_n,\ \io\}$ 是零测集。


# 9.2 L1 and the DCT

本讲引入了一般可积函数的定义，并证明了控制收敛定理。

> **定义**：称 $f\in\Lone$ 为可积函数，如果 $f^+,f^-$ 都是可积的：$\int f^{\pm}\du<\infty$。此时我们定义 $\int f=\int f^+-\int f^-$。或者等价地，$f$ 可积当且仅当 $\int |f|\du<\infty$。

对可积函数，积分是**线性的**、**保持单调性的**。

如果我们将几乎处处相等的函数看作是同一个函数的话，$\|\cdot\|_{L^1}$ 是可积函数空间上的度量。

{% blockquote %}
**控制收敛定理**：设 $f_n, g$ 都是可积函数并且 $|f_n|\leq g$，$\lim\limits_{n\to\infty}f_n=f$。
则 $f$ 也是可积函数并且 $\lim\limits_{n\to\infty}\int f_n=\int f$。
{% endblockquote %}
**证明概要**：显然 $|f|\leq g$，所以 $f$ 可积，从而由线性性质 $g\pm f$ 都是可积的。对可积函数序列 $g\pm f_n$ 使用 Fatou 引理，有
$$\int (g\pm f)\du=\int\varliminf_{n\to\infty} (g\pm f_n)\du\leq \varliminf_{n\to\infty}\int (g\pm f_n)\du = \int g\du\pm\varliminf_{n\to\infty}\int f_n\du.$$
比较两边有
$$\int (g\pm f)\du \leq \int g\du \pm \varliminf_{n\to\infty}\int f_n\du.$$
消去 $g$ 的积分，并注意对任何实数列 $\{a_n\}$ 有 $\varliminf\limits_{n\to\infty}(-a_n)=-\varlimsup\limits_{n\to\infty} a_n$，从而
$$\varlimsup\int f_n\du \leq \int f\du \leq \varliminf\int f_n\du.$$
即得结论。



# 11.2 Probability Laws Revisited

> **积分的变量替换定理**：设 $X:\ (\Omega,\mathcal{F},\mu)\to(\mathcal{S},\mathcal{B})$ 是一个可测映射，$(\mathcal{S},\mathcal{B})$ 上的测度 $\nu$ 由 $\nu(E) = \mu(X^{-1}(E))$ 给出，$g:\ (\mathcal{S},\mathcal{B},\nu)\to\mathbb{R}$ 是一个可积函数，则 $$\int_{\Omega}g\circ X\du=\int_{\mathcal{S}}g\dv.$$

**证明概要**：首先考察 $g=\ind_B,\,B\in\B$ 是指标函数的情形。
$$\int_{\S} g\dv = \nu(B) = \mu(X^{-1}(B))=\int_{\O}\ind_{X^{-1}(B)}\du.$$
由于 $\omega\in X^{-1}(B)\Leftrightarrow X(\omega)\in B$，所以 $\ind_{X^{-1}(B)} = \ind_{B}\circ X$，所以上式右边的积分等于 $$\int_{\O}\ind_{B}\circ X\dv.$$
此时结论成立。根据积分的线性性质结论对简单函数也成立，从而进一步取极限可得对任何可积函数 $g$ 都成立。


# 13.1 Convergence in measure

本讲介绍了可测函数的依测度收敛概念，及其与逐点收敛之间的联系。

{% blockquote %}
**定义**：称 $f_n\to_{\mu} f$ 为依测度收敛，如果对任意 $\epsilon >0$ 有
$$\lim_{n\to\infty}\mu\{|f_n-f|\geq0\}=0.$$
{% endblockquote %}

**依测度收敛但不处处收敛的例子**：将区间 $[0, 1]$ 等分为 $2^n$ 份，将它们的指标函数排成一排，再对所有 $n$ 将这些片段排列起来得到序列 $f_n$，则 $f_n$ 依测度收敛到 0 但不逐点收敛。

**接下来是一个将测度和逐点收敛联系起来的重要技巧**：根据几乎处处收敛的定义，$f_n\to f,\ae$ 收敛即要求对任何 $\epsilon>0$ 有
$$\mu\{|f_n-f|\geq\epsilon,\ \io\} = 0.$$
这样就可以把逐点收敛和测度联系起来。有时候我们还可以使用更强的条件：
$$\mu\{|f_n-f|\geq 2^{-n},\ \io\} = 0.$$
这是因为对任何 $\epsilon$，$n$ 足够大时 $2^{-n}<\epsilon$, 从而 $\{|f_n-f|\geq\epsilon\}\subseteq\{|f_n-f|\geq 2^{-n}\}$，前者发生无穷多次自然意味着后者也发生无穷多次。这样就可以和 Borel-Cantelli 引理结合起来使用，只要
$$\sum_{n}\mu\{|f_n - f|\geq 2^{-n}\} < \infty,$$
就可以保证 $\{f_n\}$ 是几乎处处收敛的。

{% blockquote %}
**定理**：逐点收敛可以推出依测度收敛。
{% endblockquote %}
**简要证明**：对任何 $\epsilon>0$，记 $A_n=\{|f_n-f|\geq\epsilon\}$，则
$$\mu\{A_n,\ \io\} = \lim_{n\to\infty}\mu(\bigcup_{k\geq n}A_k)\geq \lim_{n\to\infty}\mu(A_n).$$

{% blockquote %}
**定理**：设 $\{f_n\}$ 为依测度收敛的 Cauchy 序列：
$$\lim_{n,m\to\infty}\mu\{|f_n-f_m|\geq\epsilon\} = 0.$$
则 $f_n$ 必有逐点收敛的子序列 $f_{n_k}\to f\ \mathrm{a.e.}$，并且 $f_n$ 依测度收敛到 $f$。
{% endblockquote %}
**简要证明必有逐点收敛的子序列**：利用上面介绍的技巧，归结为抽取子序列 $\{f_{n_k}\}$ 满足
$$\mu\{|f_{n_{k+1}} - f_{n_k}|\geq2^{-k},\ \io\} = 0.$$
利用 Borel-Cantelli 引理这只要让 $\sum_{k=1}^\infty\mu\{|f_{n_{k+1}} - f_{n_k}|\geq 2^{-k}\}<\infty$ 即可。为此又只要让 $\mu\{|f_{n_{k+1}} - f_{n_k}|\geq 2^{-k}\}\leq 2^{-k}$ 即可。根据 Cauchy 条件这是可以做到的。

**简要证明这个子序列的逐点极限是原序列的依测度极限**：对任何 $n$，取 $n_{k}>n$ 则有
$$\{|f_n-f|\geq\epsilon\}\subseteq \{|f_n-f_{n_k}|\geq\epsilon/2\}\cup \{|f_{n_k}-f|\geq\epsilon/2\}.$$
显然 $n$ 足够大时右边两个集合测度都趋于 0。


# 13.2 $L^p$ is Complete

首先我们来证明 $L^p$ 收敛可以推出依测度收敛。

> **定理**：$L^p$ 度量是完备的，任何 Cauchy 序列必有极限。

**证明概要**：$L^p$ Cauchy 列也都是依测度 Cauchy 列，从而有几乎处处收敛的子序列 $f_{n_k}\to f$。对固定的 $k$，当 $j>k$ 时有
$$\begin{align*}\int\|f_{n_k}-f\|^p\du&=\int\lim_{j\to\infty}\|f_{n_k}-f_{n_j}\|^p\du\leq\liminf_{j\to\infty}\int\|f_{n_k}-f_{n_j}\|^p\du\\
&\leq\limsup_{j\to\infty}\int\|f_{n_k}-f_{n_j}\|^p\du.\end{align*}$$
两边令 $k\to\infty$ 并利用 Cauchy 条件即得子序列 $f_{n_k}\xrightarrow{L^p}f$。再利用 Cauchy 条件可得原序列 $f_n\xrightarrow{L^p} f$。

> **依测度控制收敛定理**：设 $f_n$ 依测度收敛到 $f$，且 $|f_n|\leq f,\, f\in L^1$。则 $f_n\xrightarrow{L^1} f$。

**证明概要**：假设 $f_n$ 不 $L^1$ 收敛到 $f$，则对任何 $\epsilon>0$，存在子序列 $f_{n_k}$ 满足：

+ $\|f_{n_k} - f\|_{L^1}\geq\epsilon$。
+ $f_{n_k}$ 几乎处处收敛到 $f$。

这与控制收敛定理矛盾。


# 15.1 Independence

本讲介绍了事件和 $\sigma$- 域之间的独立性概念。

要点总结：

1. 若干个事件 $\{A_n\}$ 独立不是指它们两两独立，而是其中任何有限多个子事件都独立。
2. 验证若干 $\sigma$- 域 $\{\mathcal{F}_i\}$ 独立只需要验证生成它们的 $\pi$- 系 $\{C_i:\ \mathcal{F}_i=\sigma(C_i)\}$ 独立。

> **Borel-Cantelli 引理 II**：设 $\{A_n\}$ 是独立的事件列，则若 $\sum_{n=1}^\infty\P(A_n)=\infty$，则 $\P(\{A_n, \io\})=1$。

想法还是要用独立性，转到事件的交上去。

$$\P(\{A_n,\ \io\})=\P(\bigcap_{n=1}^\infty\bigcup_{k\geq n}A_k)=\lim_{n\to\infty}\P(\bigcup_{k\geq n}A_k).$$
观察两边，要想用上独立性，就得取补：
$$1-\P(\bigcup_{k\geq n}A_k)=\P(\bigcap_{k\geq n}A_k^c)=\lim_{M\to\infty}\prod_{k=n}^M\P(A_k^c)=\lim_{M\to\infty y}\prod_{k=n}^M(1-\P(A_k)).$$
利用 $1-x\leq e^{-x}$ 有
$$\lim_{M\to\infty}\prod_{k=n}^M(1-\P(A_k))\leq\lim_{M\to\infty}\prod_{k=n}^Me^{-\P(A_k)}=\lim_{M\to\infty}e^{-\sum_{k=n}^M\P(A_k)}.$$
上式右边对任何固定的 $n$ 其极限都是 0，从而 $\P(\bigcup_{k\geq n}A_k)\to1$，结论得证。

# 15.2 Independent Random Variables

上一讲介绍了独立事件和独立事件域的概念，这一讲介绍了独立随机变量的概念。

> **定义**：一族随机变量 $\{X_i\}_{i\in I}$ 称作是独立的，如果它们的 $\sigma-$ 域 $\{\sigma(X_i)\}_{i\in I}$ 是独立的。

由于 $\sigma(X_i)$ 可以由 $\pi-$ 系 $\{X_i\in(-\infty, t_i]\}$ 生成，所以只要验证这个 $\pi-$ 系的独立性即可。

> **定理**：设 $X=(X_1,\ldots,X_n)$，其中每个 $X_i:(\O,\F,\P)\to(\S_i,\B_i)$ 是随机变量，$\mu_X$ 是 $\B_1\otimes\cdots\otimes\B_n$ 上的测度: $\mu_X(B)=\P(X\in B)$。则 $X_1,X_2,\ldots,X_n$ 独立当且仅当 $\mu_X=\mu_{X_1}\otimes\cdots\otimes\mu_{X_n}$。

证明：$\Leftarrow$:

$$\begin{align*}\P(X_1\in B_1,\ldots,X_n\in B_n)&=\mu_X(B_1\times \cdots\times B_n)\\
&=\mu_{X_1}(B_1)\cdots\mu_{X_n}(B_n)\\
&=\P(X_1\in B_1)\cdots\P(X_n\in B_n).\end{align*}$$

$\Rightarrow$: 简单。

> **推论**：如果 $X_1,X_2,\ldots,X_n$ 都是 $L^1$ 可积的随机变量，则 $X_1X_2\cdots X_n\in L^1$ 且 $\E[X_1\cdots X_n]=\E[X_1]\cdots\E[X_n]$。

首先对 $|X_1X_2\cdots X_n|$ 用 Tonelli 定理得出 $|X_1X_2\cdots X_n|$ 可积，然后再对 $X_1X_2\cdots X_n$ 用 Fubini 定理。

> **推论**：如果 $X_1,\ldots,X_n,Y_1,\ldots,Y_m$ 是一组独立的随机变量，则 $f(X_1,\ldots,X_n)$ 和 $g(Y_1,\ldots,Y_m)$ 也是独立的。

这是因为 $\sigma(f(X_1,\ldots,X_n))\subseteq\sigma(X_1,\ldots,X_n)$，$\sigma(g(Y_1,\ldots,Y_m))\subseteq\sigma(Y_1,\ldots,Y_m)$，所以也是独立的。


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
