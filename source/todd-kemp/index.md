---
title: "Todd Kemp 概率论课程笔记"
date: 2021-03-01
url: todd-kemp
---
\newcommand{\A}{\mathcal{A}}
\newcommand{\B}{\mathcal{B}}
\newcommand{\E}{\mathbb{E}}
\newcommand{\F}{\mathcal{F}}
\newcommand{\N}{\mathcal{N}}
\newcommand{\O}{\Omega}
\newcommand{\P}{\mathbb{P}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\S}{\mathcal{S}}
\newcommand{\H}{\mathbb{H}}
\newcommand{\M}{\mathbb{M}}

\newcommand{\io}{\mathrm{i.o.}}
\newcommand{\ae}{\mathrm{a.e.}}
\newcommand{\iid}{\mathrm{i.i.d}}

\newcommand{\du}{\,\mathrm{d}\mu}
\newcommand{\dv}{\,\mathrm{d}\nu}
\newcommand{\dx}{\,\mathrm{d}x}
\newcommand{\dy}{\,\mathrm{d}y}
\newcommand{\dz}{\,\mathrm{d}z}
\newcommand{\dt}{\,\mathrm{d}t}
\newcommand{\dxi}{\,\mathrm{d}\xi}

\newcommand{\triple}{(\Omega,\mathcal{F},\mathbb{P})}
\newcommand{\Lone}{L^1(\Omega,\mathcal{F},\mathbb{P})}

\newcommand{\ind}{\mathbb{1}}

\newcommand{\ud}[1]{\mu(\mathrm{d}#1)}
\newcommand{\vd}[1]{\nu(\mathrm{d}#1)}
\newcommand{\uxuy}{\mu_X\otimes\mu_Y}
\newcommand{\uxvy}{\mu_X\otimes\nu_Y}
\newcommand{\sgn}{\mathrm{sgn}}
\renewcommand{\Re}{\mathrm{Re}\,}

# 0 Banach Tarski

:::{.example}
**不可测集的例子** 记单位圆 $S^1=\{e^{it},\,t\in\R\}$，子群 $H=\{e^{iq},\,q\in\Q\}$，在每个左陪集 $S^1/H$ 中选择一个代表元组成集合 $E$，则 $E$ 是不可测集合。这是因为 $S^1 = \bigcup_{q\in\Q}Ee^{iq}$ 是可数多个互不相交的集合的并，这些集合两两之间只差乘以一个单位复数，即差一个旋转，所以测度均相等，于是
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
+ **超可数可加**：如果 $\{E_n\}_{n=1}^{\infty}$ 是一列不相交的集合，每个 $E_n\in\mathcal{A}$ 并且 $\mu(\uplus_{n=1}^\infty E_n)\in\mathcal{A}$。则 $\mu(\uplus_{n=1}^\infty E_n)\geq\sum_{n=1}^\infty\mu(E_n)$。这是由于单调性左边始终是右边部分和的上界。


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



# 6.2 Measurable Functions

本讲介绍了测度空间上可测映射的概念。

:::{.lemma}
设 $f:\Omega\to\S$ 是一个映射，$\mathcal{A}\subset2^\S$ 是 $\S$ 中一个集合族，定义
$$f^{-1}(\mathcal{A}) = \{f^{-1}(E),E\in\mathcal{A}\}.$$
则 $\sigma(f^{-1}(\mathcal{A}))= f^{-1}(\sigma(\mathcal{A}))$。
:::

引理的证明不难， 只要注意到一个 $\sigma$- 域在映射下的像 (push forward) 和逆映射下的原像 (push back) 都是 $\sigma$- 域即可。

:::{.definition}
若 $(\O,\F)$ 和 $(\S, \B)$ 是两个可测空间，我们称 $f:\O\to\S$ 是一个可测映射，如果有 $f^{-1}(\B)\subseteq\F$。
:::

要检查一个映射是不是可测的，我们不必对每个 $B\in\B$ 都检查，只要对满足 $\sigma(\mathcal{A})=\B$ 的一个子集合族 $\mathcal{A}$ 检查有 $f^{-1}(\mathcal{A})\subseteq\F$ 即可。这是因为由上面的引理，
$$f^{-1}(\B)=f^{-1}(\sigma(\mathcal{A}))=\sigma(f^{-1}(\mathcal{A}))\subseteq\F.$$

:::{.corollary}
如果 $X_1,\ldots,X_n$ 都是测度空间 $(\O,\F)$ 上的可测函数，$f:\R^n\to\R$ 是一个连续或者 Borel 可测的多元函数，则 $Y=f(X_1,\ldots,X_n)$ 也是可测函数。
:::

**证明**：记 $X=(X_1,\ldots,X_n)$，我们要说明复合映射
$$\O\xrightarrow{\ X\ }\R^n\xrightarrow{\ f\ }\R$$
是可测的。由于 $f$ 显然可测，只要再说明 $X$ 是可测的。根据上面的引理，只要验证
$$X^{-1}\left((-\infty, t_1], (-\infty, t_2],\ldots, (-\infty, t_n]\right)=\bigcap_{i=1}^n \{X_i\leq t_i\}.$$
是可测的，这显然。$\blacksquare$



# 7.1 Robustness of Measurability

本讲主要介绍了可测函数集合在通常的运算，以及取极限的操作下得到的仍然是可测函数。

下面这个结论在整个课程中都会频繁用到：

:::{.theorem}
**Doob-Dynkin 分解** 设 $X_1,\ldots,X_d$ 和 $Y$ 都是 $(\O,\F)\to(\R,\B(\R))$ 的可测函数，而且 $Y$ 还关于 $\sigma(X_1,\ldots,X_d)$ 可测，则存在 Borel 可测函数 $f:\R^d\to\R$ 使得
$$Y=f(X_1,\ldots,X_d).$$
:::

**证明**：记 $X=(X_1,\ldots,X_d)$，则 $X:\O\to\R^d$ 是 $\F/\B(\R^d)$ 可测的。

我们先来说明有 $\sigma(X_1,\ldots,X_n)=X^{-1}(\B(\R^d))$ 成立。这个基本就是把之前 6.2 讲的推论证了一遍。为方便记
$$I^d=\{(-\infty,t_1]\times\cdots\times(-\infty, t_d],\ t_i\in\R\text{ or }t_i=+\infty\}.$$ 首先 $\B(\R^d)$ 在 $X^{-1}$ 下的 pull back $X^{-1}(\B(\R^d))$ 是一个 $\sigma$- 域，而且包含 $X^{-1}(I^d)$，所以包含任何形如 $\{X_i\leq t_i\}$ 的集合，从而包含所有的 $\sigma(X_i)$，即包含 $\sigma(X_1,\ldots,X_n)$。

另一方面 $\sigma(X_1,\ldots,X_n)$ 在 $X$ 下的 push forward $X(\sigma(X_1,\ldots,X_n))$ 也是一个 $\sigma$- 域，并且包含 $I^d$，所以也就包含 $\B(\R^d)$。

回到定理证明。我们首先对 $Y=\ind_{A},\,A\in\sigma(X_1,\ldots,X_n)$ 是指标函数的情形证明。由于 $\sigma(X_1,\ldots,X_n)=X^{-1}(\B(\R^d))$，所以存在 $B\in\B(\R^d)$ 使得 $A=X^{-1}(B)$。于是
$$\ind_{A}=\ind_{X^{-1}(B)} = \ind_{B}\circ X.$$
$\ind_B$ 当然是 $\B(\R^d)/\B$ 可测函数，所以结论成立。

由此很容易得出结论对任意简单函数都成立。

对一般的可测函数 $Y\in\sigma(X_1,\ldots,X_d)$，取简单函数列 $\phi_n\to Y,\,\phi_n\in\sigma(X_1,\ldots,X_d)$。根据上面的结论，存在可测函数 $f_n:\R^d\to\R$ 使得 $\phi_n=f_n(X)$。记 $f=\varlimsup f_n$，则有
$$f(X)=\varlimsup f_n(X)=\varlimsup \phi_n = \lim\phi_n = Y.$$
结论得证。$\blacksquare$


# ✅ 7.2 Riemann-Stieltjes Integration

无要点。


# 8.2 Monotone convergence theorem

本讲给出了**非负可测函数积分**的定义：设 $f\in L^+$ 为非负可测函数，其积分定义为
$$\int f\du = \sup\left\{\int\varphi\du:\ \varphi\leq f,\ \varphi \text{ simple and measuable}\right\}.$$

这个定义的问题在于不容易直接得出积分的可加性：
$$\int (f+g) \du =\int f\du + \int g\du.$$

为此先证明了单调收敛定理：

:::{.theorem}
**单调收敛定理 (MCT)** 若 $\{f_n\}\in L^+$ 且 $f_n\uparrow f$，则 $\int f_n\du\uparrow \int f\du$。
:::

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
单调收敛定理得证。$\blacksquare$

**MCT 告诉我们总是可以用一个只取有限多个值、每个值都有限的简单函数来逼近 $f$ 的积分**。

非负可测函数 $f$ 可以用简单函数序列
$$\varphi_n = \sum_{k=1}^{2^{2n}}\frac{k-1}{2^n}\ind_{\{\frac{k-1}{2^n}\leq f<\frac{k}{2^n}\}} + 2^n\ind_{\{f\geq 2^n\}}$$
来逼近。在第 $n$ 次切割中，我们将切割范围扩大为原来的 2 倍以逼近 $f$ 在 $\infty$ 的部分，同时将切割的间隔缩小为原来的 1/2 以保证逼近的误差是减小的。


# ✅ 9.1 Integrals and Null Sets

本讲主要是论证积分的基本结论在 $\ae$ 的情形下也都成立。此外介绍了非负可测函数列积分的 Fatou 定理，它是上一讲中单调收敛定理的直接推论：

:::{.theorem}
**Fatou 定理** 设 $f_n\in L^+$ 是非负可积函数列，则
$$\int\liminf f_n\du \leq \liminf \int f_n\du.$$
:::

**证明**：设 $g_n=\inf_{m\geq n}f_m$，则 $g_n\leq f_m$，所以
$$\int g_n\du\leq\int f_m\du,\quad n\leq m$$
从而 $\int g_n\du\leq\liminf\int f_m\du$。
另一方面 $g_n\uparrow\liminf f_n$，所以利用 MCT 有
$$\int\liminf f_n\du =\int\lim_{n\to\infty} g_n\du=\lim_{n\to\infty}\int g_n\du\leq\liminf\int f_m\du.$$
$\blacksquare$

另一个重要结论是 Borel-Cantelli 引理：

:::{.theorem}
**Borel-Cantelli (Ⅰ)** 如果 $\sum_{n=0}^\infty\mu(A_n)<\infty$，则 $\mu\{A_n,\ \io\}=0$。
:::

这个用积分很容易看出来：
$$\sum_{n=0}^\infty\mu(A_n)=\int\sum_{n=0}^\infty\ind_{A_n}\du.$$
左边如果有限，那么右边的函数必须几乎处处有限，所以 $\{A_n,\ \io\}$ 是零测集。


# ✅ 9.2 $L^1$ and the DCT

本讲引入了一般可积函数的定义，并证明了控制收敛定理。

:::{.definition}
称 $f\in\Lone$ 为可积函数，如果 $f^+,f^-$ 都是可积的：$\int f^{\pm}\du<\infty$。此时我们定义 $\int f=\int f^+-\int f^-$。或者等价地，$f$ 可积当且仅当 $\int |f|\du<\infty$。
:::

对可积函数，积分是**线性的**、**保持单调性的**。

如果我们将几乎处处相等的函数看作是同一个函数的话，$\|\cdot\|_{L^1}$ 是可积函数空间上的度量。

:::{.theorem}
**控制收敛定理** 设 $f_n, g$ 都是可积函数并且 $|f_n|\leq g$，$\lim\limits_{n\to\infty}f_n=f$。
则 $f$ 也是可积函数并且 $\lim\limits_{n\to\infty}\int f_n=\int f$。
:::

**证明概要**：显然 $|f|\leq g$，所以 $f$ 可积，从而由线性性质 $g\pm f$ 都是可积的。对可积函数序列 $g\pm f_n$ 使用 Fatou 引理，有
$$\int (g\pm f)\du=\int\varliminf_{n\to\infty} (g\pm f_n)\du\leq \varliminf_{n\to\infty}\int (g\pm f_n)\du = \int g\du\pm\varliminf_{n\to\infty}\int f_n\du.$$
比较两边有
$$\int (g\pm f)\du \leq \int g\du \pm \varliminf_{n\to\infty}\int f_n\du.$$
消去 $g$ 的积分，并注意对任何实数列 $\{a_n\}$ 有 $\varliminf\limits_{n\to\infty}(-a_n)=-\varlimsup\limits_{n\to\infty} a_n$，从而
$$\varlimsup\int f_n\du \leq \int f\du \leq \varliminf\int f_n\du.$$
即得结论。


# 11.1 The Radon-Nikodym Theorem

本讲介绍了 Radon-Nikodym 定理，不过没有给出证明。

**Motivation**: 设 $\mu,\nu$ 是两个测度，是否存在非负可测函数 $\rho$ 使得 $\nu(A)=\int_A\rho\du$ 对任何可测集 $A$ 成立？

**必要条件**：$\mu(A)=0\Rightarrow\nu(A)=0$。这时我们称 $\nu$ 关于 $\mu$ **绝对连续**，记作 $\nu\ll\mu$。

此条件同样也是充分的：若 $\nu$ 关于 $\mu$ 绝对连续，则存在 $\rho$ 使得 $\rho=\dfrac{\mathrm{d}\nu}{\mathrm{d}\mu}$。

**奇异连续测度的例子**：Cantor 函数 (devil staircase)。[YouTube 科普](https://www.youtube.com/watch?v=dQXVn7pFsVI)。此函数没有点质量，也没有密度函数，但是确实给出一个全质量为 1 的概率测度。

+ 此函数是连续递增的，所以是一个分布函数。
+ 此函数是连续的，所以没有点质量，即单个点的测度是 0。
+ 此函数是奇异的，因为它在除去 Cantor 集对应的点之外几乎处处是常数。



# 11.2 Probability Laws Revisited

:::{.theorem}
**积分的变量替换定理** 设 $X:\ (\Omega,\mathcal{F},\mu)\to(\mathcal{S},\mathcal{B})$ 是一个可测映射，$(\mathcal{S},\mathcal{B})$ 上的测度 $\nu$ 由 $\nu(E) = \mu(X^{-1}(E))$ 给出，$g:\ (\mathcal{S},\mathcal{B},\nu)\to\mathbb{R}$ 是一个可积函数，则 $$\int_{\Omega}g\circ X\du=\int_{\mathcal{S}}g\dv.$$
:::

示意图：

$$\underbrace{\Omega\xrightarrow{\ X\ }\overbrace{S\xrightarrow{\ g\ }\R}^{\int_{\S}g\dv}}_{\int_{g\circ X\du}}.$$

**证明概要**：首先考察 $g=\ind_B,\,B\in\B$ 是指标函数的情形。
$$\int_{\S} g\dv = \nu(B) = \mu(X^{-1}(B))=\int_{\O}\ind_{X^{-1}(B)}\du.$$
由于 $\omega\in X^{-1}(B)\Leftrightarrow X(\omega)\in B$，所以 $\ind_{X^{-1}(B)} = \ind_{B}\circ X$，所以上式右边的积分等于 $$\int_{\O}\ind_{B}\circ X\dv.$$
此时结论成立。根据积分的线性性质结论对简单函数也成立，从而进一步取极限可得对任何可积函数 $g$ 都成立。




# 13.1 Convergence in measure

本讲介绍了可测函数的依测度收敛概念，及其与逐点收敛之间的联系。

:::{.definition}
称 $f_n\to_{\mu} f$ 为依测度收敛，如果对任意 $\epsilon >0$ 有
$$\lim_{n\to\infty}\mu\{|f_n-f|\geq0\}=0.$$
:::

**依测度收敛但不处处收敛的例子**：将区间 $[0, 1]$ 等分为 $2^n$ 份，将它们的指标函数排成一排，再对所有 $n$ 将这些片段排列起来得到序列 $f_n$，则 $f_n$ 依测度收敛到 0 但不逐点收敛。

**接下来是一个将测度和逐点收敛联系起来的重要技巧**：根据几乎处处收敛的定义，$f_n\to f,\ae$ 收敛即要求对任何 $\epsilon>0$ 有
$$\mu\{|f_n-f|\geq\epsilon,\ \io\} = 0.$$
这样就可以把逐点收敛和测度联系起来。有时候我们还可以使用更强的条件：
$$\mu\{|f_n-f|\geq 2^{-n},\ \io\} = 0.$$
这是因为对任何 $\epsilon$，$n$ 足够大时 $2^{-n}<\epsilon$, 从而 $\{|f_n-f|\geq\epsilon\}\subseteq\{|f_n-f|\geq 2^{-n}\}$，前者发生无穷多次自然意味着后者也发生无穷多次。这样就可以和 Borel-Cantelli 引理结合起来使用，只要
$$\sum_{n}\mu\{|f_n - f|\geq 2^{-n}\} < \infty,$$
就可以保证 $\{f_n\}$ 是几乎处处收敛的。

:::{.theorem}
逐点收敛可以推出依测度收敛。
:::

**简要证明**：对任何 $\epsilon>0$，记 $A_n=\{|f_n-f|\geq\epsilon\}$，则
$$\mu\{A_n,\ \io\} = \lim_{n\to\infty}\mu(\bigcup_{k\geq n}A_k)\geq \lim_{n\to\infty}\mu(A_n).$$

:::{.theorem}
设 $\{f_n\}$ 为依测度收敛的 Cauchy 序列：
$$\lim_{n,m\to\infty}\mu\{|f_n-f_m|\geq\epsilon\} = 0.$$
则 $f_n$ 必有逐点收敛的子序列 $f_{n_k}\to f\ \mathrm{a.e.}$，并且 $f_n$ 依测度收敛到 $f$。
:::

**简要证明必有逐点收敛的子序列**：利用上面介绍的技巧，归结为抽取子序列 $\{f_{n_k}\}$ 满足
$$\mu\{|f_{n_{k+1}} - f_{n_k}|\geq2^{-k},\ \io\} = 0.$$
利用 Borel-Cantelli 引理这只要让 $\sum_{k=1}^\infty\mu\{|f_{n_{k+1}} - f_{n_k}|\geq 2^{-k}\}<\infty$ 即可。为此又只要让 $\mu\{|f_{n_{k+1}} - f_{n_k}|\geq 2^{-k}\}\leq 2^{-k}$ 即可。根据 Cauchy 条件这是可以做到的。

**简要证明这个子序列的逐点极限是原序列的依测度极限**：对任何 $n$，取 $n_{k}>n$ 则有
$$\{|f_n-f|\geq\epsilon\}\subseteq \{|f_n-f_{n_k}|\geq\epsilon/2\}\cup \{|f_{n_k}-f|\geq\epsilon/2\}.$$
显然 $n$ 足够大时右边两个集合测度都趋于 0。




# 13.2 $L^p$ is Complete

首先我们来证明 $L^p$ 收敛可以推出依测度收敛。

:::{.theorem}
$L^p$ 度量是完备的，任何 Cauchy 序列必有极限。
:::

**证明概要**：$L^p$ Cauchy 列也都是依测度 Cauchy 列，从而有几乎处处收敛的子序列 $f_{n_k}\to f$。对固定的 $k$，当 $j>k$ 时有
$$\begin{align*}\int\|f_{n_k}-f\|^p\du&=\int\lim_{j\to\infty}\|f_{n_k}-f_{n_j}\|^p\du\leq\liminf_{j\to\infty}\int\|f_{n_k}-f_{n_j}\|^p\du\\
&\leq\limsup_{j\to\infty}\int\|f_{n_k}-f_{n_j}\|^p\du.\end{align*}$$
两边令 $k\to\infty$ 并利用 Cauchy 条件即得子序列 $f_{n_k}\xrightarrow{L^p}f$。再利用 Cauchy 条件可得原序列 $f_n\xrightarrow{L^p} f$。

:::{.theorem}
**依测度控制收敛定理** 设 $f_n$ 依测度收敛到 $f$，且 $|f_n|\leq f,\, f\in L^1$。则 $f_n\xrightarrow{L^1} f$。
:::

**证明概要**：假设 $f_n$ 不 $L^1$ 收敛到 $f$，则对任何 $\epsilon>0$，存在子序列 $f_{n_k}$ 满足：

+ $\|f_{n_k} - f\|_{L^1}\geq\epsilon$。
+ $f_{n_k}$ 几乎处处收敛到 $f$。

这与控制收敛定理矛盾。


# 14.1 Dynkin's Multiplicative Systems Theorem

本讲介绍了 Dynkin $\pi-\lambda$ 定理的函数形式的版本。

:::{.definition}
设 $(\Omega,\mathcal{F})$ 是一个可测空间，$f$ 是可测函数。如果存在 $M>0$ 使得
$$|f|\leq M,\quad \ae$$
成立，就称 $f$ 是一个有界可测函数。记 $\mathbb{B}(\Omega,\mathcal{F})$ 为全体有界函数构成的向量空间。若 $\{f_n\}\in\mathbb{B}(M,\F)$ 满足
$$|f_n|\leq M,\ \ae \quad \forall n$$
并且
$$\lim_{n\to\infty} f_n = f,\quad \ae$$
就称 $\{f_n\}$ **一致有界收敛到 $f$**。
:::

:::{.theorem}
设 $\mathcal{I}\subseteq\mathcal{F}$ 是一个 $\pi$- 系，设 $\mathbb{H}(\mathcal{I})\subseteq\mathbb{B}(\Omega,\mathcal{F})$ 满足如下条件：

1. $\mathbb{H}(\mathcal{I})$ 是一个向量空间。
2. $\mathbb{H}(\mathcal{I})$ 包含 $\Omega$ 上的常函数 $\ind$。
3. 若 $\{f_n\}$ 是 $\mathbb{H}(\mathcal{I})$ 中的可测函数序列，且 $f_n$ 一致有界收敛到 $f$，则 $f\in\mathbb{H}(\mathcal{I})$。
4. $\mathbb{H}(\mathcal{I})$ 包含 $\mathcal{I}$ 中的所有指标函数 $\ind_{A},\,A\in\mathcal{I}$。

则 $\mathbb{H}(\mathcal{I})$ 包含所有关于 $\sigma(\mathcal{I})$- 可测的有界函数。
:::

**证明概要**：设
$$\mathcal{A}=\{A\in\mathcal{F}:\ \ind_A\in\mathbb{H}(\mathcal{I})\}.$$

+ 由 2 $\Omega\in\mathcal{A}$。
+ 由 1, 2 结合有若 $A\in\mathcal{A}$ 则 $A^c\in\mathcal{A}$。
+ 由 3 有若 $\{A_n\}\in\mathcal{A}$，$A_n\uparrow$ 则 $\cup_{n}A_n\in\mathcal{A}$。

于是 $\mathcal{A}$ 是一个 $\lambda$- 系，并且由 4 有 $\mathcal{A}\supseteq\mathcal{I}$，从而 $\mathcal{A}\supseteq\sigma(\mathcal{I})$。于是 $\mathbb{H}(\mathcal{I})$ 包含所有形如 $\ind_A,\,A\in\sigma(\mathcal{I})$ 的指标函数，也就包含所有 $\sigma(\mathcal{I})$ 上的简单可测函数，从而包含它们的所有一致有界极限，即全体 $\sigma(\mathcal{I})$- 可测的有界函数。

:::{.note}
条件 3 其实可以减弱为 $\{f_n\}$ 是非负可测函数序列，且 $f_n\uparrow f$，$f$ 有界。这样我们首先得到 $\mathbb{H}(\mathcal{I})$ 包含所有 $\sigma(\mathcal{I})$ 上的非负简单函数，因而包含所有的非负有界可测函数，而对任何一般的 $\sigma(\mathcal{I})$ 有界可测函数 $f$，$f^{\pm}$ 都是 $\sigma(\mathcal{I})$ 上的非负有界可测函数，因而 $f^{\pm}$ 和它们的差 $f=f^+-f^-$ 都属于 $\mathbb{H}(\mathcal{I})$。
:::

# 14.2 Product Measure

本讲介绍了乘积测度的构造。**记住乘积测度的构造是用到重积分的**。

**可测空间的乘积**：设 $(\Omega_1,\mathcal{F_1}),\,(\Omega_2,\mathcal{F_2})$ 是两个可测空间，其乘积空间定义为 $(\Omega_1\times\Omega_2,\,\sigma(\mathcal{F}_1\times\mathcal{F}_2))$。其中 $\mathcal{F}_1\otimes\mathcal{F}_2=\sigma(\mathcal{F}_1\times\mathcal{F}_2)$ 是由所有形如 $\{A_1\times A_2, A_i\in\mathcal{F}_i\}$ 的集合生成的 $\sigma$- 域。

$\mathcal{F}_1\otimes\mathcal{F}_2$ 还有一种等价的刻画：它是使得投影映射 $\pi_i(\omega_1,\omega_2)=\omega_i$ 均可测的最小 $\sigma$- 域。

:::{.lemma}
随机向量 $f:(\Omega, \mathcal{F})\to(\R^d,\B(\R^d))$ 是可测的，当且仅当其每个分量 $f_i$ 是可测的。
:::
**证明**：
x
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



# 15.1 Independence

本讲介绍了事件和 $\sigma$- 域之间的独立性概念。

要点总结：

1. 若干个事件 $\{A_n\}$ 独立不是指它们两两独立，而是其中任何有限多个子事件都独立。
2. 验证若干 $\sigma$- 域 $\{\mathcal{F}_i\}$ 独立只需要验证生成它们的 $\pi$- 系 $\{C_i:\ \mathcal{F}_i=\sigma(C_i)\}$ 独立。

:::{.theorem}
**Borel-Cantelli 引理 II** 设 $\{A_n\}$ 是独立的事件列，则若 $\sum_{n=1}^\infty\P(A_n)=\infty$，则 $\P(\{A_n, \io\})=1$。
:::

想法还是要用独立性，转到事件的交上去。

$$\P(\{A_n,\ \io\})=\P(\bigcap_{n=1}^\infty\bigcup_{k\geq n}A_k)=\lim_{n\to\infty}\P(\bigcup_{k\geq n}A_k).$$
观察两边，要想用上独立性，就得取补：
$$1-\P(\bigcup_{k\geq n}A_k)=\P(\bigcap_{k\geq n}A_k^c)=\lim_{M\to\infty}\prod_{k=n}^M\P(A_k^c)=\lim_{M\to\infty y}\prod_{k=n}^M(1-\P(A_k)).$$
利用 $1-x\leq e^{-x}$ 有
$$\lim_{M\to\infty}\prod_{k=n}^M(1-\P(A_k))\leq\lim_{M\to\infty}\prod_{k=n}^Me^{-\P(A_k)}=\lim_{M\to\infty}e^{-\sum_{k=n}^M\P(A_k)}.$$
上式右边对任何固定的 $n$ 其极限都是 0，从而 $\P(\bigcup_{k\geq n}A_k)\to1$，结论得证。$\blacksquare$


# 15.2 Independent Random Variables

上一讲介绍了独立事件和独立事件域的概念，这一讲介绍了独立随机变量的概念。

:::{.theorem}
一族随机变量 $\{X_i\}_{i\in I}$ 称作是独立的，如果它们的 $\sigma-$ 域 $\{\sigma(X_i)\}_{i\in I}$ 是独立的。
:::

由于 $\sigma(X_i)$ 可以由 $\pi-$ 系 $\{X_i\in(-\infty, t_i]\}$ 生成，所以只要验证这个 $\pi$- 系的独立性即可。

:::{.theorem}
设 $X=(X_1,\ldots,X_n)$，其中每个 $X_i:(\O,\F,\P)\to(\S_i,\B_i)$ 是随机变量，$\mu_X$ 是 $\B_1\otimes\cdots\otimes\B_n$ 上的测度: $\mu_X(B)=\P(X\in B)$。则 $X_1,X_2,\ldots,X_n$ 独立当且仅当 $\mu_X=\mu_{X_1}\otimes\cdots\otimes\mu_{X_n}$。
:::

**证明**：$\Leftarrow$:

$$\begin{align*}\P(X_1\in B_1,\ldots,X_n\in B_n)&=\mu_X(B_1\times \cdots\times B_n)\\
&=\mu_{X_1}(B_1)\cdots\mu_{X_n}(B_n)\\
&=\P(X_1\in B_1)\cdots\P(X_n\in B_n).\end{align*}$$

$\Rightarrow$: 简单。

:::{.corollary}
如果 $X_1,X_2,\ldots,X_n$ 都是 $L^1$ 可积的随机变量，则 $X_1X_2\cdots X_n\in L^1$ 且 $\E[X_1\cdots X_n]=\E[X_1]\cdots\E[X_n]$。
:::

首先对 $|X_1X_2\cdots X_n|$ 用 Tonelli 定理得出 $|X_1X_2\cdots X_n|$ 可积，然后再对 $X_1X_2\cdots X_n$ 用 Fubini 定理。

:::{.corollary}
如果 $X_1,\ldots,X_n,Y_1,\ldots,Y_m$ 是一组独立的随机变量，则 $f(X_1,\ldots,X_n)$ 和 $g(Y_1,\ldots,Y_m)$ 也是独立的。
:::

这是因为 $\sigma(f(X_1,\ldots,X_n))\subseteq\sigma(X_1,\ldots,X_n)$，$\sigma(g(Y_1,\ldots,Y_m))\subseteq\sigma(Y_1,\ldots,Y_m)$，所以也是独立的。


# ✅ 17.1 Kolmogorov's 0-1 Law

本讲介绍了独立随机变量序列的尾事件，以及 Kolmogrov 0-1 律。

设 $\{X_n\}$ 是独立的随机变量序列 (不是两两独立，而是任何有限多个都独立)称 $\mathcal{T}=\cap_{n=1}^\infty\sigma(X_n,X_{n+1},\ldots)$ 为尾事件域。

:::{.theorem}
**Kolmogrov 0-1 律** 对任何 $A\in\mathcal{T}$ 有 $\mathbb{P}(A)\in\{0,1\}$。
:::

**证明概要**：

+ $\sigma(X_1,\ldots,X_n)$ 和 $\sigma(X_{n+1},X_{n+2},\ldots)$ 是独立的。因为考虑如下两个集合族：
$$\{\text{all finite intersections like }\cap A_i, A_i\in\sigma(X_i),i=1,2,\ldots,n\}.$$
$$\{\text{all finite intersections like }\cap A_j, A_j\in\sigma(X_j),j=n+1,n+2,\ldots\}.$$
这俩都是 $\pi$- 系且互相独立，所以它们生成的 $\sigma$- 域也独立。前者可以生成 $\sigma(X_1,\ldots,X_n)$，后者可以生成 $\sigma(X_{n+1},X_{n+2},\ldots)$。
+ 于是 $\sigma(X_1,\ldots,X_n)$ 和 $\mathcal{T}$ 是独立的。
+ 于是 $\cup_{n=1}^\infty\sigma(X_1,\ldots,X_n)$ 作为代数，当然也是 $\pi$- 系，和 $\mathcal{T}$ 是独立的。
+ 于是 $\sigma$- 域 $\sigma(X_1,\ldots,X_n,\ldots)$ 和 $\mathcal{T}$ 独立，从而 $\mathcal{T}$ 和 $\mathcal{T}$ 独立，从而得证。

$\blacksquare$

:::{.proposition}
设 $\{X_i\}_{i=1}^\infty$ 是一个随机变量的无限序列，如果 $Y$ 是 $\sigma(X_1,X_2,\ldots)$ 可测的，且 $Y$ 有界，则对任何 $\epsilon>0$，都存在 $N$ 和 Borel 可测的有界函数 $F:\R^N\to\R$ 使得
$$\E|Y - F(X_1,\ldots,X_N)|<\epsilon,\quad \ae$$
:::

**证明**：记 $Y_n=\E[Y\mid\sigma(X_1,\ldots,X_n)]$，则 $\{Y_n\}$ 是一致可积鞅，且在 $L^1$ 范数下收敛到 $Y$。每个 $Y_n$ 根据 Doob-Dynkin 引理都形如 $Y_n=F(X_1,\ldots,X_n)$。此即为结论。

或者也可以这样证：先取简单函数
$$\varphi = \sum_{k=1}^n a_k\ind_{A_k},\quad A_k\in\B(\R^{\mathbb{N}})$$
满足 $|Y -\varphi|_1<\epsilon/2$。然后记 $M=\max\{|a_1|,\ldots,|a_k|\}$。对每个 $A_k$，取柱集 $C_k$ 使得
$$\mu(A_k\Delta C_k) < \frac{\epsilon}{2nM}.$$
于是
$$\left| \sum_{k=1}^n a_k\ind_{A_k} -  \sum_{k=1}^n a_k\ind_{C_k}\right|\leq  \sum_{k=1}^n |a_k| |\ind_{A_k}-\ind_{C_k}|= \sum_{k=1}^n |a_k|\ind_{A_k\Delta C_k}\leq M \sum_{k=1}^n\ind_{A_k\Delta C_k}.$$
右边函数每一项的积分 $<\epsilon/2n$，全部 $n$ 项合起来的积分 $<\epsilon$，所以简单函数 $\ind_{A_k\Delta C_k}$ 就是所求的 $F$。$\blacksquare$


# 17.2 Convolution

本讲介绍了概率测度之间的卷积。

:::{.definition}
两个概率测度 $\mu,\nu$ 之间的卷积定义为
$$\mu\ast \nu(B) = \int_{\R^d\times\R^d}\ind_B(x+y)\mu\otimes\nu(\dx\dy)=\int_{\R^d}\mu(B-y)\vd{y}.$$
:::

# ✅ 18.1 Strong Law of Large Numbers, Part 1

本讲介绍了 Kolmogrov 强大数定理的表述，以及证明思想。

基本思想是利用截断的序列与原序列是尾等价的，先对截断的序列证明结论，再回到原序列。

:::{.theorem}
**强大数定理** 设 $\{X_n\}$ 是 $\iid$ 的 $L^1$ 序列且 $\E [X_n]=a$，则 $\dfrac{S_n}{n}\to a, \ae$。
:::

:::{.definition}
同一个概率空间上的两个随机变量序列 $\{X_n\},\,\{Y_n\}$ 称作是尾等价的，如果
$$\sum_{n=1}^\infty\mathbb{P}(X_n\ne Y_n)<\infty.$$
:::

这样根据 Borel-Cantelli 引理，$\{X_n\ne Y_n\,\io\}$ 是零测集，从而 $X_n=Y_n$ 最终会几乎处处成立，从而二者的极限行为一致。

:::{.corollary}
如果 $\{X_n\}$ 和 $\{Y_n\}$ 是尾等价的，$b_n\uparrow\infty$，则
$$\lim\limits_{n\to\infty}\dfrac{1}{b_n}\sum_{j=1}^n X_n = X \Leftrightarrow \lim\limits_{n\to\infty}\dfrac{1}{b_n}\sum_{j=1}^n Y_n = X.$$
:::

:::{.lemma}
若 $X\in L^1,\,\epsilon>0$，则 $$\sum_{n=1}^\infty\mathbb{P}(X\geq n\epsilon) \leq\frac{1}{\epsilon}\mathbb{E}|X|.$$
:::

值得与 Markov 不等式比较一下，这个不等式更强。

**证明概要**：只要证明结论对 $\epsilon=1$ 成立即可。对任意实数 $x\ge 0$，我们有
$$\sum_{n=1}^{\infty}\ind_{[n,\infty)}(x)= \sharp\{n\in\mathbb{Z}_+\mid n\le x\}= \lfloor x\rfloor
\le x.$$
对 $|X|$ 使用上式得
$$\sum_{n=1}^{\infty}\ind_{[n,\infty)}(|X|)\le |X|.$$
两边求期望即得
$$\sum_{n=1}^\infty\P(|X|\ge n)\le \E|X|.$$
$\blacksquare$

:::{.corollary}
若 $\{X_n\}$ 是 $\iid$ 的 $L^1$ 序列，令 $Y_n = X_n\ind_{\{|X_n|\leq n\}}$，则 $\{Y_n\}$ 与 $\{X_n\}$ 是尾等价的。
:::

**证明**：
$$\sum_{n=1}^\infty\P(X_n\ne Y_n)=\sum_{n=1}^\infty\P(|X_n|>n)=\sum_{n=1}^\infty\P(|X_1|>n)\le\E|X_1|<\infty.$$
$\blacksquare$

于是接下来的任务就是证明 $S_n^Y = \dfrac{Y_1+\cdots+Y_n}{n}\to a,\,\ae$。


# ✅ 18.2 Kolmogorov's Convergence Criterion

本讲介绍了 Kolmogrov 收敛判定：独立随机变量序列如果是 $L^2$ 意义下的 Cauchy 序列，则也是逐点收敛意义下的 Cauchy 序列。

在上一讲中，我们通过把 $L^1$ 的序列 $\{X_n\}$ 取截断得到 $Y_n=X_n\ind_{\{|X_n|\leq n\}}$，这是一个与 $\{X_n\}$ 尾等价的序列。从而只要证明 $\frac{\sum_{k=1}^n Y_k}{n}\to a$。为此我们分两步：

1. 证明 $\frac{\sum_{k=1}^n (Y_k-\E Y_k)}{n}\to 0$。
2. 证明 $\E Y_n\to a$，从而 $\frac{\sum_{k=1}^n\E Y_k}{n}\to a$。结合上一点就证明了强大数定理。

2 用控制收敛定理很容易得出，所以关键是证明 1。

我们首先证明 $\sum_{k=1}^n \frac{Y_k-\E Y_k}{n}$ 是个收敛的序列，然后用下一讲介绍的 Kronecker 引理来得出 $\frac{\sum_{k=1}^n (Y_k-\E Y_k)}{n}\to 0$。

:::{.theorem}
**Kolmogrov 收敛判定**：若独立且 $L^2$ 可积的随机变量序列 $\{Y_n\}$ 满足
$$\sum\mathrm{Var}(Y_n)<\infty.$$
则
$$\sum_{n=1}^\infty(Y_n-\E Y_n)$$
几乎处处收敛。并且这个收敛也是 $L^2$ 收敛。
:::

**证明概要**：记 $Z_n=Y_n-\E Y_n$，则 $\E Z_n=0$ 且 $\sum_{n=1}^\infty\E Z_n^2<\infty$。我们来证明 $\sum_{n=1}^\infty Z_n$ 几乎处处收敛。

记 $S_n=\sum_{k=1}^nZ_k$，利用 Markov 不等式不难有
$$\P(|S_n|\geq\epsilon)\leq \frac{1}{\epsilon^2}\E[S_n^2].$$
有意思的是，上面的不等式中在左边把 $S_n$ 换成 $S_n^\ast=\max\limits_{1\leq i\leq n}|S_n|$ 仍然成立：

:::{.theorem}
**Kolmogrov 极大不等式**：对任何正数 $\epsilon>0$ 有
$$\P(S_n^\ast\geq\epsilon)\leq \frac{1}{\epsilon^2}\E[S_n]^2.$$
:::

**证明**：记 $\tau=\min\{j\mid |S_j|\geq\epsilon\}$。则 $\{S_n^\ast\geq\}=\{\tau\leq n\}$。
$$\E[S_n^2\ind_{\{S_n^\ast\geq\epsilon\}}]=\E[S_n^2\ind_{\{\tau\leq n\}}]=\sum_{k=1}^n\E[S_n^2\ind_{\{\tau=k\}}].$$
使用技巧 $S_n^2=(S_k + S_n - S_k)^2$ 我们有
$$\E[S_n^2\ind_{\{\tau=k\}}] = \E[(S_k^2 + (S_n-S_k)^2)\ind_{\{\tau=k\}}] + \E[2S_k(S_n-S_k)\ind_{\{\tau=k\}}].$$
注意到第二项
$$\E[2S_k(S_n-S_k)\ind_{\{\tau=k\}}] =2\E[S_k\ind_{\{\tau=k\}}]\cdot\E[S_n-S_k]=0.$$
所以
$$\E[S_n^2]\geq\sum_{k=1}^n\E[S_k^2\ind_{\{\tau=k\}}]\geq\epsilon^2\sum_{k=1}^n\E[\ind_{\{\tau=k\}}]=\epsilon^2\P(\tau\leq n)=\epsilon^2 \P(S_n^\ast\geq\epsilon).$$

回到 Kolmogrov 收敛定理的证明。

Kolmogrov 极大不等式告诉我们

$$\P(\max_{n\leq k \leq m}|S_k - S_n|\geq\epsilon)\leq \frac{1}{\epsilon^2}\E|S_m-S_n|^2=\frac{1}{\epsilon^2}\sum_{k=n}^m \E Z_k^2.$$
令 $m\to\infty$ 我们有
$$\P(\sup_{k\geq n}|S_k - S_n|\geq\epsilon)\leq\frac{1}{\epsilon^2}\sum_{k=n}^\infty \E Z_k^2.$$
于是
$$\P(\sup_{k,j\geq n}|S_k - S_j|\geq\epsilon)\leq\frac{2}{\epsilon^2}\sum_{k=n}^\infty \E Z_k^2.$$
所以随机变量序列
$$\delta_n := \sup_{k,j\geq n}|S_k - S_j|$$
依测度收敛到 0。但是 $\{\delta_n\}$ 是一个单调下降的非负序列，它必然有一个几乎处处收敛的极限 $\delta$，$\delta$ 也非负。$\{\delta_n\}$ 依测度收敛到 0，又几乎处处收敛到 $\delta$，那必须 $\delta$ 几乎处处为 0，即 $\{S_n\}$ 是 Cauchy 序列。$\blacksquare$


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


# 23.2 Prokhorov's Compactness Theorem

:::{.theorem}
**Prokhorov 紧性定理** 设 $\S$ 是可分度量空间，$\{\mu_n\}$ 是 $(\S,\B(\S))$ 上的概率测度，则 $\{\mu_n\}$ 有 vaguely 收敛的子序列。
:::

:::{.corollary}
如果 $\{\mu_n\}$ 还是 tight 的，则存在弱收敛的子序列，其弱收敛的极限是一个概率测度 $\mu$。
:::

# 24.1 Complex Integration and Dynkin's Theorem

无要点

# ✅ 24.2 Characteristic Function

本讲介绍了随机变量的特征函数及其基本性质。整体内容比较基础。

# ✅ 25.1 The Riemann-Lebesgue lemma

:::{.theorem}
设 $f\in L^1(\R^n)$，则其特征函数
$$\varphi(t) = \int_{\R^n}e^{it\cdot x}f(x)\,\dx.$$
满足
$$\lim_{t\to\infty}\varphi(t) = 0.$$
:::

**证明**：首先，我们假设 $f$ 无穷次可微，并且具有紧支集。由分部积分，我们得到

$$it_j\varphi(t) = \int_{\R^n}\underbrace{it_je^{it\cdot x}}_{\frac{\partial x}{\partial x_j}e^{it\cdot x}}f(x)\,\dx =-\int_{\R^n}e^{it\cdot x}\frac{\partial x}{\partial x_j}f(x)\,\dx.$$
两边取绝对值，我们有
$$|t_j\varphi(t)|\leq \int_{\R^n}\left|\frac{\partial x}{\partial x_j}f(x)\right|\,\dx=M_j<\infty.$$
于是
$$|t|\cdot |\varphi(t)|\leq \sqrt{M_1^2+\cdots+M_n^2} < \infty.$$
所以在 $f$ 光滑且紧支集的情形，我们得到 $\varphi(t)=O(|t|^{-1})$。

对一般的 $L^1$ 型 $f$，我们用一个具有紧支集的光滑函数来逼近 $f$。首先
$$f\ind_{\overline{B}_R}\to f \text{ in }L^1 \text{ as }R\to\infty.$$
所以我们可以假设 $\mathrm{supp}(f)\subset\overline{B}_R$。
令
$$\H = \{h\in\mathbb{B}(\overline{B}_R)\mid \exists\ {g_n}\xrightarrow{L^1}h\text{ with }g_n\in C^\infty(\overline{B}_R)\}.$$
则

+ $1\in\H$；因为我们可以取类似“钟形”的光滑函数 $g_n\in C^\infty(\overline{B}_R)$ 使得 $g_n$ 在缩小一点的闭球 $\overline{B}_{R-1/n}$ 上恒为 1。
+ $\H$ 在有界收敛下封闭；因为如果 $h_n\to h$，则根据控制收敛定理，$|h_n-h|_1\to 0$。由于 $h_n\in\H$，设 $g_n\in C^\infty(\overline{B}_R)$ 满足 $|h_n-g_n|_1<1/n$，则
由三角不等式有
$$|h-g_n|\leq 1/n + ||h_n-g_n|_1\to 0.$$
记 $\M=C^\infty_c(\R^n)$ 是全体具有紧支集的光滑函数组成的集合，则 $\M$ 是乘法系，且 $\M\subset \H$。于是 $\mathbb{B}(\overline{B}_R,\sigma(\M))\subset\H$。但是 $\sigma(\M)=\mathcal{B}(\R^n)$，所以所有在 $\overline{B}_R$ 上有界，且 Borel 可测的函数都在 $\H$ 中。

最后，取 $g\in C^\infty_c(\R^n)$ 满足 $|f-g|_1<\epsilon$。则
$$|\varphi(t) - \hat{g}(t)|\leq |f-g|_1 < \epsilon.$$
而我们已经证明了 $|\hat{g}|=O(1/t)$，所以我们可以取 $R>0$ 使得 $|t|>R$ 时有 $|\hat{g}|<\epsilon$。从而 $|t|>R$ 时有
$$|\varphi(t)| < |\hat{g}(t)|+\epsilon < 2\epsilon.$$
$\blacksquare$

:::{.note}
证明中，我们不加证明使用了两个结论：

1. 光滑函数 $g_n$ 的存在性；
2. $\sigma(\M)=\mathcal{B}(\R^n)$。

这两点原因如下：任意 $\R^n$ 中的开球都能写成某个紧支撑光滑函数的开阈值原像。给定中心 $a\in\R^n$ 和半径 $r>0$，定义标准“钟形”函数
$$\phi_{a,r}(x)=\begin{cases}
\exp\Bigl(-\dfrac{1}{1-\frac{|x-a|^2}{r^2}}\Bigr), & |x-a|<r,\\
0,& |x-a|\ge r.
\end{cases}$$
则 $\phi_{a,r}\in C_c^\infty(\mathbb{R}^n)$，并且
$$\phi_{a,r}^{-1}((0,+\infty))=\{x\in\R^n\mid\phi_{a,r}(x)>0\}=B(a,r)$$。因此每个开球 $B(a,r)$ 都属于 $\sigma(\M)$。
:::

# ✅ 25.2 Fourier inversion

:::{.lemma}
对 $\xi\geq0$，定义函数
$$S(\xi) = \int_{-r}^r\frac{\sin\xi}{\xi}\dxi.$$
则 $S(\xi)$ 是 $[0,+\infty)$ 上的连续函数，并且
$$\lim_{\xi\to\infty}S(\xi) = \pi.$$
:::

**证明**：由于被积函数 $\frac{\sin\xi}{\xi}$ 在 $\R$ 上连续。由微积分基本定理，连续函数的变上限积分是连续的，故 $S$ 在 $[0,\infty)$ 上连续。

对 $a>0$ 定义
$$F(a)=\int_0^\infty e^{-ax}\frac{\sin x}{x}\dx.$$

可以在积分号下求导，得到
$$F'(a)=-\int_0^\infty e^{-ax}\sin x\dx=-\frac{1}{1+a^2}.$$
故
$$F(a)=C-\arctan a.$$
当 $a\to+\infty$ 时，$e^{-ax}$ 强衰减，$F(a)\to 0$，而 $\arctan a\to \frac{\pi}{2}$，故 $C=\frac{\pi}{2}$。于是
$$F(a)=\frac{\pi}{2}-\arctan a=\arctan\frac{1}{a}.$$
令 $a\downarrow 0$ 即得结论。$\blacksquare$


:::{.theorem}
设 $\mu$ 是 $(\R,\mathcal{B}(\R))$ 上的概率测度，则对任何 $a<b\in\R$ 有
$$\mu((a,b)) + \frac{1}{2}\mu(\{a,b\}) = \lim_{R\to\infty}\frac{1}{2\pi}\int_{-R}^R\frac{e^{-ia\xi}-e^{-ib\xi}}{i\xi}\hat{\mu}(\xi)\dxi.$$
:::

**证明**：
$$\begin{aligned}
I(R) &= \frac{1}{2\pi}\int_{-R}^R\frac{e^{-ia\xi}-e^{-ib\xi}}{i\xi}\hat{\mu}(\xi)\dxi\\
&=\frac{1}{2\pi}\int_{-R}^R \frac{e^{-ia\xi}-e^{-ib\xi}}{i\xi} \dxi\int_\R e^{i\xi x}\ud{x} \\
&=\frac{1}{2\pi}\int_\R  e^{i\xi x} \ud{x} \int_{-R}^R \frac{e^{-ia\xi}-e^{-ib\xi}}{i\xi} \dxi\\
&=\frac{1}{2\pi}\int_\R \ud{x} \int_{-R}^R \frac{e^{i\xi(x-a)}-e^{i\xi(x-b)}}{i\xi} \dxi\\
&=\frac{1}{2\pi}\int_\R \ud{x} \int_{-R}^R \frac{\sin\xi(x-a)-\sin\xi(x-b)}{\xi} \dxi.
\end{aligned}$$
这里我们可以使用 Fubini 定理交换关于 $\xi$ 和 $x$ 的积分顺序是因为
$$F(x,\xi)=e^{i\xi x}\frac{e^{-ia\xi}-e^{-ib\xi}}{i\xi}\ind_{[-R,R]}(\xi).$$
满足
$$|F(x,\xi)|\le |a-b|\ind_{[-R,R]}(\xi).$$
从而
$$\int_{\R}\int_{\R}|F(x,\xi)|\du\dxi\leq \int_{\R}\int_{\R} |a-b|\ind_{[-R,R]}(\xi)\du\dxi
=|a-b|\cdot \mu(\R)\cdot (2R)<\infty.$$

然后注意到
$$\begin{aligned}
\int_{-R}^R\frac{\sin\xi(x-a)}{\xi}\dxi&=\int_{-R(x-a)}^{R(x-a)}\frac{\sin\eta}{\eta}\,\mathrm{d}\eta=\begin{cases}
S(R(x-a)), & x-a > 0,\\
-S(R(a-x)), & x - a < 0.
\end{cases} \\
&= \sgn(x-a)S(R|x-a|).
\end{aligned}$$
所以
$$I(R)=\frac{1}{2\pi}\int_\R\big[\sgn(x-a)S(R|x-a|) -\sgn(x-b)S(R|x-b|)\big]\ud{x}.$$
现在，被积函数是有界的（不超过 $S(r)$ 在 $[0,+\infty)$ 上的上界 x 2），所以可以用控制收敛定理得到
$$\lim_{R\to\infty}I(R)=
\frac{1}{2}\int_\R[\sgn(x-a)-\sgn(x-b)]\ud{x}.$$
注意到现在的被积函数满足
$$\sgn(x-a)-\sgn(x-b)=\begin{cases}
0, & x > b \text{ or } x < a,\\
1, & x = a \text{ or } x = b,\\
2, & a < x < b.
\end{cases}.$$
所以
$$\lim_{R\to\infty}I(R) = \frac{1}{2}\mu(\{a,b\}) + \mu((a,b)).$$
$\blacksquare$


:::{.corollary}
设 $\mu$ 是 $(\R,\mathcal{B}(\R))$ 上的概率测度，$\hat{\mu}$ 是关于 Legesgue $L^1$ 的，则其有密度函数 $\rho$，满足
$$\rho(x)=\frac{1}{2\pi}\int_\R e^{-itx}\hat{\mu}(t)\dt.$$
:::

**证明**：令 $\rho$ 如上定义，则
$$\begin{aligned}
\int_a^b\rho(x)\dx &= \frac{1}{2\pi}\int_a^b\dx\int_\R\hat{\mu}(\xi)e^{-i\xi x}\dxi\\
&=\frac{1}{2\pi}\int_\R\hat{\mu}(\xi)\dxi \int_a^b e^{-i\xi x}\dx\\
&=\frac{1}{2\pi}\int_\R\hat{\mu}(\xi)\frac{e^{-ia\xi}-e^{-ib\xi}}{i\xi}\dxi\\
&=\lim_{R\to\infty} I(R)\\
&=\mu((a,b)) + \frac{\mu(\{a,b\})}{2}.
\end{aligned}$$
$\blacksquare$

# ✅ 25.3 The Continuity Theorem

本讲介绍了测度弱收敛的连续性定理。

:::{.theorem}
如果 $\{\mu_n\}_{n=1}^\infty$ 是一列 $(\R^d,\B(\R^d))$ 上的概率测度。假设极限 $\varphi(t) = \lim\limits_{n\to\infty}\hat{\mu_n}$ 存在，并且 $\varphi(t)$ 在 $t=0$ 处连续，则存在概率测度 $\mu$ 使得 $\hat{\mu}=\varphi$，并且 $\mu_n\rightarrow_{w}\mu$。
:::

:::{.lemma}
设 $\mu,\nu$ 是 $(\R^d,\B(\R^d))$ 上的两个概率测度，$K>0$ 是任意正实数，则
$$\int_{\R^d}\hat{\mu}(Kx)\vd{x}=\int_{\R^d}\hat{\nu}(Ky)\ud{y}.$$
:::

**证明**：要证明的是
$$\int_{\R^d}\vd{x}\int_{\R^d}e^{iKx\cdot \xi}\ud{\xi}=\int_{\R^d}\ud{y}\int_{\R^d}e^{iKy\cdot \xi}\vd{\xi}.$$
直接 Fubini 即可。

:::{.lemma}
$$\int_{\R^d}[1-\Re\hat{\mu}(Kx)]\vd{x}=\int_{\R^d}[1-\Re\hat{\nu}(Ky)]\ud{x}.$$
:::

**证明**：在前一个引理中两边取实部，然后被 1 减去即可。


:::{.corollary}
假设 $\rho$ 是一个 $\R^d$ 上的概率密度，其支集位于闭的单位球 $\bar{B}_1$ 内。设 $M>0$ 使得 $|\hat{\rho}(t)|\leq1/2$ 对任何 $|t|\geq M$ 成立，则对任何 $(\R^d,\B(\R^d))$ 上的概率测度 $\mu$ 和正数 $\alpha>0$ 有
$$\mu\{x\in\R^d:\ |x|\geq\alpha\}\leq 2\int_{\bar{B}_1}\left[1-\Re\hat{\mu}\left(\frac{M}{\alpha}x\right)\right]\rho(x)\dx.$$
:::

**证明**：设
$$\hat{\mu}(t)=\int_{\R^d}e^{it\cdot x}\ud{x},\quad \hat{\rho}(t)=\int_{\R^d}e^{it\cdot x}\rho(x)\dx.$$
令 $K=\frac{M}{\alpha}$，由于 $\rho$ 的支集包含在 $\bar B_1$ 中，所以
$$2\int_{\bar B_1}\bigl[1-\Re\hat{\mu}(Kx)\bigr]\rho(x)\dx=2\int_{\R^d}\bigl[1-\Re\hat{\rho}(Ky)\bigr]\ud{y}.$$
由假设，当 $|y|\ge\alpha$ 时有 $|K y|=\frac{M}{\alpha} |y|\ge M$，从而
$$1-\Re\hat{\rho}(K y)\ge1-|\hat{\rho}(K y)|\ge\frac{1}{2}.$$
故 $|y|\ge\alpha$ 时有
$$2\bigl(1-\Re\hat{\rho}(K y)\bigr)\ge \ind_{\{|y|\ge\alpha\}}(y).$$
这个式子对 $|y|<\alpha$ 也成立，所以同时对 $\mu$ 积分得到
$$2\int_{\R^d}\bigl[1-\Re\hat{\rho}(K y)\bigr]\ud{y}\ge\int_{\R^d}\ind_{\{|y|\ge\alpha\}}\ud{y}=\mu(\{|y|\ge\alpha\}).$$
把左边换回原式即得
$$\mu(\{|x|\ge\alpha\})\le2\int_{\bar B_1}\left[1-\Re\hat{\mu}\left(\tfrac M\alpha x\right)\right]\rho(x)\dx.$$
$\blacksquare$

:::{.corollary}
设 $\{\mu_n\}_{n=1}^\infty$ 是 $(\R^d,\mathcal{B}(\R^d))$ 上的概率测度，且
$\varphi(t)=\lim\limits_{n\to\infty}\hat{\mu}_n(t)$ 处处存在，并且 $\varphi$ 在 $t=0$ 处连续。则 $\{\mu_n\}_{n=1}^\infty$ 是 tight 的。
:::

**证明**：记
$$I_n(\alpha)=2\int_{\bar B_1}\bigl[1-\Re\hat{\mu}_n(\tfrac M\alpha x)\bigr]\rho(x)\dx.$$

由于 $|1-\Re\hat{\mu}_n|\le 2$ 且 $\rho$ 为概率密度，故由控制收敛定理
$$\lim_{n\to\infty}I_n(\alpha)=I(\alpha)=2\int_{\bar B_1}\bigl[1-\Re\varphi(\tfrac M\alpha x)\bigr]\rho(x)\dx.$$

由于 $\varphi$ 在 $0$ 处连续且对每个 $x$ 有 $\tfrac M\alpha x\to 0$，仍由控制收敛定理得
$$I(\alpha)\xrightarrow{\alpha\to\infty}0.$$

给定 $\epsilon>0$。取 $\alpha_1$ 使得 $I(\alpha_1)\le\epsilon/2$。再取 $N$ 使得对所有 $n\ge N$ 有
$$I_n(\alpha_1)\le I(\alpha_1)+\epsilon/2\le \epsilon.$$

从而 $\mu_n(\{|x|\ge \alpha_1\})\le I_n(\alpha_1)\le\epsilon$ 对所有 $n\ge N$ 成立。

对那些 $n<N$，由于 $\hat{\mu}_n$ 作为特征函数在 0 处连续，$\alpha\to\infty$ 时 $I_n(\alpha)\to 0$，因此可取 $\alpha_0$ 使
$$\max_{1\le n<N}\mu_n(\{|x|\ge \alpha_0\})\le \max_{1\le n<N} I_n(\alpha_0)\le\epsilon.$$

令 $R=\max\{\alpha_0,\alpha_1\}$。则

+ 若 $n\ge N$，则 $\mu_n(\{|x|\ge R\})\le \mu_n(\{|x|\ge \alpha_1\})\le\epsilon$；
+ 若 $n< N$，同理 $\mu_n(\{|x|\ge R\})\le \mu_n(\{|x|\ge \alpha_0\})\le\epsilon$。

于是
$$\sup_{n\ge1}\mu_n(\{|x|\ge R\})\le\epsilon.$$
这正是 tightness 的定义。$\blacksquare$

:::{.corollary}
设 $\{\mu_n\}_{n=1}^\infty$ 是 $(\R^d,\mathcal{B}(\R^d))$ 上的概率测度，且
$\varphi(t)=\lim\limits_{n\to\infty}\hat{\mu}_n(t)$ 处处存在，并且 $\varphi$ 在 $t=0$ 处连续。则存在概率测度 $\mu$ 使得 $\varphi=\hat{\mu}$ 并且 $\mu_n\to_w \mu$。
:::

**证明**：由于 $\{\mu_n\}$ 是 tight 的，根据 Prokhorov，存在子序列 $\{\mu_{n_k}\}$ 弱收敛到某个概率测度 $\mu_{n_k}\to_w\mu$。于是
$$\varphi=\lim_{k\to\infty}\hat\mu_{n_k} =\hat{\mu}.$$
从而对整个序列也有
$$\varphi=\lim_{n\to\infty}\hat\mu_{n} =\hat{\mu}.$$
这样我们就证明了 $\varphi=\hat\mu$ 是概率测度 $\mu$ 的 Fourier 变换。

我们断言整个 $\{\mu_n\}$ 都弱收敛到 $\mu$。若不然，存在有界连续函数 $g$ 使得
$$\int_{\R^d} g \,\mathrm{d}\mu_n \nrightarrow \int_{\R^d} g \du.$$
于是对任何 $\epsilon>0$，存在子序列 $\{\mu_{n_k'}\}$ 使得
$$\left|\int_{\R^d} g \,\mathrm{d}\mu_n - \int_{\R^d} g \du\right|\ge\epsilon,\quad \forall k.$$
但是 $\{\mu_{n_k'}\}$ 也是 tight 的，所以再用一次 Prokhorov 定理，存在二级子序列 $\{\mu_{n_k''}\}\subset\{\mu_{n_k'}\}$ 使得 $\mu_{n_k''}\to_w\nu$。于是 $\hat\mu_{n_k''}\to \hat\nu$。我们上面已经证明了 $\hat\mu_{n_k''}\to\hat\mu$，从而 $\hat\mu=\hat\nu$，由 Fourier inversion 有 $\mu=\nu$。即 $\mu_{n_k''}\to_w\mu$。矛盾。$\blacksquare$

# ✅ 26.1 Central Limit Theorem

:::{.theorem}
**Basic Central Limit Theorem**

设 $\{X_n\}_{n=1}^\infty$ 是 i.i.d 的 $L^2$ 随机变量，具有共同的期望 $\E[X_n]=a$ 和 $\mathrm{Var}[X_n]=\sigma^2$。则
$$\frac{S_n-na}{\sigma\sqrt{n}}\to_w \N(0,1).$$
:::

**证明**：记 $Z_n = \frac{S_n-na}{\sigma\sqrt{n}}$。我们只要证明特征函数的收敛
$$\varphi_{Z_n}(t) \to e^{-t^2/2},\quad \forall t\in\R.$$
那么根据 Levy 连续性定理：

+ 若一列特征函数 $\varphi_{Z_n}$ 对每个 $t$ 都有极限 $\varphi(t)$，且 $\varphi$ 在 $t=0$ 处连续，那么
+ $\varphi$ 本身就是某个概率分布的特征函数；
+ $Z_n$ 的分布按弱收敛收敛到这个分布。

就得到 $Z_n\to_w \N(0,1)$，因为 $e^{-t^2/2}$ 显然在 0 处连续，且它就是标准正态的特征函数。

记 $Y_1=X_1-a$，则 $\E Y_1=0$ 且 $\E Y_1^2 = \sigma^2<\infty$，所以 $Y_1$ 的特征函数 $\varphi(t)$ 是 $C^2$ 的。根据 Taylor 展开，
$$\varphi(t) = \varphi(0)+\varphi'(0)t + \frac{1}{2}\varphi''(r(t))t^2,\quad 0<r(t)<t.$$
注意到
$$\varphi'(0) = \E[iY_1 e^{itY_1}]\Big|_{t=0}=i\E Y_1 = 0.$$
所以
$$\varphi(t) = \varphi(0)+\frac{1}{2}\varphi''(r(t))t^2,\quad 0<r(t)<t.$$
利用
$$\lim_{t\to 0}\varphi''(r(t))=\varphi''(0)=-\E Y_1^2 = -\sigma^2.$$
以及熟知的微积分结论
$$\lim_{n\to\infty}\left(1+ \frac{c_n}{n}\right)^n= e^c,\quad c_n\to c.$$
可得
$$\begin{aligned}
\lim_{n\to\infty}\left(\varphi\left(\frac{\xi}{\sigma\sqrt{n}}\right)\right)^n
&=\lim_{n\to\infty}\left(1+\frac{1}{2}\varphi''\left(r\left(\frac{\xi}{\sigma\sqrt{n}}\right)\right)\frac{\xi^2}{\sigma^2 n}\right)^n\\
&=\lim_{n\to\infty}\left(1+ \frac{-\xi^2/2}{n}\right)^n\\
&=e^{-\xi^2/2}.
\end{aligned}$$
$\blacksquare$

:::{.lemma}
**Cramer-Wold Device**
设 $\{X_n\}$ 和 $X$ 都是 $\R^d$ 中的随机向量。则 $X_n\to_w X$ 当且仅当对任何 $\xi\in\R^d$ 有 $\xi\cdot X_n\to_w \xi\cdot X$。
:::

**证明**：如果对 $\xi\in\R^d$ 有 $\xi\cdot X_n\to_w \xi\cdot X$，则
$$\exp(i\xi\cdot X_n)\to_w \exp(i\xi \cdot X).$$
所以
$$\E f(\exp(i\xi\cdot X_n))\to \E f(\exp(i\xi \cdot X)).\quad \forall f\in C_b(\mathbb{C}).$$
取 $f(z)$ 满足 $f(z)=z\,(|z|\leq 1)$ 和 $f(z)=1\,(|z|>1)$，则
$$\varphi_{X_n}(\xi) \to \varphi_X(\xi).$$
由连续性定理可得 $X_n\to_w X$。

反过来，若 $X_n\to_w X$，则对任何实数 $u$，
$$\varphi_{\xi\cdot X_n}(u)=\E[e^{iu\xi\cdot X_n}]\to \E[e^{iu\xi\cdot X}]=\varphi_{\xi\cdot X}(u).$$
由连续性定理，$\xi\cdot X_n\to_w \xi\cdot X$。$\blacksquare$

:::{.note}
这个结论的证明可以直接用 **Portmanteau 定理**：若 $X_n\to_w X$，则对任意**有界连续**函数 $h:\R^d\to\R$，有 $\E[h(X_n)]\to \E[h(X)]$。
:::

:::{.theorem}
**Multivariate CLT**

设 $X_1,X_2,\dots$ 是 $\R^d$ 上的 i.i.d. 随机向量，$\mu=\E X_1\in\mathbb R^d$，协方差矩阵 $\Sigma=\mathrm{Cov}(X_1)$（允许奇异）。令
$$S_n=\sum_{k=1}^n X_k,\qquad Z_n=\frac{S_n-n\mu}{\sqrt n}.$$
则
$$Z_n \ \to_w \ N_d(0,\Sigma).$$
:::

**取任意方向做投影，化为一维问题。**

对任意 $\xi\in\R^d$，令 $Y_{k,\xi}=\xi^\top (X_k-\mu)$。则 $Y_{1,\xi},Y_{2,\xi},\dots$ 是一维 i.i.d.，且
$$\E Y_{k,\xi}=0,\quad \mathrm{Var}(Y_{k,\xi})=\xi^\top\Sigma\xi.$$
并且
$$\xi^\top Z_n=\frac1{\sqrt n}\sum_{k=1}^n Y_{k,\xi}.$$

**对每个 $\xi$ 应用一维中心极限定理。**

由一维 CLT（Lindeberg–Lévy）得
$$\xi^\top Z_n \ \to_w\ \N\big(0,\ \xi^\top\Sigma\xi\big),\quad \forall\xi\in\R^d.$$

**用 Cramér–Wold 得出向量弱收敛。**

既然对所有 $\xi$ 都有 $\xi^\top Z_n \Rightarrow \N(0,\xi^\top\Sigma\xi)$，由 **Cramér–Wold**知 $Z_n\to_w Z$（某极限向量），并且该极限 $Z$ 的任意线性投影都是正态，且
$$\mathrm{Var}(\xi^\top Z)=\xi^\top\Sigma\xi,\quad \forall\xi.$$
这唯一刻画了 $Z$ 的分布为 $\N_d(0,\Sigma)$。因此
$$Z_n \Rightarrow \N_d(0,\Sigma).$$

# 26.2 Infinitely Divisible Distributions

:::{.definition}
$(\R,\B(\R))$ 上的一个概率分布 $\mu$ 称作是无穷可除的，如果对任何正整数 $n$，都存在 $(\R,\B(\R))$ 上的概率分布 $\mu_n$ 使得 $\mu=\mu_n^{\ast n}$。
:::

:::{.theorem}
$\mu$ 是无穷可除分布，当且仅当存在随机变量的三角列
$$\{X_{n,k}\}_{k=1}^{n}$$
满足对每个 $n$，$\{X_{n,k}\}$ 是 i.i.d 的，并且
$$S_n = \sum_{k=1}^{n}X_k \to_w X\overset{d}{=}\mu.$$
:::

**证明**：$\Rightarrow$：由无穷可除的定义，显然。

$\Leftrrow$：固定一个正整数 $l$。




# 31.1 Orthogonal Projections

无要点

# 33.1 Probability Kernels, Part 1

本讲引入了概率核的概念。

设 $(S_i,\B_i), i=1,2$ 是两个可测空间，一个概率核 $Q(x, B):(S_1,\B_2)\to[0,1]$ 是一个二元函数，满足：

1. 对任何 $x\in S_1$，$Q(x,\cdot):\B_2\to[0,1]$ 是 $(S_2,\B_2)$ 上的概率测度。
2. 对任何 $B\in \B_2$，$Q(\cdot, B):S_1\to[0,1]$ 是 $(S_1,\B_1)$ 上的可测函数。

> **引理**：假设 $f(x,y)\in (S_1\times S_2, \B_1\otimes\B_2)$ 是乘积空间上的可测函数，并且是有界的或者非负的，则积分 $$x\to\int_{S_2}f(x,y)Q(x,\dy)$$ 是关于 $x$ 的可测函数。

此引理不难从简单函数 $\ind_{B_1\times B_2}(x,y)=\ind_{B_1}(x)\ind_{B_2}(y)$ 出发，使用函数形式的 Dynkin 引理得到。

由此对任何 $(S_1,\B_1)$ 上的测度 $\mu$，我们可以定义乘积空间 $(S_1\times S_2, \B_1\otimes\B_2)$ 上的乘积测度 $\mu\otimes Q$，这个乘积测度是随 $x$ 变化而变化的：
$$\mu\otimes Q(E)=\int_{S_1}\mu(\dx)\int_{S_2}\ind_{C}(x,y)Q(x,\dy).$$
不过这真的是一个概率测度吗？你可以用积分的线性性质立刻看出它是有限可加的，并且利用积分项有界和控制收敛定理立刻看出它是可数可加的，所以确实是个概率测度。

有了概率核的乘积测度，我们自然要研究对这种测度的积分。由于这个测度本身就是通过对示性函数积分来定义的，所以其上的积分也具有类似的性质：

:::{.lemma}
假设 $f(x,y)$ 是乘积空间的可测函数，并且是有界或者非负的，则
$$\int_{S_1\times S_2}f\,\mathrm{d}(\mu\otimes Q) = \int_{S_1}\mu(\dx)\int_{S_2}f(x,y)Q(x,\dy).$$
:::

后面花了很大力气证明当 $Q(x, \cdot)=\widetilde{Q}(x,\cdot)$ 对几乎处处的 $x$ 成立时有 $\mu\otimes Q=\mu\otimes\widetilde{Q}$。没仔细看。

# 33.2 Regular Conditional Distributions

本讲使用概率核给出了 $\E[f(X, Y)\mid X=x]$ 这种条件期望的严格定义。

:::{.theorem}
设 $(\Omega,\F,\P)$ 是一个概率空间，$(S_i,\B_i),\,i=1,2$ 是两个可测空间，$X:(\Omega,\F)\to(S_1,\B_1),\,Y:(\Omega,\F)\to(S_2,\B_2)$ 是两个随机变量。于是 $(X,Y):(\Omega,\F)\to(S_1\times S_2,\,\B1\otimes\B_2)$ 是随机向量。记 $\mu_{X,Y}$ 为此随机向量在 $(S_1\times S_2,\,\B1\otimes\B_2)$ 上 push forward 给出的测度，$\mu_X$ 是 $X$ 在 $(S_1,\B_1)$ 上 push forward 给出的测度。如果存在概率核 $Q(x,B)$ 使得 $$\mu_{X,Y}=\mu_X\otimes Q.$$

则对任何 $f\in L^1(S_1\times S_2,\B1\otimes\B_2)$ 有
$$\E[f(X,Y)\mid X = x] = \int_{S_2}f(x,y)Q(x, \dy).$$
:::

这里需要解释 $\E[f(X,Y)\mid X = x]$ 这个记号的含义。这里其实引用了条件期望 (后面才会讲到) 的性质：$\E[f(X,Y)\mid X]$ 是一个关于 $\sigma(X)$ 可测的随机变量，从而由 Doob-Dynkin 表示定理，存在可测函数 $g$ 使得 $\E[f(X,Y)\mid X] = g(X)$，所以 $\E[f(X,Y)\mid X = x] = g(x)$。这个定理说的就是
$$\E[f(X,Y)\mid X = x] = g(x) = \int_{S_2}f(x,y)Q(x, \dy).$$

**证明**：怎么证明两个关于 $\sigma(X)$ 可测的函数 (几乎处处) 相等呢？我们可以给它们同时乘以 $h(x)$，这里 $h(x)$ 是任何一个关于 $\sigma(X)$ 可测的有界函数，然后证明它们对 $\mu_X$ 积分以后的值相等，则这两个可测函数必相等。

$g(x)h(x)$ 这个函数对 $\mu_X$ 积分，根据积分变量替换定理，正是 $\E[g(X)h(X)]$。而根据 $g(x)$ 的定义和条件期望的性质，
$$\E[g(X)h(X)]=\E[\E[f(X,Y)|X]h(X)] = \E[\E[f(X,Y)h(X)|X]] = \E[f(X, Y)h(X)].$$
注意右边的期望悄悄地变成了关于 $\mu_X\otimes Q$ 的积分。这是因为上式最后的等号使用了条件期望的 telescoping 性质，而 $f(X,Y)g(X)$ 是关于 $\B_1\otimes\B_2$ 可测的函数。

另一方面，$h(x)\int_{S_2}f(x,y)Q(x,\dy)$ 这个函数对 $\mu_X$ 积分，正是
$$\int_{S_1}\mu(\dx)\int_{S_2}f(x,y)h(x)Q(x,\dy).$$
所以
$$\begin{align*}
\E[f(X,Y)h(X)] &= \int_{S_1\times S_2}f(x,y)h(x)\mu_{X,Y}(\dx\dy) \\
&= \int_{S_1\times S_2}f(x,y)h(x)\mu_X\otimes Q \\
&= \int_{S_1}\mu_X \int_{S_2}f(x,y)h(x)Q(x,\dy) \\
&= \int_{S_1}\mu_X h(x)\int_{S_2}f(x,y)Q(x,\dy).
\end{align*}$$
正是所要证明的。

不过在上面的证明中我们都假定了所有的可积性的前提，我们实际上需要假定 $f(x,y)$ 有界才能确保推导成立。对一般的 $f(x,y)\in L^1(S_1\times S_2,\B_1\otimes \B_2)$，我们需要用有界函数列 $f_n\to f$ 且此收敛是在 $L^1(\mu_{X,Y})$ 意义下的。由于条件期望是 contraction，所以
$$\E[f_n(X, Y)| X] \xrightarrow{L^1} \E[f(X,Y)|X].$$
此外我们已经证明了
$$\E[f_n(X, Y)| X] = \left.\int_{S_2}f_n(x,y)Q(x,\dy)\right|_{x=X}.$$
所以只要证明
$$\left.\int_{S_2}f_n(x,y)Q(x,\dy)\right|_{x=X} \xrightarrow{L^1} \left.\int_{S_2}f(x,y)Q(x,\dy)\right|_{x=X}.$$
即可。这个 $L^1$ 收敛的意思是对 $\mu_X$ 取积分，因此我们要估计
$$\int_{S_1}\mu(\dx)\int_{S_2}|f_n(x,y)-f(x,y)|Q(x,\dy).$$
这不正是 $|fn-f|$ 对乘积测度的积分嘛，而我们已经知道了它是 $L^1$ 收敛的了。

所以如果我们能把一个联合分布分解为边际分布和一个概率核的乘积，则我们就得到了条件概率的一个表示。

> **问题**：$\mu_{X,Y}$ 总可以表示为 $\mu_X\otimes Q$ 的形式吗？

:::{.theorem}
如果概率核 $Q(x, B)$ 满足
$$\P(Y\in B | X=x) = Q(x, B)$$
(这个条件等价于
$$\E[h(Y) | X] = \left.\int h(y) Q(x,\dy)\right|_{x=X}.$$
对任何有界的可测函数 $h(y)$ 成立)

则对 $f(x,y)$ 同样有
$$\E[f(X,Y) | X] = \left.\int f(x,y) Q(x,\dy)\right|_{x=X}.$$
成立。
:::

这个定理可以先从 $f(x,y)=f(x)\otimes g(y)$ 形式的函数出发，然后用 Dynkin 函数系引理得到。

总结一下，至此我们讨论了：

1. 如果 $\mu_{X,Y}=\mu_X\otimes Q$，那我们就有了 $\E[f(X,Y)|X]$ 的计算方法：积分 $\int_{S_2}f(X,y)Q(X,\dy)$。特别地我们可以算条件概率了。
2. 反之如果我们有一个概率核给出条件概率：$\P(Y\in B | X=x) = Q(x, B)$，那么它就给出 $\mu_{X,Y}$ 的一个分解：$\mu_{X,Y}=\mu_X\otimes Q$。

本讲后面讨论了离散和连续情形概率核是什么样子的。

# 34.1 Probability Kernels, Part 2

本讲介绍了概率核的本质是 Markov 生成元，即可测函数空间上的非负线性泛函。

当有一个概率核 $Q: S_1\times \B_2\to[0, 1]$ 时，
$$f\to \int_{S_2}f(y)Q(x,\dy),\quad f\in\mathbb{B}(S_2,\B_2)$$
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
$$L(f) = \int_S f(y)Q(x,\dy)$$
成立。这个很容易从示性函数出发取极限得到。

如果 $Q_1,Q_2$ 是两个 $(S,\B)$ 到自身的概率核，则 $L_{Q_1}L_{Q_2}$ 也满足性质 1-4，因而也是由一个概率核给出：存在概率核 $Q$ 使得 $L_Q = L_{Q_1}L_{Q_2}$。我们可以把 $Q$ 明确的写出来：
$$L_Q(f) = L_{Q_1}L_{Q_2}(f)=\int_{S}Q_1(x,\dy)\left(\int_Sf(z)Q_2(y,\dz)\right).$$
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
&=\left.\int g(y)Q_{n+1}(x,\dy)\right|_{x=X_n}\\
&=L_{n+1}(g)(X_n).\end{align*}$$
但是 $L_{n+1}(g)(X_n)$ 是 $X_n$ 的函数，所以它关于 $\sigma(X_n)$ 是可测的，而且是有界可测，从而两边对 $\sigma(X_n)$ 这个子 $\sigma$- 域取条件期望，并注意到 $\sigma(X_n)\subset\F_n$ 有
$$\E[g(X_{n+1})|\F_n] = \E[g(X_{n+1})|X_n].$$
这正是 Markov 性质。

# 35.1 Stochastic Processes

本讲介绍了随机过程的定义，以及它们的有限维分布、滤过 (filtration)、适应 (adapted) 等概念。

# ✅ 36.1 The Markov property

:::{.definition}
我们称随机过程 $X_t:(\Omega,\F_t)\to(S_,\B)$ 具有 Markov 性质，如果对任何有界可测函数 $f\in\mathbb{B}(S,\B)$ 有
$$\E[f(X_t)|\F_s] = \E[f(X_t)|X_s],\quad \ae\ \forall s < t.$$
:::
即对 $s$ 时刻之前的所有历史取条件期望，等于只对 $s$ 时刻的历史取条件期望。

根据 Doob-Dynkin 引理，不难验证这个定义等价于
$$\E[f(X_t)|\F_s] = F(X_s),\quad \ae\text{ for some } F\in\mathbb{B}(S,\B).$$

上面定义看起来是说，Markov 过程是关于过去和当前的。但实际上它也告诉了我们关于未来的信息：

:::{.corollary}
$$\E[Y|\F_s] = E[Y|X_s],\quad \forall Y\in\mathbb{B}(\Omega, \F^X_{\geq s}).$$
注意，$Y$ 来自 $\F^X_{\geq s}=\sigma(X_t:t\geq s)$，而不是 Filtration $\F_{\geq s}$。
:::

这个推论的证明很有意思，要用到 Dynkin multiplicative system。

**证明**：考虑所有形如
$$Y = g_0(X_{t_0})g_1(X_{t_1})\cdots g_n(X_{t_n})$$
的函数，这里 $s =t_0<t_1<\cdots <t_n$，且每个 $g_i$ 都是有界可测的，从而 $Y$ 也是有界可测的，并且 $Y\in\F^X_{\geq s}$。

:::{.lemma}
设
$$\mathcal{M} = \{g_0(X_{t_0})g_1(X_{t_1})\cdots g_n(X_{t_n})\mid n\in\mathbb{Z}_{\geq0},\ s=t_0<t_1<\cdots<t_n, g_j\in\mathbb{B}(S,\B)\}.$$
则 $\mathcal{M}$ 是乘法系，且 $\sigma(M) = \F^X_{\geq s}$。
:::

引理的证明很简单，这里省略。

回到推论的证明。

设 $\mathcal{H}$ 是所有满足推论要求的函数构成的空间。显然 $\mathcal{H}$ 满足：

1. 是向量空间；
2. 包含常函数 1；
3. 对有界收敛下封闭

我们只要再证明 $\mathcal{H}$ 包含乘法系 $\mathcal{M}$，从而根据 Dynkin 函数系引理它包含所有关于 $\sigma(\mathcal{M})=\F^X_{\geq s}$ 可测的有界可测函数，这正是所要证明的。

根据 Markov 性质和 Doob-Dynkin 引理，我们可以记 $\E_{\F_{t_{n-1}}}[g_n(X_{t_n})]=h(X_{t_{n-1}})$。于是

$$\begin{aligned}\E_{\F_s}[Y]&=\E_{\F_s}[E_{\F_{t_{n-1}}}[Y]]\\
&=\E_{\F_s}[g_0(X_{t_0})\cdots g_{n-1}(X_{t_{n-1}})h(X_{t_{n-1}})]\\
&=\E_{\F_s}[g_0(X_{t_0})\cdots \widetilde{g_{n-1}}(X_{t_{n-1}})]\\
&=\cdots\\
&=\E_{\F_s}[F(X_{s})]\\
&=F(X_s)
\end{aligned}$$
再利用 $\E_{X_s}[Y]=\E_{X_s}[\E_{\F_s}[Y]]=\E_{X_s}[F(X_s)]=F(X_s)$ 即得所证。$\blacksquare$

上面是 Markov 性质的第一种刻画：将对未来可测的函数对当前和过去取条件期望，相当于只对当前取条件期望。

本讲接下来用条件独立给出了 Markov 性质的第二种刻画：

:::{.theorem}
随机过程 $\{X_t\}$ 满足 Markov 性质当且仅当 $\F_s$ 和 $\F^X_{\geq s}$ 关于 $\sigma(X_s)$ 是条件独立的，即对任何有界可测函数 $Z\in\mathbb{B}(\Omega,\F_s)$，$Y\in\mathbb{B}(\Omega,\F^X_{\geq s})$ 有
$$\E[ZY\mid X_s] = \E[Z\mid X_s]\cdot \E[Y\mid X_s].$$
:::

注意到 $\F_s\supset\sigma(X_t: t\leq s)$ 以及 $\F^X_{\geq s}=\sigma(X_t:t\geq s)$，所以这个结论可以概括为：对 Markov 过程，给定当下，过去与未来独立。

**证明**：

$\Rightarrow$：由于 $Z$ 关于 $\F_s$ 可测，以及 Markov 性质，有
$$\E[ZY\mid\F_s] = Z\E[Y\mid \F_s]=Z\cdot \E[Y\mid X_s].$$
两边同时对 $\sigma(X_s)$ 取条件期望，并利用条件期望的 Tower 性质，得到
$$\E[ZY\mid X_s] = \E[Z\mid X_s]\cdot \E[Y\mid\F_s].$$

$\Leftarrow$：对任意 $Z\in\mathbb{B}(\Omega,\sigma(X_s))$，考虑 $\E[Z f(X_t)]$。由条件独立得：

$$\E[Z\cdot f(X_t)]= \E\big[\E[Z f(X_t)\mid X_s]\big]= \E\big[\E[Z\mid X_s]\cdot\E[f(X_t)\mid X_s]\big]=\E[Z\cdot h(X_s)].$$
其中 $h(X_s):=\E[f(X_t)\mid X_s]$。另一方面，根据条件期望定义，
$$\E[Z\cdot f(X_t)] = \E\big[Z \cdot\E[f(X_t)\mid \F_s]\big].$$
两个式子的右边相等，所以
$$\E\big[Z\cdot\E[f(X_t)\mid \F_s]\big]
= \E\big[Z\cdot h(X_s)\big].$$
而这正是条件期望的“投影特征”：由 $Z$ 的任意性，必然有
$$\E[f(X_t)\mid\F_s] = h(X_s) = \E[f(X_t)\mid X_s],\quad \ae$$
$\blacksquare$


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


# ✅ 48.1 Uniform Integrability

这一讲介绍了随机变量集合的一致可积性，要点非常多。

对任何 $L^1$ 的随机变量 $X$，总是可以找一个紧集 $K$，使得 $|X|$ 在 $K^c$ 上的积分任意小：对任何 $\epsilon>0$，存在 $a>0$ 使得 $\E[|X|:\ |X|\geq a]<\epsilon$。但是如果是一族可积的随机变量的话，这个统一的 $a$ 就未必存在了。

如果这样的 $a$ 总是存在的话，我们就称这族随机变量是一致可积的。

:::{.definition}
随机变量列 $\{X_n\}$ 称作是一致可积的 (UI) 的，如果它们满足以下条件：

1. 每个 $X_i$ 都是 $L^1$ 的。
2. 对任何 $\epsilon>0$，存在 $a>0$ 使得 $\sup_n\E[X_n:\ |X_n|\geq a]< \epsilon$。
:::

不难验证如果 $\{X_n\}$ 被一个可积随机变量控制，则它们是一致可积的：

:::{.example}
如果 $|X_n|\leq Y,\ Y\in L^1$，则 $\{X_n\}$ 是一致可积的。
:::

这是因为被积函数和积分区域都可以放大：$\E[|X_n|:\ |X_n|\geq a]\leq\E[|Y|:\ |Y|\geq a]$。

:::{.example}
如果 $\{X_n\}$ 是 $L^p,\,p>1$ 一致有界的：$\sup_n\E |X_n|^p<\infty$，则 $\{X_n\}$ 是一致可积的。
:::

这是因为被积函数可以放大：
$$\E[|X|: |X|\geq a]\leq \E[|X|\cdot\frac{|X|^{p-1}}{a^{p-1}}: |X|\geq a] = \frac{1}{a^{p-1}}\E[|X|^p: |X|\geq a]\leq \frac{M}{a^{p-1}}.$$

这个例子中的 $p>1$ 是不能减弱为 $p\geq1$ 的。不过我们可以证明 UI 的变量族必然是 $L^1$ 一致有界的：

:::{.theorem}
若 $\{X_n\}$ 一致可积，则 $\sup_n E|X_n| <\infty$。
:::

**证明**：取 $a$ 使得 $\sup_n \E[|X_n|: |X_n|\geq a] < 1$，则不难证明 $\E |X_n| < a+1$。$\blacksquare$

现在我们来给出一致绝对连续的概念，并将说明**一致可积 = $L^1$ 一致有界 + 一致绝对连续**。

:::{.definition}
随机变量序列 $\{X_n\}$ 是一致绝对连续的，如果对任何 $\epsilon>0$，都存在 $\delta>0$，使得只要集合 $B$ 满足 $\mu(B)<\delta$，就有 $\sup_n\E[|X_n|: B]<\epsilon$。
:::

:::{.theorem}
$\{X_n\}$ 一致可积当且仅当它们 $L^1$ 一致有界且一致绝对连续。
:::
**证明**：

$\Rightarrow$: $L^1$ 一致有界已经有了。下证一致绝对连续性质。对任何可测集 $B$，我们考虑用一个待定的 $a>0$ 把积分 $\E[|X_n|: B]$ 变成
$$\E[|X_n|: B,\ |X_n|\geq a] + \E[|X_n|: B,\ |X_n|<a].$$
第一项小于等于  $\E[|X_n|: |X_n|\geq a]$，由一致可积性我们可以取 $a$ 使得它小于 $\epsilon/2$。第二项小于等于 $a\mu(B)$。所以只要 $\mu(B)<\delta=\frac{\epsilon}{2a}$ 即可。

$\Leftarrow$: 我们可以料想 $\{|X_n|\geq a\}$ 的测度是会一致地越来越小的：

$$\P(\{|X_n|\geq a\})=\E[1: |X_n|\geq a]\leq \E[\frac{|X_n|}{a}: |X_n|\geq a]\leq \frac{\E|X_n|}{a}=\frac{K}{a}.$$
其中 $K$ 是 $\{X_n\}$ 的 $L^1$ 上界。所以确实可以取 $a$ 适当大使得 $\{|X_n|\geq a\}$ 的测度一致地小于一致绝对连续性中所需要的那个 $\delta$。

:::{.theorem}
一致可积性是平移不变的： $\{X_n\}$ 一致可积且 $Y\in L^1$，则 $\{X_n+Y\}$ 也是一致可积的。
:::

为此只要证明它们一致 $L^1$ 有界且一致绝对连续。其中一致 $L^1$ 有界是显然的。

对于一致绝对连续，我们有
$$\E[|X_n+Y|: B]\leq\E[|X_n|:B] + \E[|Y|: B].$$
取 $\delta_1$ 使得只要 $\mu(B)<\delta_1$ 就有 $\E[|X_n|:B]<\frac{\epsilon}{2}$，再取 $\delta_2$ 使得只要 $\mu(B)<\delta_2$ 就有 $\E[|Y|:B]<\frac{\epsilon}{2}$，则 $\delta=\min\{\delta_1,\delta_2\}$ 符合要求。

最后一个重要定理是：**依 $L^1$ 范数收敛 = 一致可积 + 依测度收敛**。

:::{.theorem}
随机变量序列 $X_n\xrightarrow{L^1} X$ 当且仅当 $X_n\xrightarrow{\P}X$ 且 $\{X_n\}$ 一致可积。
:::
**证明**：

$\Rightarrow$：$L^1$ 收敛当然可以得出依测度收敛 (Markov 不等式一步即得)。要证明一致可积，我们只要根据平移不变性，证明 $Y_n=X_n-X$ 是一致可积的即可。固定 $\epsilon>0$。取 $N$ 使得 $\sup_{n\ge N}\E|Y_n|<\epsilon$，于是对所有 $a>0$，
$$
\sup_{n\ge N}\E\big[\,|Y_n|\mathbf 1_{\{|Y_n|\ge a\}}\,\big]\le \sup_{n\ge N}\E|Y_n|<\epsilon.
$$
对有限个指标 $n<N$，由于每个 $Y_n\in L^1$，存在 $a$ 足够大使
$$
\max_{n<N}\mathbb E\big[\,|Y_n|\mathbf 1_{\{|Y_n|\ge a\}}\,\big]<\epsilon.
$$
综上得到
$$
\sup_{n}\mathbb E\big[\,|Y_n|\mathbf 1_{\{|Y_n|\ge a\}}\,\big]<\epsilon
$$
即 $\{Y_n\}$ 一致可积。

$\Leftarrow$: $Y_n\ind_{\{|Y_n|<a\}}$ 是一个不大于 $a$ 的函数序列，且依测度收敛到 0，从而由**依测度的控制收敛定理**有 $Y_n\ind_{\{|Y_n|<a\}}\xrightarrow{L^1}0$。
从而
$$\|X_n-X\|_{L^1} = \E[Y_n\ind_{\{|Y_n|<a\}}] + \E[Y_n\ind_{\{|Y_n|\geq a\}}].$$
第一项取 $n$ 大于某个 $N$ 就可以任意小，第二项对有限多个 $n\le N$，$a$ 足够大也可以任意小，得证。$\blacksquare$

:::{.corollary}
正则鞅 $X_n = \E[X|\mathcal{F}_n]$ 是一致可积的。
:::

反过来也是对的：鞅序列如果是一致可积的，则一定是正则鞅。


# 49.1 Optional Stopping and Sampling

这一节介绍了停时，以及停时鞅序列 $\{X_{n\wedge \tau}\}$ 的性质。

一个简单的股票市场模型：设 $\{X_n\}_{n=0}^\infty$ 是股票价格，$\{U_n\}_{n=1}^\infty$ 是你的投资策略，即在时刻 $n-1$ 买入 $U_n$ 并在时刻 $n$ 抛出。或者说，$U_n$ 是你在 $(n-1,n]$ 这个时间区间内的股票交易数量，那么到时刻 $n$ 时，你的净收益为
$$I_n(U,X) = \sum_{j=1}^n U_j(X_j-X_{j-1}).$$
这里 $U_n$ 必须是关于 $\F_{n-1}=\sigma(X_0,X_1,\ldots,X_{n-1})$ 可测。

第一个重要观察是：

:::{.theorem #martingale-discrete-integration}
如果 $\{X_n\}$ 是鞅/下鞅/上鞅，并且 $U_n\geq0$，则 $I_n(U,X)$ 也是鞅/下鞅/上鞅。
:::

证明：对下面的恒等式两边关于 $\F_n$ 取条件期望即可。
$$I_{n+1}(U,X) = \underbrace{I_{n}(U,X)}_{\in\F_n} + \underbrace{U_{n+1}}_{\in\F_n}\underbrace{(X_{n+1}-X_{n})}_{\rm (sub/sup)martingale}.$$

我们可以设定两个随机时间，比如 $\sigma$ 是股票首次低于 1 美元的时刻, 这时立刻买入；$\tau$ 是股票首次高于 10 美元的时刻，这时立刻抛出；在区间 $(\sigma,\tau]$ 中保持持有股票，即 $U_j=\ind_{\sigma<j\leq \tau}$。于是 $U_j\ind_{n\geq j}=\ind_{(\sigma\wedge n, \tau\wedge n]}(j)$。

那么净收益
$$I_n(U,X) = \sum_{j=1}^n \ind_{\sigma\wedge n<j\leq \tau\wedge n} (X_j-X_{j-1})=X_{\tau\wedge n} - X_{\sigma\wedge n}.$$

特别地，取 $\sigma=0$，则 $U_j=\ind_{j\leq\tau}$，则我们有如下结论：

:::{.theorem #stopping-time-also-martingale}
如果 $\{X_n\}$ 是鞅，那么 $\{X_{n\wedge \tau}\}$ 也是鞅。
:::

证明：首先每一项 $X_{n\wedge \tau}$ 可以看成是一个关于 $X_1,\ldots,X_n$ 的部分和：

$$X_{n\wedge \tau} = \sum_{k=0}^n\ind_{\tau=k}X_k.$$

显然 $X_{n\wedge \tau}$ 是可积的。

另一方面在 @Pre:martingale-discrete-integration 中取 $U_n=\ind_{n\leq\tau}$，则 $X_{n\wedge \tau} - X_0 = I_n(U,X)$ 仍然是鞅，那么加上一个 $X_0$ 得到的 $X_{n\wedge\tau}$ 当然还是鞅。

# ✅ 49.2 Hölder's Inequality

:::{.lemma}
**Young 不等式**
给定 $a,b\ge0$，$p,q>1$ 且 $\tfrac1p+\tfrac1q=1$，有
$$ab\le\frac{a^p}{p}+\frac{b^q}{q}.$$
且当且仅当 $a^p=b^q$ 取等号。
:::

**证明**：对任意 $u,v\ge0$，$\theta\in(0,1)$，
$$u^{\theta}v^{1-\theta}\le \theta u+(1-\theta)v.$$
这是因为 $\ln$ 函数凹，Jensen 不等式给出
$$\ln(\theta u+(1-\theta)v)\ge \theta\ln u+(1-\theta)\ln v.$$
两边取指数即得。

取 $\theta=\frac1p,1-\theta=\frac1q,u=a^p,v=b^q$ 代入即得 Young 不等式，且等号当且仅当 $a^p=b^q$。$\blacksquare$


设 $1/p+1/q=1$，$1<p,q<\infty$。对任意 $a,b\ge 0$ 有 **Young 不等式**
$$ab\le \frac{a^{p}}{p}+\frac{b^{q}}{q}.$$
令
$$u(x)=\frac{|f(x)|}{\|f\|_p},\qquad v(x)=\frac{|g(x)|}{\|g\|_q}.$$
则逐点有
$$u(x)v(x)\le u(x)^{p}/p+v(x)^{q}/q.$$
两边对 $\mu$ 积分并用 $\int u^{p}=1,\ \int v^{q}=1$ 即得 Hölder 不等式。

$p=1,q=\infty$ 时
$$\int |fg|\le \|g\|_{\infty}\int |f|=\|f\|_1\|g\|_{\infty}.$$
故结论成立。
