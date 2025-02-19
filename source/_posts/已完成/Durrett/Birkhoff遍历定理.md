---
title: "Birkhoff 遍历定理"
date: 2013-04-21
categories: [Durrett 概率论批判]
url: "Birkhoff-ergodic-theorem"
---
\newcommand{\ind}{\mathbb{1}}
\newcommand{\F}{\mathcal{F}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\B}{\mathcal{B}}
\newcommand{\E}{\mathbb{E}}
\newcommand{\I}{\mathcal{I}}
\newcommand{\aeq}{\stackrel{\mathrm{a.e.}}{=}}

我念研究生时的高等概率论课用的是 Durrett 的教材 "Probability: Theory and Examples"。这本书的好处我就不再介绍了，院长陈大岳老师在世图影印版的前言中已经夸了一遍。我个人的体会是，Durrett 的书在讲解证明的时候非常简练，很少写为什么要这样证，我有时候读了半天也没搞明白思路。Birkhoff 遍历定理算是其中一个，于是我重新整理了一下书中的证明，作此文留念。

Birkhoff 遍历定理最初由 Birkhoff 本人在 1931 年发表，原文长达 50 页。随后在 1939 年 K.Yosida （吉田耕作） 和 S.Kakutani （角谷） 利用极大遍历定理给出了一个 10 页的简洁证明，不过他们关于极大遍历定理的证明还是啰嗦了点，后来 Garsia 给出了极大遍历定理的一个仅有寥寥数行的惊人证明，这也是当前大多数教材采用的途径，本文就来介绍这一证明。

<!-- more -->

# 准备工作


给定一个概率空间 $(\Omega,\mathcal{F},\mu)$，我们称两个可测集 $A,B\in F$ 几乎处处相等，是指它们的示性函数 $\ind_A,\ind_B$ 几乎处处相等，记作 $A\aeq B$。等价的说法是 $A,B$ 只差一个零测集，或者差集 $A\Delta B$ 是零测集。

设 $T:\Omega\rightarrow \Omega$ 是一个可测变换，即对任何 $E\in\mathcal{F}$ 有 $T^{-1}E\in\mathcal{F}$。

::: {.definition #def-1}
如果可测集 $E$ 满足 $T^{-1}E\aeq E$，就称 $E$ 是一个 $T-$ 不变集合。不难验证所有的 $T-$ 不变集合
$$\mathcal{I}=\{E\in\mathcal{F}\ |\ T^{-1}E\aeq E\}$$
构成 $\mathcal{F}$ 的一个子 $\sigma-$ 代数。
:::


::: {.definition #def-2}
如果对任何可测集 $E\in\mathcal{F}$ 有 $\mu(T^{-1}E)=\mu(E)$，就称 $T$ 是一个保测变换。
:::

在本文中，$T$ 始终代表一个保测变换。

保测变换有如下性质：

::: {.lemma #lemma-1}
如果 $f\in L^1(\Omega)$ 是一个可积的随机变量，$T$ 是保测变换，则
$$\int_\Omega f\,\mathrm{d}\mu=\int_\Omega f\circ T\,\mathrm{d}\mu.$$
:::

**证明**：若 $E\in\mathcal{F}$ 是可测集，由于
$$\omega\in T^{-1}E\Leftrightarrow T(\omega)\in E\Leftrightarrow(\ind_E\circ T) (\omega)=1.$$
所以 $\ind_{E}\circ T=\ind_{\{T^{-1}E\}}$，因此
$$\int_\Omega \ind_E\,\mathrm{d}\mu=\mu(E)=\mu(T^{-1}E)=\int_\Omega \ind_{\{T^{-1}E\}}\,\mathrm{d}\mu=\int_\Omega \ind_E\circ T\,\mathrm{d}\mu.$$
从而结论对集合的示性函数成立，进一步由积分的线性性质对任何简单函数也成立，再取极限即得对一般的可积函数结论成立。

::: {.lemma #lemma-2}
一个 $\Omega$ 上的随机变量 $X$ 关于 $\mathcal{I}$ 可测，当且仅当有
$$X\circ T=X\quad \text{a.e.}$$
成立。这时我们称 $X$ 是 $T-$ 不变的随机变量。
:::

这是 Durrett 书中的一道习题，我一直觉得它很平凡，其实之前文章中的处理有问题，这个结论还是需要论证一番的。

**证明**：

$\Rightarrow$：如果 $X$ 关于 $\mathcal{I}$ 可测，则对任何 Borel 集 $B\in\B(\R^1)$ 有 $X^{-1}B\in\mathcal{I}$，即 $T^{-1}(X^{-1}B)\aeq X^{-1}B$，这说明 $\{X\circ T\in B\}\aeq \{X\in B\}$。特别地取 $B=(-\infty, t)$ 我们得到 $\{X\circ T<t\}\aeq \{X<t\}$。我们来证明如果 $\xi,\,\eta$ 是两个可测函数且对任何实数 $t$ 有 $\{\xi<t\}\aeq \{\eta<t\}$，则 $\xi=\eta,\,\mathrm{a.e.}$。然后对 $\xi=X\circ T,\,\eta=T$ 应用此结论即可。若不然，不妨设 $\{\xi>\eta\}$ 具有正测度，则存在有理数 $c$ 使得集合 $\{\xi>c>\eta\}$ 具有正测度，这个集合在 $\{\eta<c\}$ 中，但是不在 $\{\xi<c\}$ 中，这与 $\{\eta<c\}$ 和 $\{\xi<c\}$ 只差一个零测集矛盾。

$\Leftarrow$：如果 $X\circ T=X$ 几乎处处成立，则对任何 $B\in\B(\R^1)$ 有 $X^{-1}B\aeq T^{-1}X^{-1}B$，这说明 $X^{-1}B\in\mathcal{I}$，即 $X$ 关于 $\mathcal{I}$ 可测。

# Birkhoff 遍历定理

设 $f$ 是 $\Omega$ 上的随机变量，对每个整数 $n\geq 1$，令
$$S_n(\omega)= \sum_{k=0}^{n-1} f(T^k(\omega)).$$
我们有如下的定理：

::: {.theorem #birkhoff}

（Birkhoff 遍历定理）

设 $T$ 是概率空间 $(\Omega,\mathcal{F},\mu)$ 上的保测变换，则对任何 $f\in L^1(\Omega)$ 有
$$\lim_{n\to\infty}\frac{S_n}{n}\rightarrow \mathbb{E}[f\,|\,\mathcal{I}]\quad\text{a.e.}$$
:::

证明 Birkhoff 遍历定理定理的关键是证明如下的极大遍历定理：（极大遍历定理这个名字来源于分析中的 Hardy-Littlewood 极大函数，这一类的不等式统称为极大不等式）

::: {.theorem #max-ergodic}

**极大遍历定理**

定义极大算子
$$M_f(\omega)=\sup_{n\geq 1}\frac{1}{n}S_n(\omega),$$
则对 $f\in L^1(\Omega)$ 和任一 $a\in\mathbb{R}$，有
$$\int_{\{M_f>a\}} f\,\mathrm{d}\mu\geq a\mu(\{M_f>a\}).$$
:::

极大遍历定理是整个 Birkhoff 遍历定理的证明中最不直观的部分，而且我也确实不知道怎么解释引入它的动机。我第一次看到这个式子的时候是很懵的。一个直观的理解是，观察下面这个显然成立的不等式：
$$\int_{\{M_f>a\}} M_f\,\mathrm{d}\mu\geq a\mu(\{M_f>a\}).$$
极大遍历定理是说把其中的积分函数换成 $f$，积分范围保持不变的话，不等式仍然成立。

我把极大遍历定理的证明放在最后，先用它来证明 Birkhoff 遍历定理。

# Birkhoff 遍历定理的证明

首先可以假定条件期望 $\E[f\,|\,\I]=0$，否则我们可以用 $f-\E[f\,|\,\I]$ 代替 $f$，注意到 $\E[f\,|\,\I]$ 是 $T-$ 不变的，所以根据上面的 @Pre:lemma-2 有
$$\E[f\,|\,\I]\circ T^k = \E[f\,|\,\I],\quad \mathrm{a.e.}$$
对所有的正整数 $k$ 都成立，这时 @Pre:birkhoff 的左边 $S_n$ 中每一项都会多出来一个 $\E[f\,|\,\I]$，除以 $n$ 正好和右边的 $\E[f\,|\,\I]$ 抵消掉。

这样问题变成在 $\E[f\,|\,\I]=0$ 的前提下证明
$$\lim\limits_{n\to\infty}\frac{S_n}{n}=0.\quad \text{a.e.}$$
设 $a$ 是任一正数，考虑集合
$$A= \left\{\omega \mid \varlimsup_{n\to\infty}\frac{S_n}{n}>a\right\}.$$
我们想证明 $\mu(A)=0$。若真如此，则有 $\varlimsup\limits_{n\to\infty}S_n/n\leq a$ 几乎处处成立，根据 $a$ 的任意性就得到 $\varlimsup\limits_{n\to\infty}S_n/n\leq 0$ 几乎处处成立。再把这个结果用在 $-f$ 上就得到 $\varliminf\limits_{n\to\infty}S_n/n\geq 0$ 也几乎处处成立，这样就证明了 $\lim\limits_{n\to\infty}S_n/n=0$ 几乎处处成立。（拗口）

为了证明 $\mu(A)=0$，我们希望对函数 $f$ 和集合 $A$ 应用极大不等式：
$$\int_A f\,\mathrm{d}\mu\geq a\mu(A).$$
这是因为，$A$ 其实是一个 $T-$ 不变的集合，即 $A\in\mathcal{I}$，我们会在证明末尾再验证这一点。于是根据条件期望的性质，
$$\int_A f\,\mathrm{d}\mu = \int_A \E[f\,|\,\I]\,\mathrm{d}\mu =0.$$
即 $0\geq a\mu(A)$，结合 $a>0$ 即得 $\mu(A)=0$。

但是，我们能对 $A$ 使用极大不等式吗？请注意 $\varlimsup\limits_{n\to\infty}$ 和 $\sup\limits_{n\geq 1}$ 的区别，它们定义的是两个不同的随机变量。$A$ 是用 $\varlimsup\limits_{n\to\infty}$ 定义的，而极大遍历定理中说的是 $\sup\limits_{n\geq 1}$。注意到
$$A=\left\{\varlimsup_{n\to\infty}\frac{S_n}{n}>a\right\}\subseteq \left\{\sup_{n\geq 1}\frac{S_n}{n}>a\right\}= \left\{M_f>a\right\},$$
所以我们只需要证明下面的结论就好了：

:::{.lemma}
设 $A\subseteq \{M_f>a\}$ 而且 $A$ 是一个 $T-$ 不变集合，那么极大遍历定理仍然成立：
$$\int_A f\,\mathrm{d}\mu\geq a\mu(A).$$
:::

**引理的证明**：对函数 $g=f\cdot\ind_A$ 应用极大遍历定理：
$$\int_{\{M_g>a\}} f\cdot\ind_A\,\mathrm{d}\mu\geq a\mu(\{M_g>a\}).$$
但是 $M_g=M_f\cdot\ind_A$，这一点要用到 $A$ 是 $T-$ 不变集合这个条件，因此
$$\{M_g>a\}=\{M_f>a\}\cap A =A.$$因此确实有
$$\int_A f\,\mathrm{d}\mu\geq a \mu(A).$$
这样就证明了 Birkhoff 遍历定理。

实际上定理中的收敛也是一个依 $L^1$ 范数的收敛，这点的证明相比几乎处处收敛就容易多了，这里不再赘述。

最后我们来补上证明中遗漏的部分，即验证集合 $A=\left\{\varlimsup\limits_{n\to\infty}S_n/n>a\right\}$ 确实是 $T-$ 不变的：

利用 $S_{n+1} = f + S_n\circ T$ 可得
$$\frac{S_{n+1}}{n+1} = \frac{f}{n+1} + \frac{S_n\circ T}{n}\cdot \frac{n}{n+1}.$$
对两边同时取上极限，注意由于 $f\in L^1(\Omega)$ 所以 $f$ 几乎处处有限，从而 $\lim\limits_{n\to\infty}f/(n+1)=0,\,\text{a.e.}$。所以
$$\varlimsup_{n\to\infty} \frac{S_{n+1}}{n+1} = \varlimsup_{n\to\infty}\frac{S_{n}\circ T}{n}.$$
这正说的是 $\varlimsup\limits_{n\to\infty}S_n/n$ 是 $T-$ 不变的随机变量，从而 $A$ 是 $T-$ 不变的集合。


最后来证明极大遍历定理。

# 极大遍历定理的证明

只要证明 $a=0$ 的情形，然后对一般的 $a$，将结论应用在函数 $f-a$ 上即可。定义 $S_0=0$ 以及 $M_n =\max\{S_0,S_1,\cdots,S_n\}$。对每个 $k=1,\ldots,n$ 有
$$S_k=f+S_{k-1}\circ T\leq f+M_n \circ T.$$
从而
$$\max_{1\leq k\leq n}S_k\leq f+M_n \circ T.$$

但是在集合 $\{M_n>0\}$ 上，$M_n$ 作为 $S_0,S_1,\ldots,S_n$ 中的最大者肯定不能来自 $S_0=0$，所以 $M_n=\max\limits_{1\leq k\leq n}S_k$，因此
$$M_n\leq f+M_n \circ T,\quad \omega\in \{M_n>0\}.$$
注意 $M_n$ 总是非负的随机变量，从而
$$\begin{align*}\int_{\{M_n>0\}} f &\geq \int_{\{M_n>0\}}M_n -\int_{\{M_n>0\}}M_n\circ T\\ & = \int_\Omega M_n- \int_{\{M_n>0\}}M_n\circ T\\&\geq \int_\Omega M_n-\int_\Omega M_n\circ T\\&=0.\end{align*}$$
最后由于 $\{M_n>0\}\uparrow \{M_f>0\}$，所以由控制收敛定理即可得到
$$\int_{\{M_f>0\}}f\geq 0.$$
极大遍历定理得证。