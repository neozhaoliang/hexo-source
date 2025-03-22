---
title: "Lebesgue-Stieltjes 测度的构造"
date: 2012-09-08
categories: [Durrett 概率论批判]
url: "lebesgue-stieltjes measure"
---

\newcommand{\ind}{\mathbb{1}}
\newcommand{\F}{\mathcal{F}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\B}{\mathcal{B}}
\newcommand{\A}{\mathcal{A}}
\newcommand{\AS}{\mathcal{A}(\mathcal{S})}
\newcommand{\SS}{\sigma(\mathcal{S})}
\newcommand{\S}{\mathcal{S}}
\newcommand{\bu}{\overline{\mu}}


本文是针对 [@Durrett2019 section 1.1] 的批判笔记，介绍 Lebesgue-Stieltjes 测度的构造。我建议读者不妨先浏览一下 Durrett 的教材，看看读起来是否费劲。如果你觉得确实如此，那就对了，继续阅读本文吧。

我只针对 $\R^1$ 的情形作介绍，$\R^n$ 上的一般情形需要有一些啰嗦的条件保证半代数上的有限可加性，但本质是一样的。

<!--more-->

我们采用和 Durrett 教材相同的记号，用 $A\sqcup B$ 表示两个互不相交的集合 $A,B$ 的并集 (disjoint union)。

# 目标

设 $F$ 是 $\R^1$ 上的任一**单调递增**、**右连续**的函数，我们将在 $\R^1$ 上构造 Lebesgue-Stieltjes 测度 $(\Omega,\F,\mu)$，其中 $\Omega=\R^1$，$\F$ 是全体 Lebesgue 可测集，$\mu$ 满足对任何半开区间 $(a,b]$ 有
$$\mu((a,b])=F(b)-F(a),\quad -\infty \leq a \leq b \leq \infty.$$
Legesgue 可测集是 Borel 可测集 $\B(\R^1)$ 的完备化，所以我们只要在 $\B(\R^1)$ 上构造 $\mu$ 即可。但 $\B(\R^1)$ 中的可测集也可能很复杂，所以我们从一个简单得多的集合族出发，逐步构造 $\B(\R^1)$ 上的测度。

# 第一步：半开区间上的有限可加测度

记 $\S$ 是所有左开右闭的区间构成的集合：

$$\S = \{ (a,b] \mid -\infty\leq a \leq b \leq \infty\}.$$

我们允许 $a,b$ 等于无穷，比如 $b=\infty$ 表示区间 $(a,\infty)$，$a=-\infty$ 表示区间 $(-\infty,b]$。约定 $a=b$ 时 $(a,a]=\emptyset$。

$\S$ 可以生成 $\B(\R^1)$，我们就从 $\S$ 开始构建测度 $\mu$。

集合族 $\S$ 有如下的性质：

:::{.simple #semi-algebra}

1. $\emptyset\in \S$。
2. 对任何 $A,B\in\S$ 有 $A\cap B\in \S$，即 $\S$ 对交运算是封闭的。
3. 对任何 $A\in \S$，$A^c$ 是 $\S$ 中有限多个不相交的元素的并。
:::

满足上述三个条件的集合族叫做 **半代数** (semi-algebra)。注意在条件 3 中，实际上 $A^c$ 是 $\S$ 中至多两个不相交的区间的并，因为
$$(a,b]^c=(-\infty,a]\sqcup(b,\infty).$$
但是更高维的 $\R^n$ 中的柱集 (cylinder set)
$$(a_1,b_1]\times\cdots\times(a_k,b_k]$$
的补是有限多个不相交柱集的并。

定义 $\S$ 上的测度 $\bu$ 如下：
$$\bu((a, b]) = F(b) - F(a),\quad (a,b]\in\S.$$
目前 $\bu$ 只是半代数 $\S$ 上的集合函数，虽然我们用了测度这个称呼，但它还远不是最终要构造的测度 $\mu$，所以我们用记号 $\bu$ 加以区别。

$\bu$ 作为半代数 $\S$ 上的测度满足 **有限可加性质**：若 $\{A_i\}_{i=1}^m \in\S$ 满足 $\sqcup_{i=1}^m A_i = A\in \S$，则
$$\sum_{i=1}^m\bu(A_i)=\bu(A).$$

这是显而易见的，因为对两个不相交的集合 $A,B\in\S$ 满足 $A\sqcup B\in\S$，那只有可能是
$$A=(a,c],\ B=(c,b],\ A\sqcup B  = (a, b].$$
所以
$$\bu(A\sqcup B) = F(b)-F(a)=F(b)-F(c) + F(c)-F(a)=\bu(A)+\bu(B)$$
是成立的。既然 $\bu$ 对两个不相交集合是可加的，那就对任何有限的不交并是可加的。

至此，我们在半代数 $\S$ 上构造了一个有限可加的测度 $\bu$。下一步是把 $\bu$ 扩张为代数上的有限可加测度。

# 第二步：代数上的有限可加测度

我们称一个集合族 $\A$ 是 **代数**，如果它满足前面 [半代数定义](#semi-algebra) 中的前两个条件，但是把第三个条件换成

> 3. 对任何 $A\in \A$ 有 $A^c\in\A$。

我们用记号 $\AS$ 表示包含半代数 $\S$ 的最小代数，或者等价地说，$\AS$ 是 $\S$ 生成的代数，则有如下结论：

:::{.theorem .unnumbered}
$$\AS = \{\,\text{all finite disjoint unions of sets from } \S\,\}.$$
:::

证明：见 [@Durrett2019 Lemma 1.1.7]。

我们可以将 $\S$ 上的有限可加测度 $\bu$ 扩展为 $\AS$ 上的有限可加测度。实际上这种扩展是唯一的。设 $A\in\AS$ 且 $A=\sqcup_{i=1}^m A_i,\,A_i\in\S$，规定
$$\bu(A) = \sum_{i=1}^m\bu(A_i).$$
这个定义不依赖于 $A$ 的表示方式，证明见脚注 [^1]。

至此我们就得到了代数 $\AS$ 上的有限可加测度 $\bu$。

# 第三步：代数上的可数可加测度

我们已经看到，将 $\S$ 上的有限可加测度扩展到 $\AS$ 上是轻而易举的，不需要任何限制条件。但是进一步扩展为 $\AS$ 上的可数可加测度，就是相当不平凡的一步了。**这一步在一般的测度空间中并不总是能够成功**。在构造 Lebesgue-Stieltjes 测度时，我们要用到 $\R^1$ 中紧集的性质。

有意思的是，为了保证 $\bu$ 在 $\AS$ 是可数可加的，我们只需要验证一个更简单的条件：$\bu$ 在 $\S$ 上是次可数可加的。

:::{.lemma .unnumbered #sub-additive}
代数 $\AS$ 上的有限可加测度 $\bu$ 是 **可数可加的**，当且仅当 $\bu$ 限制在半代数 $\S$ 上是 **次可数可加的**。
:::

:::{.note}

1. $\bu$ 在 $\AS$ 上可数可加是指，如果 $\{A_n\}_{n=1}^\infty\in\AS$ 互不相交，并且 $\sqcup_{n=1}^\infty A_n\in\AS$，则
   $$\bu(\sqcup_{n=1}^\infty A_n)=\sum_{n=1}^\infty\bu(A_n).$$

2. $\bu$ 在 $\S$ 上次可数可加是指，如果 $\{A_n\}_{n=1}^\infty\in\S$ 互不相交，并且 $\sqcup_{n=1}^\infty A_n\in\S$，则 $\bu(\sqcup_{n=1}^\infty A_n)\leq\sum_{n=1}^\infty\bu(A_n)$。
:::

我请你再次阅读这个引理，明确它的前提条件和重要意义。实际上，在代数 $\A$ 上，从有限可加性总是可以推出超可数可加性的；要验证次可数可加性，我们只要下降到更简单的半代数 $\S$ 上验证即可。

**证明**：$\Rightarrow$ 是显然的，可数可加必然蕴含次可数可加。

$\Leftarrow$：要论证 $\bu$ 是 $\AS$ 上的可数可加测度，我们只要论证它同时是超可数可加的和次可数可加的。

超可数可加：设 $\{A_n\}_{n=1}^\infty \in \AS$ 互不相交，并且 $\sqcup_{n=1}^\infty A_n \in \AS$。由于对每个 $n$ 有 $\sqcup_{i=1}^n A_i \subset \sqcup_{i=1}^\infty A_i$，以及 $\bu$ 作为 $\AS$ 上的有限可加测度是单调的，所以
$$\underbrace{\sum_{i=1}^n\bu(A_i)=\bu(\sqcup_{i=1}^n A_i)}_{\bu \text{ finitely additive on } \AS} \leq \bu(\sqcup_{i=1}^\infty A_i).$$
即 $\bu(\sqcup_{i=1}^\infty A_i)$ 是所有部分和 $\sum_{i=1}^n\bu(A_i)$ 的上界。令 $n\to\infty$ 即得超可数可加性。

次可数可加：每个 $A_n$ 以及 $\sqcup_{n=1}^\infty A_n$ 作为 $\AS$ 中的元素可以写成 $\S$ 中元素的有限不交并。设
$$\sqcup_{n=1}^\infty A_n = \sqcup_{j=1}^N E_j,\quad A_n = \sqcup_{i=1}^{N_n} F_{n,i}.$$
其中每个 $E_j, F_{n,i}\in\S$。则
$$E_j = \sqcup_{n=1}^\infty (A_n\cap E_j)=\sqcup_{n=1}^\infty\sqcup_{i=1}^{N_n}F_{n,i}\cap E_j.$$
根据 $\bu$ 在 $\S$ 上的次可数可加性，有
$$\bu(E_j)\leq \sum_{n=1}^\infty\sum_{i=1}^{N_n}\bu(F_{n,i}\cap E_j).$$
由于 $F_{n,i}\cap E_j$ 和它们的并 $A_n\cap E_j$ 都属于 $\AS$，所以根据 $\bu$ 在 $\AS$ 上的有限可加性，有
$$\sum_{i=1}^{N_n}\bu(F_{n,i}\cap E_j)=\bu(A_n\cap E_j).$$
因此
$$\bu(E_j)\leq \sum_{n=1}^\infty \bu(A_n\cap E_j).$$
于是

$$
\begin{align*}\bu(\sqcup_{n=1}^\infty A_n)&=\bu(\sqcup_{j=1}^N E_j)=\sum_{j=1}^N\bu(E_j)\\&\leq\sum_{j=1}^N\sum_{n=1}^\infty\bu(A_n\cap E_j)\\&=\sum_{n=1}^\infty\sum_{j=1}^N\bu(A_n\cap E_j)\\&=\sum_{n=1}^\infty\bu(A_n).
\end{align*}
$$

即为所证。$\blacksquare$

:::{.theorem .unnumbered}
$\S$ 上的测度 $\bu$ 是次可数可加的，因而由 前面的 [引理](#sub-additive) 它给出 $\AS$ 上的可数可加测度。
:::

**证明**：设 $(a,b]=\sqcup_{i=1}^\infty (a_i, b_i]$，我们要证明 $$F(b)-F(a)=\bu((a, b])\leq\sum_{i=1}^\infty\bu((a_i,b_i])=\sum_{i=1}^\infty (F(b_i)-F(a_i)).$$
我们可以先假设 $a,b$ 都是有限的。

**不要幻想可以给区间 $(a_i,b_i]$ 之间按照大小排顺序，它们可能有无穷多个聚点**。（想想 Cantor 集的补集）

**想法是把 $(a, b]$ 缩小一点变成 $[a+\delta, b]$，同时把每个 $(a_i,b_i]$ 放大一点变成 $(a_i,b_i+\delta_i)$，这样可以使用紧集的有限开覆盖性质**。$\delta,\delta_i$ 都是待定的正数，后面再明确它们。从而存在 $N$ 使得前 $N$ 个开区间就足以覆盖 $[a+\delta,b]$：
$$[a+\delta,b] \subseteq \cup_{j=1}^N (a_j, b_j+\delta_j).$$
当然也就有
$$(a+\delta,b] \subseteq \cup_{j=1}^N (a_j, b_j+\delta_j].$$
现在 $\bu$ 作为一个有限可加测度具有单调性，所以
$$\begin{align*}\bu((a+\delta, b])&\leq \sum_{j=1}^N \bu((a_j, b_j+\delta_j])\\&\leq\sum_{j=1}^\infty \mu((a_j, b_j+\delta_j])\\&=\sum_{j=1}^\infty\bu((a_j, b_j]) + \sum_{j=1}^\infty\bu((b_j, b_j+\delta_j]).
\end{align*}$$
上式左边等于 $F(b)-F(a+\delta)$，$\delta$ 是任意正数，令其趋于 0 并利用 $F$ 的右连续有 $F(a+\delta)\downarrow F(a)$，所以
$$F(b)-F(a)=\bu((a, b])\leq\sum_{j=1}^\infty\bu((a_j, b_j]) + \sum_{j=1}^\infty\bu((b_j, b_j+\delta_j]).$$
另一方面 $\delta_j$ 也是任意的，并且 $F$ 右连续，所以对任何 $\epsilon>0$ 我们可以取 $\delta_j$ 足够小，使得
$F(b_j+\delta_j)- F(b_j) < \epsilon/2^j$，于是
$$\mu((a, b])\leq\sum_{j=1}^\infty \mu((a_j, b_j]) + \epsilon.$$
由 $\epsilon$ 的任意性即得 $\bu$ 在 $\S$ 上的次可数可加性。$\blacksquare$

# 第四步：$\sigma$- 代数上的可数可加测度

设 $\SS$ 是 $\S$ 生成的 $\sigma$- 代数。最后一步是把 $\AS$ 上的可数可加测度 $\bu$ 扩展为 $\SS$ 上的可数可加测度。这就是 Carathéodory 定理做的事情。本文就不再介绍了。

[^1]:
    参考 [@Durrett2019 Theorem A.1.1]。我们来说明若 $A=\sqcup_{i=1}^m A_i=\sqcup_{j=1}^n B_j$，则
    $$\bu(A)=\sum_{i=1}^m\bu(A_i)=\sum_{j=1}^n \bu(B_j).$$
    注意到 $A_i=A_i\cap A=\sqcup_{j=1}^n A_i\cap B_j$ 以及 $\bu$ 在 $\S$ 上是有限可加的，所以
    $$\bu(A_i) = \sum_{j=1}^n\bu(A_i\cap B_j).$$
    从而
    $$\sum_{i=1}^m\bu(A_i) = \sum_{i=1}^m\sum_{j=1}^n\bu(A_i\cap B_j).$$
    同理也有
    $$\sum_{j=1}^n \bu(B_j)= \sum_{i=1}^m\sum_{j=1}^n\bu(A_i\cap B_j).$$
    所以 $\bu(A)$ 的定义是合理无歧义的。
