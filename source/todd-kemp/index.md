---
title: "Todd Kemp 概率论课程笔记"
date: 2021-03-01
url: todd-kemp
---
\newcommand{\A}{\mathcal{A}}
\newcommand{\B}{\mathcal{B}}
\newcommand{\E}{\mathbb{E}}
\newcommand{\F}{\mathcal{F}}
\newcommand{\O}{\Omega}
\newcommand{\P}{\mathbb{P}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\S}{\mathcal{S}}

\newcommand{\io}{\mathrm{i.o.}}
\newcommand{\ae}{\mathrm{a.e.}}
\newcommand{\iid}{\mathrm{i.i.d}}

\newcommand{\du}{\,\mathrm{d}\mu}
\newcommand{\dv}{\,\mathrm{d}\nu}
\newcommand{\dx}{\,\mathrm{d}x}
\newcommand{\dy}{\,\mathrm{d}y}

\newcommand{\triple}{(\Omega,\mathcal{F},\mathbb{P})}
\newcommand{\Lone}{L^1(\Omega,\mathcal{F},\mathbb{P})}

\newcommand{\ind}{\mathbb{1}}

\newcommand{\ud}[1]{\mu(\mathrm{d}#1)}
\newcommand{\vd}[1]{\nu(\mathrm{d}#1)}
\newcommand{\uxuy}{\mu_X\otimes\mu_Y}
\newcommand{\uxvy}{\mu_X\otimes\nu_Y}

# 0 Banach Tarski

:::{.example}
**不可测集的例子**：记单位圆 $S^1=\{e^{it},\,t\in\R\}$，子群 $H=\{e^{iq},\,q\in\Q\}$，在每个左陪集 $S^1/H$ 中选择一个代表元组成集合 $E$，则 $E$ 是不可测集合。这是因为 $S^1 = \bigcup_{q\in\Q}Ee^{iq}$ 是可数多个互不相交的集合的并，这些集合两两之间只差乘以一个单位复数，即差一个旋转，所以测度均相等，于是
$$1 = \sum_{q\in\Q}\mu(E) = \infty\cdot \mu(E)\Rightarrow E\text{ not measuabe.}$$
:::

# 1.1 Probability Motivation

无要点

# 1.2 $\sigma$- Fields

介绍了 $\sigma$- 域的概念，以及最重要的 $\sigma$- 域的例子：拓扑空间中开集生成的 Borel 域。

# 2.1 Measures Definition and Examples

介绍了可测空间，以及测度的定义和基本性质。

:::{.definition .unnumbered}
设 $\F$ 是一个 $\sigma$- 域，称 $\mu:\ \F\to[0,\infty]$ 是测度，如果对任何可数多个不交并有 $\mu(\uplus_{n=1}^\infty E_n)=\sum_{n=1}^\infty\mu(E_n)$ 成立。
:::

测度的三个基本性质：

+ 单调性：$A\subseteq B\Rightarrow \mu(A)\leq\mu(B)$。
+ 加法等式 $\mu(A\cup B) + \mu(A\cap B) = \mu(A) + \mu(B)$。
+ 次可数可加：$\mu(\cup_{n=1}^\infty E_n)\leq\sum_{n=1}^\infty\mu(E_n)$。

此外如果 $\{\mu_n\}_{n=1}^\infty$ 是一列测度，则它们的和 $\mu=\sum\limits_{n=1}^\infty\mu_n$ 也是测度。

预告了接下来构造测度的过程：有限可加测度 $\Rightarrow$ 预测度 $\Rightarrow$ ·测度。

# 2.2 Finitely Additive Measures

这一讲介绍了**有限可加测度**，**预测度 (pre-measure，即域上的可数可加测度)**，**半代数 (semi-algebra)** 等概念。

:::{.definition .unnumnered}
1. 域上的可数可加测度叫做 **预测度**。
2. 域上的有限可加测度叫做 **有限可加测度**。
:::

> **核心思想**：半代数 $\mathcal{S}$ 上的有限可加测度 $\Rightarrow$ 代数 $\mathcal{A}$ 上的有限可加测度 $\Rightarrow$ 代数 $\mathcal{A}$ 上的可数可加测度 $\Rightarrow$ $\sigma$- 域上的可数可加测度。

域 $\mathcal{A}$ 上的有限可加测度的基本性质：

+ 单调性、加法等式同可数可加的情形。
+ **超可数可加**：如果 $\{E_n\}_{n=1}^{\infty}$ 是一列不相交的集合，则 $\mu(\uplus_{n=1}^\infty E_n)\geq\sum_{n=1}^\infty\mu(E_n)$。这是由于单调性左边始终是右边部分和的上界。注意这里要求每个 $E_n\in\mathcal{A}$ 以及 $\mu(\uplus_{n=1}^\infty E_n)\in\mathcal{A}$。


:::{.definition}
一个半代数 $\mathcal{S}$ 是指满足如下条件的集合族：

1. $\emptyset\in\mathcal{S}$。
2. 若 $A,\,B\in\mathcal{S}$ 则 $A\cap B\in\mathcal{S}$。
3. 若 $A\in\mathcal{S}$ 则 $A^c$ 可以表示为 $\mathcal{S}$ 中有限多个成员的不交并。
:::

半代数 $\mathcal{S}$ 生成一个代数 $\mathcal{A}$：
$$\mathcal{A}=\{\text{all finite disjoint unions of sets from }\mathcal{S} \}.$$

第一步**半代数 $\mathcal{S}$ 上的有限可加测度 $\Rightarrow$ 代数 $\mathcal{A}$ 上的有限可加测度**：这一步是显然的，只需要验证定义不依赖于 $\mathcal{A}$ 作为 $\mathcal{S}$ 中集合不交并的表示方式即可。

第三步**代数 $\mathcal{A}$ 上的可数可加测度 $\Rightarrow$ $\sigma$- 域上的可数可加测度**：这一步总是可以做到的，由后面的测度扩张定理给出。

第二步**代数 $\mathcal{A}$ 上的有限可加测度 $\Rightarrow$ 代数 $\mathcal{A}$ 上的可数可加测度**：这一步并不总是可以做到。举个例子，在是整数集 $\mathbb{Z}$ 的所有子集上定义如下测度 $\mu$：若子集 $E$ 或者 $E^c$ 之一是有限集，则规定 $\mu(E)=0$，否则 $\mu(E)=1$。此测度有限可加但不是可数可加，所以也不会有可数可加的扩张。

最重要的半代数 $\mathcal{S}$ 的例子：所有形如 $\{(a, b],-\infty\leq a<b\leq \infty\}$ 的半开区间。

任何单调函数 $F$ 都可以给出其上的一个有限可加测度：$F((a, b])) = F(b) - F(a)$，从而可以扩张为代数 $\mathcal{A}$ 上的有限可加测度。**但是要使得这个测度是可数可加的，我们必须限制 $F$ 是右连续的**，这样的测度叫做 Stieltjes 测度，会在下一讲介绍。

# 3.1 Stieltjes Premeasures

本讲接着上一讲的内容，证明了当 $F$ 单调且右连续时，$\mu((a,b])=F(b)-F(a)$ 确实给出 Borel 域 $\mathcal{A}$ 上的一个可数可加测度。当然 Borel 域还是太复杂了 (虽然它们都是有限多个半开区间的不交并)，无法用可数可加的定义来验证。我们还是要回到由半开区间构成的半代数 $\mathcal{S}$ 上。

我们要从有限可加推出可数可加，而有限可加蕴涵了可数**超**可加，所以我们还缺少可数**次**可加。而 $\mathcal{A}(\mathcal{S})$ 上的可数次可加实际上可以由 $\mathcal{S}$ 上的可数次可加给出：

:::{.lemma .unnumbered}
代数 $\mathcal{A}(\mathcal{S})$ 上的有限可加测度 $\mu$ 是可数可加的，**当且仅当它限制在  $\mathcal{S}$ 上是次可数可加的**。
:::
这个话需要仔细解释清楚：$\mu$ 在 $\mathcal{S}$ 上次可数可加是指如果 $\{E_n\}$ 是半代数 $\mathcal{S}$ 中互不相交的集合，并且它们的可数并 $\uplus_{n} E_n$ 也在半代数 $\mathcal{S}$ 中，则 $\mu(\uplus_nE_n)\leq\sum_n\mu(E_n)$。

**证明概要**：$\Rightarrow$ 是显然的，可数可加必然蕴含次可数可加。

$\Leftarrow$：$\mu$ 作为 $\mathcal{A}(\mathcal{S})$ 上的有限可加测度自然是超可数可加的，要证明它可数可加，只要再证明它次可数可加：即若 $\uplus_n A_n$ 是 $\mathcal{A}(\mathcal{S})$ 中的可数不交并，则 $\mu(\uplus_n A_n)\leq\sum_n\mu(A_n)$。记住 $\uplus_n A_n$ 以及所有 $A_n$ 现在都是 $\mathcal{A}(\mathcal{S})$ 中的元素，所以 $\uplus_n A_n = \uplus_{j=1}^N E_j$，其中 $E_j\in\mathcal{S}$。于是
$$E_j = \uplus_n (A_n\cap E_j)=\uplus_n\uplus_{i=1}^{N_n}E_i^n\cap E_j.$$
利用 $\mu$ 在 $\mathcal{S}$ 上的次可数可加性有
$$\mu(E_j)\leq \sum_n\sum_{i=1}^{N_n}\mu(E_i^n\cap E_j).$$
再利用 $\mu$ 在 $\mathcal{A}(\mathcal{S})$ 上的有限可加性有
$$\sum_{i=1}^{N_n}\mu(E_i^n\cap E_j)=\mu(A_n\cap E_j).$$
于是
$$\mu(\uplus_j E_j)=\sum_{j=1}^N\mu(E_j)\leq\sum_{j=1}^N\sum_{n=1}^\infty\mu(A_n\cap E_j)=\sum_{n=1}^\infty\sum_{j=1}^N\mu(A_n\cap E_j)=\sum_{n=1}^\infty\mu(A_n).$$
即为所证。

:::{.theorem .unnumbered}
由单调右连续的函数 $F$ 给出的半代数 $\mathcal{S}=\{(a,b]\ -\infty\leq a<b\leq\infty\}$ 上的 Stieltjes 测度是次可数可加的，因而由上面引理它给出 $\mathcal{A}(\mathcal{S})$ 上的可数可加测度。
:::

**Todd-Kemp 的精彩证明讲解**：设 $(a,b]=\uplus_{i=1}^\infty (a_i, b_i]$，我们要证明 $$F(b)-F(a)=\mu((a, b])\leq\sum_{i=1}^\infty\mu((a_i,b_i])=\sum_{i=1}^\infty (F(b_i)-F(a_i)).$$
我们可以先假设 $a,b$ 都是有限的。

**不要幻想可以给区间 $(a_i,b_i]$ 之间按照大小排顺序，它们可能有无穷多个聚点**。

**想法是把 $(a, b]$ 缩小一点变成 $[a+\delta, b]$，把 $(a_i,b_i]$ 放大一点变成 $(a_i,b_i+\delta_i)$，这样可以使用紧集的有限开覆盖性质**。从而存在 $N$ 使得前 $N$ 个开区间就足以覆盖 $[a+\delta,b]$：
$$[a+\delta,b] \subseteq \cup_{j=1}^N (a_j, b_j+\delta_j).$$
现在 $\mu$ 作为一个有限可加测度，由于 $(a+\delta, b]$ 被 $\cup_{j=1}^N (a_j, b_j+\delta_j]$ 覆盖，因而必然有
$$\mu((a+\delta, b])\leq \sum_{j=1}^N \mu((a_j, b_j+\delta_j])\leq\sum_{j=1}^\infty \mu((a_j, b_j+\delta_j]).$$
上式左边等于 $F(b)-F(a+\delta)$，$\delta$ 是任意正数，所以令其趋于 0 并利用 $F$ 的右连续有 $F(a+\delta)\downarrow F(a)$，所以上式变为
$$\mu((a, b])\leq\sum_{j=1}^\infty\mu((a_j, b_j+\delta_j])=\sum_{j=1}^\infty \mu((a_j, b_j]) + \sum_{j=1}^\infty \mu((b_j, b_j+\delta_j]).$$
注意到 $\delta_j$ 也是任意的，并且 $F$ 右连续，所以对任何 $\epsilon>0$ 我们可以取 $\delta_j$ 足够小，使得
$F(b_j+\delta_j)- F(b_j) < \epsilon/2^j$。于是
$$\mu((a, b])\leq\sum_{j=1}^\infty\mu((a_j, b_j+\delta_j])=\sum_{j=1}^\infty \mu((a_j, b_j]) + \epsilon.$$
由 $\epsilon$ 任意性定理得证。


# 3.2 Outer Measure

这一节介绍了外测度的概念。

如果我们有一个集合族 $\mathcal{A}$ ($\mathcal{A}$ 一般是个代数)，以及其上的函数 $\mu:\ \mathcal{A}\to[0,+\infty]$，则我们可以定义 $2^{\Omega}$ 上的外测度 $\mu^\ast$ 为
$$\mu^\ast(E) = \inf\left\{\sum_{n=1}^\infty\mu(E_n),\ E_n\in\mathcal{A}, E\subset\bigcup_{n=1}^\infty E_n\right\}.$$
外测度 $\mu^\ast$ 满足：

> 1. $\mu^\ast(\emptyset)=0$。
> 2. 单调性。
> 3. 次可数可加性。

Todd Kemp 视频里面提到 $\mu^\ast$ 可以用来区别有限可加测度和预测度：


> 1. 如果 $(\mu, \mathcal{A})$ 是预测度，则**在 $\sigma(\mathcal{A})$ 上有 $\mu(E)\leq\mu^\ast(E)$，并且在 $\mathcal{A}$ 上有 $\mu=\mu^\ast$**。
> 2. 如果 $(\mu, \mathcal{A})$ 是有限可加测度，则**在 $\mathcal{A}$ 上有 $\mu(E)\geq\mu^\ast(E)$**。

# 4.1 Outer Pseudo-Metric

这一节介绍了 Carathéodory 测度扩张定理。设 $(\Omega,\mathcal{A},\mu)$ 是一个预测度空间。即 $\mu$ 是定义在代数 $\mathcal{A}$ 上的可数可加测度。我们将把它扩充为 $\sigma(\mathcal{A})$ 上的可数可加测度。

定义外测度 $\mu^\ast:2^\Omega\to[0,\infty]$ 为
$$\mu^\ast(E)=\inf\left\{\sum_{n=1}^\infty\mu(A_n):E\subseteq\bigcup_{n=1}^\infty A_n,A_n\in\mathcal{A}\right\}$$

:::{.theorem .unnumbered}
存在 $\sigma$- 域 $\mathcal{M}\supset\mathcal{A}$ 使得 $\mu^\ast\mid_{\mathcal{M}}$ 是可数可加测度。
:::

:::{.note}
Todd Kemp 评论说，$\mathcal{M}$ 最大可以是多大是一个非常深刻的技术问题。
:::

标准的证明途径是规定
$$\mathcal{M}=\{E\in\Omega\mid \mu^\ast(T)=\mu^\ast(T\cap E)+\mu^\ast(T\cap E^c),\forall T\in\Omega\}.$$

这里介绍了 Driver 的方法。这个方法稍微有一点缺陷，它要求 $\mu:\mathcal{A}\to[0,\infty)$ 是一个有限测度。稍后也可以扩展到 $\sigma$- 有限测度。在概率论中这足够了。


# 5.1 Radon Measures

本讲介绍了实直线上的 Radon 测度等价于 Stieltjes 测度。

Radon 测度是指对任何紧集 $K$ 有 $\mu(K)<\infty$ 的测度。这种测度的分布函数必然是单调、右连续的，从而根据之前介绍的预测度和测度扩张定理给出了实直线上的一个可数可加测度。



# 6.1 Random Variables Motivation

本节介绍了随机变量，分布函数的概念。样本空间 $\Omega$ (modelling space) 是难以接触到的，我们对其的观测是通过随机变量来进行的。

随机变量 $X$ 的分布函数为 $F(t) = \mathbb{P}(X\leq t),\, t\in\overline{\mathbb{R}}$。$F(t)$ 是单调递增且右连续的。

# 7.2 Riemann-Stieltjes Integration

无要点。


# 11.1 The Radon-Nikodym Theorem

本讲介绍了 Radon-Nikodym 定理，不过没有给出证明。

**Motivation**: 设 $\mu,\nu$ 是两个测度，是否存在非负可测函数 $\rho$ 使得 $\nu(A)=\int_A\rho\du$ 对任何可测集 $A$ 成立？

**必要条件**：$\mu(A)=0\Rightarrow\nu(A)=0$。这时我们称 $\nu$ 关于 $\mu$ **绝对连续**，记作 $\nu\ll\mu$。

此条件同样也是充分的：若 $\nu$ 关于 $\mu$ 绝对连续，则存在 $\rho$ 使得 $\rho=\dfrac{\mathrm{d}\nu}{\mathrm{d}\mu}$。

**奇异连续测度的例子**：Cantor 函数 (devil staircase)。[YouTube 科普](https://www.youtube.com/watch?v=dQXVn7pFsVI)。此函数没有点质量，也没有密度函数，但是确实给出一个全质量为 1 的概率测度。

+ 此函数是连续递增的，所以是一个分布函数。
+ 此函数是连续的，所以没有点质量，即单个点的测度是 0。
+ 此函数是奇异的，因为它在除去 Cantor 集对应的点之外几乎处处是常数。




# 14.1 Dynkin's Multiplicative Systems Theorem

本讲介绍了 Dynkin $\pi-\lambda$ 定理的函数形式的版本。

> **定义**：设 $(\Omega,\mathcal{F})$ 是一个可测空间，称 $f$ 是一个关于 $\mathcal{F}$ 可测的有界函数，如果存在 $M>0$ 使得 $|f|\leq M\ae$ 成立。记 $\mathbb{B}(\Omega,\mathcal{F})$ 为全体这样的有界函数构成的向量空间。若 $\{f_n\}\in\mathbb{B}(M,\mathcal{F})$ 满足 $|f_n|\leq M\ae$ 并且 $f_n\to f\ae$，就称 $f_n$ **一致有界收敛到 $f$**。

> **定理**：设 $\mathcal{I}\subseteq\mathcal{F}$ 是一个 $\pi$- 系，设 $\mathbb{H}(\mathcal{I})\subseteq\mathbb{B}(\Omega,\mathcal{F})$ 满足如下条件：
>
> 1. $\mathbb{H}(\mathcal{I})$ 是一个向量空间。
> 2. $\mathbb{H}(\mathcal{I})$ 包含 $\Omega$ 上的常函数 $\ind$。
> 3. 若 $\{f_n\}$ 是 $\mathbb{H}(\mathcal{I})$ 中的可测函数序列，且 $f_n$ 一致有界收敛到 $f$，则 $f\in\mathbb{H}(\mathcal{I})$。
> 4. $\mathbb{H}(\mathcal{I})$ 包含 $\mathcal{I}$ 中的所有指标函数 $\ind_{A},\,A\in\mathcal{I}$。
>
> **结论**：$\mathbb{H}(\mathcal{I})$ 包含所有关于 $\sigma(\mathcal{I})$- 可测的有界函数。

**证明概要**：设
$$\mathcal{A}=\{A\in\mathcal{F}:\ \ind_A\in\mathbb{H}(\mathcal{I})\}.$$

+ 由 2 $\Omega\in\mathcal{A}$。
+ 由 1, 2 结合有若 $A\in\mathcal{A}$ 则 $A^c\in\mathcal{A}$。
+ 由 3 有若 $\{A_n\}\in\mathcal{A}$，$A_n\uparrow$ 则 $\cup_{n}A_n\in\mathcal{A}$。

于是 $\mathcal{A}$ 是一个 $\lambda$- 系，并且由 4 有 $\mathcal{A}\supseteq\mathcal{I}$，从而 $\mathcal{A}\supseteq\sigma(\mathcal{I})$。于是 $\mathbb{H}(\mathcal{I})$ 包含所有形如 $\ind_A,\,A\in\sigma(\mathcal{I})$ 的指标函数，也就包含所有 $\sigma(\mathcal{I})$ 上的简单可测函数，从而包含它们的所有一致有界极限，即全体 $\sigma(\mathcal{I})$- 可测的有界函数。

**补充**：条件 3 其实可以减弱为 $\{f_n\}$ 是非负可测函数序列，且 $f_n\uparrow f$，$f$ 有界。这样我们首先得到 $\mathbb{H}(\mathcal{I})$ 包含所有 $\sigma(\mathcal{I})$ 上的非负简单函数，因而包含所有的非负有界可测函数，而对任何一般的 $\sigma(\mathcal{I})$ 有界可测函数 $f$，$f^{\pm}$ 都是 $\sigma(\mathcal{I})$ 上的非负有界可测函数，因而 $f^{\pm}$ 和它们的差 $f=f^+-f^-$ 都属于 $\mathbb{H}(\mathcal{I})$。

# 14.2 Product Measure

本讲介绍了乘积测度的构造。**记住乘积测度的构造是用到重积分的**。

**可测空间的乘积**：设 $(\Omega_1,\mathcal{F_1}),\,(\Omega_2,\mathcal{F_2})$ 是两个可测空间，其乘积空间定义为 $(\Omega_1\times\Omega_2,\,\sigma(\mathcal{F}_1\times\mathcal{F}_2))$。其中 $\mathcal{F}_1\otimes\mathcal{F}_2=\sigma(\mathcal{F}_1\times\mathcal{F}_2)$ 是由所有形如 $\{A_1\times A_2, A_i\in\mathcal{F}_i\}$ 的集合生成的 $\sigma$- 域。

$\mathcal{F}_1\otimes\mathcal{F}_2$ 还有一种等价的刻画：它是使得投影映射 $\pi_i(\omega_1,\omega_2)=\omega_i$ 均可测的最小 $\sigma$- 域。

> **引理**：随机向量 $f:(\Omega, \mathcal{F})\to(\R^d,\B(\R^d))$ 是可测的，当且仅当其每个分量 $f_i$ 是可测的。

$\Rightarrow$: 每个 $f_i=\pi_i\circ f$ 作为两个可测映射的复合当然是可测的。

$\Leftarrow$: 本质是证明如果每个 $X_i$ 都是随机变量，则 $X=(X_1,\ldots,X_n)$ 是随机向量。对任何形如 $E=E_i\times_{j\ne i}\B_i(\R)$ 的集合，$X^{-1}(E) =\{\omega\in\Omega: X_i(\omega)\in E_i\}$ 是可测集，而这样的 $E$ 生成了 $\B(\R^d)$，所以 $X^{-1}(E)$ 对任何 $E\subset\B(\R^d)$ 都可测。结论得证。

如果每个 $(\Omega_i,\F_i)$ 还是测度空间，其上的测度为 $\mu_i$，则我们可以在 $(\Omega_1\times\Omega_2,\F_1\otimes\F_2)$ 上定义测度 $\mu_1\otimes\mu_2$ 使得 $(\mu_1\otimes\mu_2)(E_1\times E_2)=\mu_1(E_1)\mu_2(E_2)$ 对任何 $E_i\in\F_i,\, i=1,2$ 成立。

实际上我们可以让这个乘积测度满足

$$\int_{\Omega_1\times\Omega_2}f_1\otimes f_2\mathrm{d}(\mu_1\otimes\mu_2) = \int_{\Omega_1}f_1\mathrm{d}\mu_1\cdot\int_{\Omega_2}f_2\mathrm{d}\mu_2.$$

考虑满足如下条件的乘积空间 $\Omega_1\times\Omega_2$ 上的可测函数 $f$:

> 1. $\omega_1\to f(\omega_1,\omega_2)$ 对任何 $\omega_2$ 都是可测函数。
> 2. $\omega_2\to f(\omega_1,\omega_2)$ 对任何 $\omega_1$ 都是可测函数。
> 3. $\omega_1\to \int_{\Omega_2}f(\omega_1,\omega_2)\mu_2(\mathrm{d}\omega_2)$ 是 $\F_1/\B(\overline{\R})$ 可测函数。注意这个积分值可能是无穷。
> 4. $\omega_2\to \int_{\Omega_1}f(\omega_1,\omega_2)\mu_1(\mathrm{d}\omega_1)$ 是 $\F_2/\B(\overline{\R})$ 可测函数。
> 5. $$\int_{\Omega_1}\left(\int_{\Omega_2}f(\omega_1,\omega_2)\mu_2(\mathrm{d}\omega_2)\right)\mu_1(\mathrm{d}\omega_1)=\int_{\Omega_2}\left(\int_{\Omega_1}f(\omega_1,\omega_2)\mu_1(\mathrm{d}\omega_1)\right)\mu_2(\mathrm{d}\omega_2).$$

容易验证对所有形如 $f_1\otimes f_2$ 的函数它们满足上面的性质。它们构成一个乘法系，包含所有形如 $\ind_{E_1}\otimes\ind_{E_2}$ 的函数，然后上面的条件对函数列的有界极限仍然成立。根据函数版本的 Dynkin 定理，上面的条件对所有有界可测函数，或者非负可测函数都成立。

由此我们可以定义乘积空间中的测度为

$$\mu(E)=\int_{\Omega_1}\left(\int_{\Omega_2}\ind_{E}\mu_2(\mathrm{d}\omega_2)\right)\mu_1(\mathrm{d}\omega_1)=\int_{\Omega_2}\left(\int_{\Omega_1}\ind_{E}\mu_1(\mathrm{d}\omega_1)\right)\mu_2(\mathrm{d}\omega_2).$$
不难验证这样定义的积分是有限可加的 (积分的线性性质)，可以取单调上升的极限，所以是可数可加的，并且当 $E$ 形如 $E_1\times E_2$ 时有 $\mu(E)=\mu_1(E_1)\mu_2(E_2)$，从而确实给出符合要求的乘积测度。



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

# 17.2 Convolution

本讲介绍了概率测度之间的卷积。

> **定义**：两个概率测度 $\mu,\nu$ 之间的卷积定义为
> $$\mu\ast \nu(B) = \int_{\R^d\times\R^d}\ind_B(x+y)\mu\otimes\nu(\dx\dy)=\int_{\R^d}\mu(B-y)\vdx{y}.$$

# 18.1 Strong Law of Large Numbers, Part 1

本讲介绍了 Kolmogrov 强大数定理的表述，以及证明思想。

基本思想是利用截断的序列与原序列是尾等价的，先对截断的序列证明结论，再回到原序列。


> **强大数定理**：设 $\{X_n\}$ 是 $\iid$ 的 $L^1$ 序列且 $\E [X_n]=a$，则 $\dfrac{S_n}{n}\to a, \ae$。

**重要技巧**：同一个概率空间上的两个序列 $\{X_n\},\,\{Y_n\}$ 称作是尾等价的，如果
$\sum_{n=1}^\infty\mathbb{P}(X_n\ne Y_n)<\infty$。

这样根据 Borel-Cantelli 引理，$\{X_n\ne Y_n,\io\}$ 是零测集，从而 $X_n=Y_n$ 最终会几乎处处成立，从而二者的极限行为一致。即如果 $b_n\uparrow\infty$，则
$$\lim\limits_{n\to\infty}\dfrac{1}{b_n}\sum_{j=1}^n X_n = X \Leftrightarrow \lim\limits_{n\to\infty}\dfrac{1}{b_n}\sum_{j=1}^n Y_n = X.$$

**截断的序列和原序列是尾等价的**

> **引理**：若 $X\in L^1,\,\epsilon>0$，则 $$\sum_{n=1}^\infty\mathbb{P}(X\geq n\epsilon) \leq\frac{1}{\epsilon}\mathbb{E}|X|.$$

值得与 Markov 不等式比较一下，这个不等式更强。

**证明概要**：只要证明结论对 $\epsilon=1$ 成立即可。而这非常显然：

$$X\geq\lfloor X\rfloor = \sum_{n=1}^\infty \ind_{\{n\leq X\}}.$$

> **推论**：若 $\{X_n\}$ 是 $\iid$ 的 $L^1$ 序列，令 $Y_n = X_n\ind_{\{|X_n|\leq n\}}$，则 $\{Y_n\}$ 与 $\{X_n\}$ 是尾等价的。

于是接下来的任务就是证明 $S_n^Y = \dfrac{Y_1+\cdots+Y_n}{n}\to a,\,\ae$。


# 18.2 Kolmogorov's Convergence Criterion

本讲介绍了 Kolmogrov 收敛判定：独立随机变量序列如果是 $L^2$ 意义下的 Cauchy 序列，则也是逐点收敛意义下的 Cauchy 序列。

在上一讲中，我们通过把 $L^1$ 的序列 $\{X_n\}$ 取截断得到 $Y_n=X_n\ind_{\{|X_n|\leq n\}}$，这是一个与 $\{X_n\}$ 尾等价的序列。从而只要证明 $\frac{\sum_{k=1}^n Y_k}{n}\to a$。为此我们分两步：

1. 证明 $\frac{\sum_{k=1}^n (Y_k-\E Y_k)}{n}\to 0$。
2. 证明 $\E Y_n\to a$，从而 $\frac{\sum_{k=1}^n\E Y_k}{n}\to a$。结合上一点就证明了强大数定理。

2 用控制收敛定理很容易得出，所以关键是证明 1。

我们首先证明 $\sum_{k=1}^n \frac{Y_k-\E Y_k}{n}$ 是个收敛的序列，然后用下一讲介绍的 Kronecker 引理来得出 $\frac{\sum_{k=1}^n (Y_k-\E Y_k)}{n}\to 0$。

> **Kolmogrov 收敛判定**：若 $\iid$ 序列 $Z_n$ 满足 $\sum\mathrm{Var}(Z_n)<\infty$ 则 $\sum(Z_n-\E Z_n)$ 几乎处处收敛。

**证明概要**：我们可以不妨假设 $\E Z_n=0$，则问题变为若 $\iid$ 序列 $\sum\E |Z_n|^2$ 收敛，则 $\sum Z_n$ 几乎处处收敛。

记 $S_n=\sum_{k=1}^nZ_k$，利用 Markov 不等式不难有
$$\P(|S_n|\geq\epsilon)\leq \frac{1}{\epsilon^2}\E[S_n^2].$$
有意思的是，上面的不等式中在左边把 $S_n$ 换成 $S_n^\ast=\max_{1\leq i\leq n}|S_n|$ 仍然成立：

> **Kolmogrov 极大不等式**：对任何正数 $\epsilon>0$ 有
> $$\P(S_n^\ast\geq\epsilon)\leq \frac{1}{\epsilon^2}\E[S_n]^2.$$

证明：记 $\tau=\inf\{j\in\mathbb{Z}_{\geq1}:\ |S_j|\geq\epsilon\}$。则 $\P(S_n^\ast\geq\epsilon)=\P(\tau\leq n)$。
$$\E[S_n^2:\ S_n^\ast\geq\epsilon]=\E[S_n^2:\ \tau\leq n]=\sum_{k=1}^n\E[S_n^2:\ \tau=k].$$
使用技巧 $S_n^2=(S_k + S_n - S_k)^2$ 我们有
$$\E[S_n^2:\ \tau=k] = \E[S_k^2 + (S_n-S_k)^2:\ \tau=k] + \E[2S_k(S_n-S_k):\ \tau=k].$$
注意到第二项
$$\E[2S_k(S_n-S_k):\ \tau=k] = \E[2S_k\ind_{\{\tau=k\}}(S_n-S_k)]=2\E[S_k\ind_{\{\tau=k\}}]\cdot\E[S_n-S_k]=0.$$
所以
$$\E[S_n^2]\geq\sum_{k=1}^n\E[S_n^2:\ \tau=k] \geq \sum_{k=1}^n\E[S_k^2:\ \tau=k]\geq\epsilon^2\sum_{k=1}^n\E\ind_{\{\tau=k\}}=\epsilon^2\P(\tau\leq n)=\epsilon^2 \P(S_n^\ast\geq\epsilon).$$

回到 Kolmogrov 收敛定理的证明。

Kolmogrov 极大不等式告诉我们

$$\P(\max_{n\leq k \leq m}|S_k - S_n|\geq\epsilon)\leq \frac{1}{\epsilon^2}\E|S_m-S_n|^2=\frac{1}{\epsilon^2}\sum_{k=n}^m \E Z_k^2.$$
令 $m\to\infty$ 我们有
$$\P(\sup_{k\geq n}|S_k - S_n|\geq\epsilon)\leq\frac{1}{\epsilon^2}\sum_{k=n}^\infty \E Z_k^2.$$
于是
$$\P(\sup_{k,j\geq n}|S_k - S_j|\geq\epsilon)\leq\frac{2}{\epsilon^2}\sum_{k=n}^\infty \E Z_k^2.$$
所以随机变量序列 $\delta_n = \sup_{k,j\geq n}|S_k - S_j|$ 依测度收敛到 0。但是 $\delta_n$ 是一个单调下降的非负序列，它必然有一个几乎处处收敛的极限 $\delta$，$\delta$ 也非负。$\delta$ 依测度收敛到 0，又几乎处处收敛到 $\delta$，那必须 $\delta$ 几乎处处为 0，即 $\{S_n\}$ 是 Cauchy 序列。

# 19.1 Strong Law of Large Numbers, Part 2

介绍了证明强大数定理的第二个工具：Kronecker 引理。

> **Kronecker 引理**：若 $\{b_k\}\uparrow\infty$ 且 $\lim\limits_{n\to\infty}\sum\limits_{k=1}^n\dfrac{x_k}{b_k}$ 存在，则 $\lim\limits_{n\to\infty}\dfrac{1}{b_n}\sum\limits_{k=1}^n x_k=0$。

**证明概要**：记 $u_n=\sum\limits_{k=1}^n\dfrac{x_k}{b_k},\,u_0=0$，则 $\lim\limits_{n\to\infty}u_n=s$ 存在。
$$\begin{align*}\frac{1}{b_n}\sum_{k=1}^n x_k&=\frac{1}{b_n}\sum_{k=1}^n(u_k-u_{k-1})b_k=\frac{1}{b_n}\sum_{k=1}^nu_kb_k-\frac{1}{b_n}\sum_{k=0}^{n-1}u_kb_{k+1}\\&=u_n-\frac{b_n-b_1}{b_n}s-\sum_{k=1}^{n-1}\frac{b_{k+1}-b_k}{b_n}(u_k-s).\end{align*}$$
而最后一个余项的绝对值小于等于
$$\begin{align*}\sum_{k=1}^{n-1}\frac{b_{k+1}-b_k}{b_n}|u_k-s|=\left(\sum_{k=1}^{N}+\sum_{k=N+1}^{n-1}\right)\frac{b_{k+1}-b_k}{b_n}|u_k-s|\end{align*}$$
这里对 $n>N$ 有 $|u_n-s|<\epsilon$ 成立。

当 $n\to\infty$ 时第一个和项是一个有界的值除以 $b_n$ 从而趋于 0。第二个和项显然不大于 $\dfrac{b_n}{b_n}\epsilon$，所以这个余项可以任意小。

> **引理**：$Y_n' = Y_n/n$ 满足 Kolmogrov 收敛判定。

**证明概要**：
$$\begin{align*}\sum_{n=1}^\infty\mathrm{Var}(Y_n')&=\sum_{n=1}^\infty\frac{\mathbb{E}Y_n^2 - (\mathbb{E}Y_n)^2}{n^2}\leq \sum_{n=1}^\infty\frac{\mathbb{E}Y_n^2}{n^2}\\&=\sum_{n=1}^\infty\frac{\mathbb{E}X_n^2\ind_{\{|X_n|\leq n\}}}{n^2}\\&=\mathbb{E}\left[|X_1|^2\sum_{n=1}^\infty\frac{1}{n^2}\ind_{\{|X_1|\leq n\}}\right]\\&\leq\mathbb{E}\left[|X_1|^2\sum_{n=1}^\infty\frac{1}{n^2},\ |X_1|\leq 2\right] + \mathbb{E}\left[|X_1|^2\sum_{n=1}^\infty\frac{1}{n^2}\ind_{\{|X_1|\leq n\}},\ |X_1|>2\right]\\&\leq4\sum_{n=1}^\infty\frac{1}{n^2}+\mathbb{E}\left[|X_1|^2\sum_{n=1}^\infty\frac{1}{n^2}\ind_{\{|X_1|\leq n\}},\ |X_1|>2\right] .\end{align*}$$
为什么要用 $|X_1|$ 是否大于 2 把它分成两部分？这里其实可以用任何大于等于 2 的数，不过 2 已经足够了，这样做的原因下面就会看到。

现在第一项是有限的，我们只要说明第二项也有限即可。你可能想把 $\ind_{\{|X_1|\leq n\}}$ 扔掉，但是注意强大数定律中 $|X_1|$ 是 $L^1$ 可积的，未必是 $L^2$ 可积的，所以扔掉是不行的。我们得把 $\sum_{n=1}^\infty\frac{1}{n^2}\ind_{\{|X_1|\leq n\}}$ 这个东西估计一下。注意到对任何正整数 $k$，$\sum_{n=k}^\infty\frac{1}{n^2}$ 就是 $\frac{1}{\lfloor t\rfloor^2}$ 在 $[k,\infty)$ 上的积分， 所以当 $x>2$ 时
$$\begin{align*}
\sum_{n=1}^\infty\frac{1}{n^2}\ind_{\{x\leq n\}}&=\sum_{n\geq x}^\infty\frac{1}{n^2}=\sum_{n= \lceil x\rceil}^\infty\frac{1}{n^2}\\&=\int_{\lceil x\rceil}^\infty\frac{1}{\lfloor t\rfloor^2}\,\mathrm{d}t\\&\leq \int_{\lceil x\rceil}^\infty\frac{1}{(t-1)^2}\,\mathrm{d}t\\&=\frac{1}{\lceil x\rceil - 1}\\&\leq\frac{1}{x-1}<\frac{2}{x}.\end{align*}$$
所以取 $x>2$ 主要是为了最后一步的 $\frac{1}{x-1}<\frac{2}{x}$。

于是我们就证明了在 $|X_1|>2$ 上有
$$\sum_{n=1}^\infty\frac{1}{n^2}\ind_{\{|X_1|\leq n\}}<\frac{2}{|X_1|}.$$
两边乘以 $|X_1|^2$ 并积分，则
$$\mathbb{E}\left[|X_1|^2\sum_{n=1}^\infty\frac{1}{n^2}\ind_{\{|X_1|\leq n\}},\ |X_1|>2\right] < 2\mathbb{E}|X_1|.$$
这就证明了结论。

# 19.2 Renewal Theory

本讲以灯泡寿命为例子，介绍了强大数定理在更新理论中的应用。

设灯泡的寿命互相独立，且服从某个共同的非负随机变量 $X,\ \E X<\infty$。设长度为 $t$ 的时刻内需要报废的灯泡数最多为 $N_t$，即 $S_{N_t}\leq t < S_{N_t+1}$。则
$$\lim_{t\to\infty}\frac{N_t}{t}\to\frac{1}{\E X},\quad \ae$$
实际上由定义有
$$\frac{S_{N_t}}{N_t}\leq \frac{t}{N_t} < \frac{S_{N_t+1}}{N_t}.$$
如果我们能证明 $t\to\infty$ 时同样有 $N_t\to\infty,\ae$，则利用强大数定理就有 $S_{N_t}/N_t\to\E X$，从而结论得证。

我们考虑 $\Omega_1=\{\omega\in\Omega\mid S_n(\omega)<\infty,\ \forall n\geq1\}$。$\Omega_1$ 作为一列递减的测度均为 1 的集合列的极限，测度显然也是 1。我们只要证明在 $\Omega_1$ 上有 $S_{N_t}/N_t\to\E X$ 成立。

首先 $N_t$ 随着 $t$ 递增是没有问题的，如果它对某个 $\omega$ 是有界的，则 $N_t(\omega)\leq M$ 对所有 $t$ 成立。即不管 $t$ 是多少都有 $S_M\leq t < S_{M+1}$，这只能要求 $S_{M+1}(\omega)=\infty$，从而 $\omega$ 不属于 $\Omega_1$。

一个有意思的引理：

> **引理**：设 $X\in L^1$，如果 $\{X_n\}$ 是一列 $\iid$ 且服从和 $X$ 同样的分布，则 $\dfrac{X_n}{n}\to0,\ae$。

老技巧，只要证明 $\P(\{|X_n|\geq n\epsilon,\ \io\})=0$ 即可。根据 Borel-Cantelli 引理，只要证明 $\sum_{n=1}^\infty\P(|X_n|\geq n\epsilon)<\infty$ 即可，而这在 18.1 中已经证明过了。


# 24.1 Complex Integration and Dynkin's Theorem

无要点

# 24.2 Characteristic Function

本讲介绍了随机变量的特征函数及其基本性质。整体内容比较基础。

# 25.3 The Continuity Theorem

本讲介绍了测度弱收敛的连续性定理。

> **定理**：如果 $\{\mu_n\}_{n=1}^\infty$ 是一列 $(\R^d,\B(\R^d))$ 上的概率测度。假设极限 $\varphi(t) = \lim\limits_{n\to\infty}\hat{\mu_n}$ 存在，并且 $\varphi(t)$ 在 $t=0$ 处连续，则存在概率测度 $\mu$ 使得 $\hat{\mu}=\varphi$，并且 $\mu_n\rightarrow_{w}\mu$。

> **引理**：对两个概率测度 $\mu,\nu$ 有 $$\int_{\R^d}\hat{\mu}(x)\vdx{x}=\int_{\R^d}\hat{\nu}(y)\udx{y}.$$

直接 Fubini 即可。

> **引理**： $$\int_{\R^d}[1-\mathrm{Re}\,\hat{\mu}(x)]\vdx{x}=\int_{\R^d}[1-\mathrm{Re}\,\hat{\nu}(y)]\udx{x}.$$

在前一个引理中两边取实部，然后被 1 减去即可。


> **推论**：假设 $\rho$ 是一个 $\R^d$ 上的概率测度，其支集位于闭的单位球 $\bar{B}_1$ 内。设 $M>0$ 使得 $|\hat{\rho}(t)|\leq1/2$ 对任何 $|t|\geq M$ 成立，则对任何 $(\R^d,\B(\R^d))$ 上的概率测度 $\mu$ 和正数 $\alpha>0$ 有
$$\mu\{x\in\R^d:\ |x|\geq\alpha\}\leq 2\int_{\bar{B}_1}[1-\mathrm{Re}\,\hat{\mu}(\frac{M}{\alpha}x)]\rho(x)\dx.$$


# 31.1 Orthogonal Projections

无要点

# 33.1 Probability Kernels, Part 1

本讲引入了概率核的概念。

设 $(S_i,\B_i), i=1,2$ 是两个可测空间，一个概率核 $Q(x, B):(S_1,\B_2)\to[0,1]$ 是一个二元函数，满足：

1. 对任何 $x\in S_1$，$Q(x,\cdot):\B_2\to[0,1]$ 是 $(S_2,\B_2)$ 上的概率测度。
2. 对任何 $B\in \B_2$，$Q(\cdot, B):S_1\to[0,1]$ 是 $(S_1,\B_1)$ 上的可测函数。

> **引理**：假设 $f(x,y)\in (S_1\times S_2, \B_1\otimes\B_2)$ 是乘积空间上的可测函数，并且是有界的或者非负的，则积分 $$x\to\int_{S_2}f(x,y)Q(x,\pd{y})$$ 是关于 $x$ 的可测函数。

此引理不难从简单函数 $\ind_{B_1\times B_2}(x,y)=\ind_{B_1}(x)\ind_{B_2}(y)$ 出发，使用函数形式的 Dynkin 引理得到。

由此对任何 $(S_1,\B_1)$ 上的测度 $\mu$，我们可以定义乘积空间 $(S_1\times S_2, \B_1\otimes\B_2)$ 上的乘积测度 $\mu\otimes Q$，这个乘积测度是随 $x$ 变化而变化的：
$$\mu\otimes Q(E)=\int_{S_1}\mu(\pd{x})\int_{S_2}\ind_{C}(x,y)Q(x,\pd{y}).$$
不过这真的是一个概率测度吗？你可以用积分的线性性质立刻看出它是有限可加的，并且利用积分项有界和控制收敛定理立刻看出它是可数可加的，所以确实是个概率测度。

有了概率核的乘积测度，我们自然要研究对这种测度的积分。由于这个测度本身就是通过对示性函数积分来定义的，所以其上的积分也具有类似的性质：

> **引理**：假设 $f(x,y)$ 是乘积空间的可测函数，并且是有界或者非负的，则
> $$\int_{S_1\times S_2}f\pd{(\mu\otimes Q)} = \int_{S_1}\mu(\pd{x})\int_{S_2}f(x,y)Q(x,\pd{y}).$$

后面花了很大力气证明当 $Q(x, \cdot)=\widetilde{Q}(x,\cdot)$ 对几乎处处的 $x$ 成立时有 $\mu\otimes Q=\mu\otimes\widetilde{Q}$。没仔细看。

# 33.2 Regular Conditional Distributions

本讲使用概率核给出了 $\E[f(X, Y)\mid X=x]$ 这种条件期望的严格定义。

> **定理**：设 $(\Omega,\F,\P)$ 是一个概率空间，$(S_i,\B_i),\,i=1,2$ 是两个可测空间，$X:(\Omega,\F)\to(S_1,\B_1),\,Y:(\Omega,\F)\to(S_2,\B_2)$ 是两个随机变量。于是 $(X,Y):(\Omega,\F)\to(S_1\times S_2,\,\B1\otimes\B_2)$ 是随机向量。记 $\mu_{X,Y}$ 为此随机向量在 $(S_1\times S_2,\,\B1\otimes\B_2)$ 上 push forward 给出的测度，$\mu_X$ 是 $X$ 在 $(S_1,\B_1)$ 上 push forward 给出的测度。如果存在概率核 $Q(x,B)$ 使得 $$\mu_{X,Y}=\mu_X\otimes Q.$$
>
> 则对任何 $f\in L^1(S_1\times S_2,\B1\otimes\B_2)$ 有
> $$\E[f(X,Y)\mid X = x] = \int_{S_2}f(x,y)Q(x, \pd{y}).$$

这里需要解释 $\E[f(X,Y)\mid X = x]$ 这个记号的含义。这里其实引用了条件期望 (后面才会讲到) 的性质：$\E[f(X,Y)\mid X]$ 是一个关于 $\sigma(X)$ 可测的随机变量，从而由 Doob-Dynkin 表示定理，存在可测函数 $g$ 使得 $\E[f(X,Y)\mid X] = g(X)$，所以 $\E[f(X,Y)\mid X = x] = g(x)$。这个定理说的就是
$$\E[f(X,Y)\mid X = x] = g(x) = \int_{S_2}f(x,y)Q(x, \pd{y}).$$

**证明**：怎么证明两个关于 $\sigma(X)$ 可测的函数 (几乎处处) 相等呢？我们可以给它们同时乘以 $h(x)$，这里 $h(x)$ 是任何一个关于 $\sigma(X)$ 可测的有界函数，然后证明它们对 $\mu_X$ 积分以后的值相等，则这两个可测函数必相等。

$g(x)h(x)$ 这个函数对 $\mu_X$ 积分，根据积分变量替换定理，正是 $\E[g(X)h(X)]$。而根据 $g(x)$ 的定义和条件期望的性质，
$$\E[g(X)h(X)]=\E[\E[f(X,Y)|X]h(X)] = \E[\E[f(X,Y)h(X)|X]] = \E[f(X, Y)h(X)].$$
注意右边的期望悄悄地变成了关于 $\mu_X\otimes Q$ 的积分。这是因为上式最后的等号使用了条件期望的 telescoping 性质，而 $f(X,Y)g(X)$ 是关于 $\B_1\otimes\B_2$ 可测的函数。

另一方面，$h(x)\int_{S_2}f(x,y)Q(x,\pd{y})$ 这个函数对 $\mu_X$ 积分，正是
$$\int_{S_1}\mu(\pd{x})\int_{S_2}f(x,y)h(x)Q(x,\pd{y}).$$
所以
$$\begin{align*}
\E[f(X,Y)h(X)] &= \int_{S_1\times S_2}f(x,y)h(x)\mu_{X,Y}(\pd{x}\pd{y}) \\
&= \int_{S_1\times S_2}f(x,y)h(x)\mu_X\otimes Q \\
&= \int_{S_1}\mu_X \int_{S_2}f(x,y)h(x)Q(x,\pd{y}) \\
&= \int_{S_1}\mu_X h(x)\int_{S_2}f(x,y)Q(x,\pd{y}).
\end{align*}$$
正是所要证明的。

不过在上面的证明中我们都假定了所有的可积性的前提，我们实际上需要假定 $f(x,y)$ 有界才能确保推导成立。对一般的 $f(x,y)\in L^1(S_1\times S_2,\B_1\otimes \B_2)$，我们需要用有界函数列 $f_n\to f$ 且此收敛是在 $L^1(\mu_{X,Y})$ 意义下的。由于条件期望是 contraction，所以
$$\E[f_n(X, Y)| X] \xrightarrow{L^1} \E[f(X,Y)|X].$$
此外我们已经证明了
$$\E[f_n(X, Y)| X] = \left.\int_{S_2}f_n(x,y)Q(x,\pd{y})\right|_{x=X}.$$
所以只要证明
$$\left.\int_{S_2}f_n(x,y)Q(x,\pd{y})\right|_{x=X} \xrightarrow{L^1} \left.\int_{S_2}f(x,y)Q(x,\pd{y})\right|_{x=X}.$$
即可。这个 $L^1$ 收敛的意思是对 $\mu_X$ 取积分，因此我们要估计
$$\int_{S_1}\mu(\pd{x})\int_{S_2}|f_n(x,y)-f(x,y)|Q(x,\pd{y}).$$
这不正是 $|fn-f|$ 对乘积测度的积分嘛，而我们已经知道了它是 $L^1$ 收敛的了。

所以如果我们能把一个联合分布分解为边际分布和一个概率核的乘积，则我们就得到了条件概率的一个表示。

> **问题**：$\mu_{X,Y}$ 总可以表示为 $\mu_X\otimes Q$ 的形式吗？

> **定理**：如果概率核 $Q(x, B)$ 满足
> $$\P(Y\in B | X=x) = Q(x, B)$$
> (这个条件等价于
> $$\E[h(Y) | X] = \left.\int h(y) Q(x,\pd{y})\right|_{x=X}.$$
> 对任何有界的可测函数 $h(y)$ 成立)
> 则对 $f(x,y)$ 同样有
> $$\E[f(X,Y) | X] = \left.\int f(x,y) Q(x,\pd{y})\right|_{x=X}.$$
> 成立。

这个定理可以先从 $f(x,y)=f(x)\otimes g(y)$ 形式的函数出发，然后用 Dynkin 函数系引理得到。

总结一下，至此我们讨论了：

1. 如果 $\mu_{X,Y}=\mu_X\otimes Q$，那我们就有了 $\E[f(X,Y)|X]$ 的计算方法：积分 $\int_{S_2}f(X,y)Q(X,\pd{y})$。特别地我们可以算条件概率了。
2. 反之如果我们有一个概率核给出条件概率：$\P(Y\in B | X=x) = Q(x, B)$，那么它就给出 $\mu_{X,Y}$ 的一个分解：$\mu_{X,Y}=\mu_X\otimes Q$。

本讲后面讨论了离散和连续情形概率核是什么样子的。

# 34.1 Probability Kernels, Part 2

本讲介绍了概率核的本质是 Markov 生成元，即可测函数空间上的非负线性泛函。

当有一个概率核 $Q: S_1\times \B_2\to[0, 1]$ 时，
$$f\to \int_{S_2}f(y)Q(x,\pd{y}),\quad f\in\mathbb{B}(S_2,\B_2)$$
给出了从 $L^\infty(S_2,\B_2)$ 到 $L^\infty(S_1,\B_1)$ 的线性映射 $L_Q$，$L_Q$ 满足

1. $L_Q(1)=1$。
2. 若 $f\geq 0$ 非负可测，则 $L_Q(f)\geq 0$ 也非负可测。
3. 若 $f_n\uparrow f$ 则 $L_Q(f_n)\uparrow L_Q(f)$。
4. $\|L_Q(f)\|_{\infty} \leq \|f\|_{\infty}$。

所以 $L_Q$ 是一个连续的正线性泛函？

反过来，如果有这样的一个泛函 $L$，$L$ 是否给出一个概率核 $Q$ 呢？

答案是否定的，一般来说这不成立。但是在 $(S_1,\B_1)=(S_2,\B_2)$ 的情形，这确实是对的。

> **定理**：如果 $L:\mathbb{B}(S,\B)\to\mathbb{B}(S,B)$ 满足以上四个条件，则
> $$Q(x, B) = L(\ind_B)(x)$$
> 给出一个概率核。并且 $L_Q=L$，即此概率核给出的线性泛函正是 $L$。

证明：由于 $0\leq \ind_B\leq 1$ 总是成立的，所以 $L(0)\leq L(\ind_B)\leq L(1)=1$，即 $L(\ind_B)(x)$ 对任何 $x$ 都在 $[0,1]$ 中，这符合概率的定义约束。

固定 $x$，我们需要证明 $L(\ind_B)(x) = \sum_{k=1}^\infty L(\ind_{B_k})(x)$ 对可数不交并 $B = \uplus_{k=1}^\infty B_k$ 成立。记 $f_n=\sum_{k=1}^n B_k$，则 $f_n\uparrow \ind_B$，于是 $L(f_n)\uparrow L(f)=L(\ind_B)$，即 $\sum_{k=1}^\infty L(\ind_{B_k})\uparrow L(\ind_B)$，成立！

要证明 $L = L_Q$，即对任何 $f\in\mathbb{B}(S,\B)$ 有
$$L(f) = \int_S f(y)Q(x,\pd{y})$$
成立。这个很容易从示性函数出发取极限得到。

如果 $Q_1,Q_2$ 是两个 $(S,\B)$ 到自身的概率核，则 $L_{Q_1}L_{Q_2}$ 也满足性质 1-4，因而也是由一个概率核给出：存在概率核 $Q$ 使得 $L_Q = L_{Q_1}L_{Q_2}$。我们可以把 $Q$ 明确的写出来：
$$L_Q(f) = L_{Q_1}L_{Q_2}(f)=\int_{S}Q_1(x,\pd{y})\left(\int_Sf(z)Q_2(y,\pd{z})\right).$$
这看起来很像乘积测度，实际上我们后面会讨论
$$Q_1(x,dy)Q_2(d, dz)= Q_1\otimes Q_2(x, dz)$$
的具体含义。


# 34.2 Random Dynamics

什么是随机动力系统：

有一个概率空间 $(\Omega,\F,\P)$，一个可测空间 $(R,\mathcal{G})$，以及一些 i.i.d 随机变量 $\xi_n:(\Omega,\F,\P)\to (R,\mathcal{G})$。此外设 $(S,\R)$ 是一个可测空间。

如果 $f$ 是一个 $(S, R)\to S$ 的可测函数映射满足

$$X_{n+1} = f(X_n, \xi_{n+1}) = F_n(X_0,\xi_1,\xi_2,\ldots,\xi_n),\quad F_n:S\times R^n\to S.$$
即 $f(\cdot,\xi_n)$ 是一个由随机序列 $\{\xi_n\}$ 驱动的映射，则我们就称这是一个随机动力系统。

注意 $X_n$ 由 $\xi_1\sim\xi_n$ 决定，所以 $\F_n=\sigma(X_0,X_1,\ldots,X_n) =\sigma(X_0,\xi_1,\ldots,\xi_n)$。

记 $Q_n(x,\cdot)=\mathrm{Law}f(x, \xi_n)$，则 $Q_n$ 是一个概率核。设 $L_n$ 是其 Markov 生成元。则

$$\begin{align*}\E[g(X_{n+1})|\F_n] &= \E[g(f(X_n,\xi_{n+1}))|\F_n]\\
&=\left.\E[g\circ f(x,\xi_{n+1})]\right|_{x=X_n} \\
&=\left.\int g(y)Q_{n+1}(x,\pd{y})\right|_{x=X_n}\\
&=L_{n+1}(g)(X_n).\end{align*}$$
但是 $L_{n+1}(g)(X_n)$ 是 $X_n$ 的函数，所以它关于 $\sigma(X_n)$ 是可测的，而且是有界可测，从而两边对 $\sigma(X_n)$ 这个子 $\sigma$- 域取条件期望，并注意到 $\sigma(X_n)\subset\F_n$ 有
$$\E[g(X_{n+1})|\F_n] = \E[g(X_{n+1})|X_n].$$
这正是 Markov 性质。

# 35.1 Stochastic Processes

本讲介绍了随机过程的定义，以及它们的有限维分布、滤过 (filtration)、适应 (adapted) 等概念。

# 36.1 The Markov property

我们称随机过程 $X_t:(\Omega,\F_t)\to(S_,\B)$ Markov 性质，如果对任何有界可测函数 $f\in\mathbb{B}(S,\B)$ 有

$$\E[f(X_t)|\F_s] = \E[f(X_t)|X_s],\quad \ae,\ \forall s < t.$$

Markov 过程貌似是关于过去和当前的，但实际上它也告诉了我们关于未来的信息：

> **推论**：$\E[Y|\F_s] = E[Y|X_s],\quad \forall Y\in\mathbb{B}(\Omega, \F_{\geq s})$。

这个推论的证明很有意思，要用到 Dynkin multiplicative system。

考虑形如 $Y = g_0(X_{t_0})g_1(X_{t_1})\cdots g_n(X_{t_n})$ 的函数，这里 $s =t_0<t_1<\cdots <t_n$，且每个 $g_i$ 都是有界可测的，从而 $Y$ 也是有界可测的，并且 $Y\in\F_{\geq s}$。

> **引理**：设
> $$\mathcal{M} = \{g_0(X_{t_0})g_1(X_{t_1})\cdots g_n(X_{t_n}): n\in\mathbb{Z}_{\geq0}, s=t_0<t_1<\cdots<t_n, g_j\in\mathbb{B}(S,\B)\},$$
> 则 $\mathcal{M}$ 是乘法系，且 $\sigma(M) = \F_{\geq s}$。

回到推论的证明。

设 $\mathcal{H}$ 是所有满足推论要求的函数构成的空间。我们只要证明 $\mathcal{H} \supset\mathcal{M}$。这样由于 $\mathcal{H}$ 是向量空间，包含常数 1，在有界收敛下封闭，并且包含乘法系 $\mathcal{M}$，从而根据 Dynkin 函数系引理包含所有关于 $\sigma(\mathcal{M})=\F_{\geq s}$ 可测的有界可测函数，这正是所要证明的。

$$\begin{align*}\E_{\F_s}[Y]&=\E_{\F_s}[E_{\F_{t_{n-1}}}[Y]]\\
&=\E_{\F_s}[g_0(X_{t_0})\cdots g_{n-1}(X_{t_{n-1}})h(X_{t_{n-1}})]\\
&=\E_{\F_s}[g_0(X_{t_0})\cdots \widetilde{g_{n-1}}(X_{t_{n-1}})]\\
&=\cdots\\
&=\E_{\F_s}[F(X_{s})]\\
&=F(X_s)
\end{align*}$$
再利用 $\E_{X_s}[Y]=\E_{X_s}[\E_{\F_s}[Y]]=\E_{X_s}[F(X_s)]=F(X_s)$ 即得所证。

上面是 Markov 性质的第一种刻画：将对未来可测的函数对当前和过去取条件期望，相当于只对当前取条件期望。

本讲接下来用条件独立给出了 Markov 性质的第二种刻画：

> **定理**：随机过程 $\{X_t\}$ 满足 Markov 性质当且仅当 $\F_s$ 和 $\F_{\geq s}$ 关于 $\sigma(X_s)$ 是条件独立的，即对任何有界可测函数 $Z\in\mathbb{B}(\Omega,\F_s)$，$Y\in\mathbb{B}(\Omega,\F_{\geq s})$ 有
> $$\E[ZY|X_s] = \E[Z|X_s]\cdot \E[Y|X_s].$$

注意到 $\F_s=\sigma(X_t: t\leq s)$ 以及 $\F_{\geq s}=\sigma(X_T:t\geq s)$，所以这个结论可以概括为：对 Markov 过程，给定当下，过去与未来独立。

这个结论的证明主要使用了 Tower 性质，不算困难。

# 36.2 Probability Kernels Revisited

回顾了之前概率核的概念。没啥新的。

# 37.2 Kolmogorov's (Extended) Extension Theorem

本讲介绍了连续情形的 Kolmogrov 扩张定理：可以构造一般的有限维分布，只要它们满足相容性条件。


# 46.3 Wald's Identity

本讲介绍了 Wald 引理。

> **Wald 引理**：设 $\{X_n\}$ 是 $\iid$ 的随机变量序列，$\tau$ 是一个停时，则在 $\E|X_1|<\infty$ 且 $\E\tau<\infty$ 的条件下有 $\E\sum\limits_{n=1}^\tau X_n=\E X_1\cdot \E\tau$。

这里的关键在于将上面的求和变成一个二重级数求和，然后交换求和次序。

$$\begin{align*}\sum_{n=1}^\tau\E X_n&=\sum_{n=1}^\infty\E X_n\cdot \ind_{\tau\geq n}=\sum_{n=1}^\infty\E X_n\cdot\sum_{k=n}^\infty\ind_{\tau=k}\\&=\sum_{k=1}^\infty\ind_{\tau=k}\sum_{n=1}^k\E X_n\\&=\E X_1\sum_{k=1}^\infty k\cdot\ind_{\tau=k}\\&=\E X_1\cdot \E\tau.\end{align*}$$

我们为什么可以在第一行的第二个等号处交换求和次序？这是因为上面的推导对 $|X_n|$ 是成立的，并且离散积分值 $\E|X_1|\cdot\E \tau<\infty$，所以由控制收敛定理对原序列 $X_n$ 交换求和也是 OK 的。

