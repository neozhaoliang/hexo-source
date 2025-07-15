---
title: "Hurwitz 平方和定理"
date: "2009-12-05"
categories: ["有限群表示与结合代数"]
url: "hurwitz-square-sum-theorem"
---

Hurwitz 平方和定理是有限群表示论的一个精彩应用，本文是若干年前读书时的笔记。

<!-- more -->

# Hurwitz 平方和定理

相信你对复数的乘法再熟悉不过了：设 $z_1=x_1+y_1i,\,z_2=x_2+y_2i$ 是两个复数，则
$$|z_1z_2|=|z_1|\cdot|z_2|.$$
也就是
$$(x_1^2+y_1^2)(x_2^2+y_2^2)=(x_1x_2-y_1y_2)^2+(x_1y_2+x_2y_1)^2.$$
1748 年 Euler 发现了如下的 4 平方和等式：
$$(x_1^2+x_2^2+x_3^2+x_4^2)(y_1^2+y_2^2+y_3^2+y_4^2)=z_1^2+z_2^2+z_3^2+z_4^2.$$
其中
$$\begin{aligned}
&z_1=x_1y_1-x_2y_2-x_3y_3-x_4y_4,\\&z_2=x_1y_2+x_2y_1+x_3y_4-x_4y_3,\\&z_3=x_1y_3+x_3y_1-x_2y_4+x_4y_2,\\&z_4=x_1y_4+x_4y_1+x_2y_3-x_3y_2.
\end{aligned}$$
4 平方和等式说的是在 Hamilton 四元数体中范数仍然是乘性的。1848 年 Cayley 发现了八元数 [^1]，从而导出了类似的 8 平方和等式，当然具体写出来会很复杂，这里就按下不表了。

一般地，如果能在 $n$ 维 Euclidean 空间 $\mathbb{R}^n$ 上定义向量之间的乘法：
$$\mathbb{R}^n\times\mathbb{R}^n\rightarrow\mathbb{R}^n:(v,w)\rightarrow v\times w$$
使得 $v\times w$ 对 $v,w$ 都是线性的，而且乘积的范数等于范数的乘积：$|v\times w|=|v|\cdot |w|$，这里 $|\cdot|$ 是通常的 Euclidean 范数，则我们就得到了一个 $n$ 平方和等式。

在接下来的 50 年里，人们一直致力于寻找可能的 16 平方和等式，但是都失败了，于是开始怀疑是否没有这样的等式成立。终于在 1898 年 Hurwitz 证明了这样的结论：

:::{.theorem .unnumbered}
**Hurwitz 平方和定理** 设 $x=(x_1,\ldots,x_n)$, $y=(y_1,\dots,y_n)$ 为 $\mathbb{R}^n$ 中的向量。如果存在关于 $x,y$ 的双线性函数 $z_1(x,y),\ldots,z_n(x,y)$ 使得等式
$$(x_1^2+\cdots+x_n^2)(y_1^2+\cdots+y_n^2)=z_1^2+\cdots+z_n^2$$
恒成立，那么 $n=1,2,4,8$。
:::

正如前面说过的，Huiwitz 平方和定理意味着在实数域 $\mathbb{R}$，复数域 $\mathbb{C}$，四元数 $\mathbb{H}$ 和八元数 $\mathbb{O}$ 中，元素的 Euclidean 范数和向量的乘法是相容的，而在其它维数的 $\mathbb{R}^n$ 上是不可能定义与 Euclidean 范数相容的向量乘法的。

Hurwitz 本人的证明是纯线性代数的，线性代数的证明较为初等，不过步骤略长。1943 年 Eckmann 用有限群表示论的方法给了一个漂亮的证明，本文就来介绍这个证明。

# 将问题转化为矩阵方程

设 $z=(z_1,\ldots,z_n)$，则每个 $z_i$ 关于 $y$ 都是线性的，因此存在 $n$ 阶矩阵 $A$ 满足 $z=yA$，当然矩阵 $A$ 和 $x$ 有关。于是 Hurwitz 定理中的等式变成
$$(x_1^2+x_2^2+\cdots+x_n^2)yy'=yAA'y'.$$
由于 $y$ 是不定元，因此
$$AA'=(x_1^2+\cdots+x_n^2)I_n.$$
进一步，由于 $A$ 关于 $x$ 也是线性的，因此设 $A=A_1x_1+\cdots+A_nx_n$，则
$$AA'=\sum_{i=1}^nA_iA_i'x_i^2+\sum_{1\leq i<j\leq n}(A_iA_j'+A_jA_i')x_ix_j.$$
从而我们得到一组矩阵方程
$$A_iA_i'=I_n,\quad A_iA_j'+A_jA_i'=0\text{ for } i\ne j.$$
进一步可以把 $A_n$ 归一化为单位矩阵：令 $Q_i=A_iA_n^{-1}$，于是 $Q_1,\ldots,Q_{n-1}$ 满足
$$Q_i'=-Q_i,\quad Q_i^2=-I_n,\quad Q_iQ_j=-Q_jQ_i\text{ for } i\ne j.$$
显然 $n$ 必须是偶数 （奇数阶反对称矩阵行列式都是 0），而 $n=2$ 的时候结论是成立的（复数域），所以下面我们都假定 $n>2$，于是 $n$ 的可能值为 $4,6,8,\ldots$。

# 用群表示论的工具得出矛盾

考虑这样一个抽象群 $G$，它由元素 $a,g_1,\ldots,g_{n-1}$ 生成，且满足关系
$$ a^2=1,\quad g_i^2=a,\quad g_ig_j=ag_jg_i\ \text{when}\ i\ne j.$$
这里 $a$ 对应的是上面矩阵中的 $-I_n$，$g_i$ 对应的上面矩阵中的 $Q_i$。这个群的结构很好分析：

+ $|G|=2^n$，每个元素形如 $a^{e_0}g_1^{e_1}\cdots g_{n-1}^{e_{n-1}}$，其中 $e_i\in\{0,1\}$。
+ $G$ 的中心 $Z(G)=\{1,a,g_1g_2\cdots g_{n-1},ag_1g_2\cdots g_{n-1}\}$。
+ $G$ 的换位子群 $[G,G]=\{1,a\}$，从而 $G$ 有 $|G/[G,G]|=2^{n-1}$ 个线性表示。
+ $G$ 的任何非平凡共轭类都只有两个元素 $\{g,ag\}$，从而 $G$ 有 $2^{n-1}+2$ 个共轭类，从而其不可约复表示的个数也是 $2^{n-1}+2$。

于是我们知道 $G$ 有 $2^{n-1}$ 个一次表示，还有 2 个次数大于 1 的表示，设它俩的次数分别是 $f_1,f_2$，根据不可约表示次数的平方和等于 $G$ 的阶，得到方程
$$f_1^2+f_2^2 + 2^{n-1}=|G|=2^n.$$
即 $f_1^2+f_2^2=2^{n-1}$。再利用不可约表示的次数整除 $G$ 的阶，知道 $f_1$ 和 $f_2$ 都是 2 的幂，这只有一种可能，就是
$$ f_1=f_2=2^{\frac{n}{2}-1}.$$

现在 Hurwitz 矩阵方程给出了 $G$ 的一个 $n$ 维表示，这个表示可以分解为若干不可约表示的直和，我们断言其中不含有一次表示，从而只能是若干个 $2^{\frac{n}{2}-1}$ 次表示的直和：这是因为元素 $a$ 在这个表示下是 $n$ 阶矩阵 $-I_n$，从而其在任何不变子空间上的作用都是乘以 -1。但是任何一次表示都把 $a\in [G,G]$ 映射为 1，矛盾！

于是 $2^{\frac{n}{2}-1}\big| n$，设 $n=2^r\cdot s$，其中 $s$ 为奇数，则 $\frac{n}{2}-1\leq r$，从而
$$ 2^r\leq n\leq 2r+2.$$
注意 $n$ 是偶数，所以只能是 $n=4,6,8$，这就完成了 Hurwitz 定理的证明。

# 如果范数不是 Euclidean 呢？

我猜你很可能会提出进阶的问题：如果把 Euclidean 范数 $|\cdot|$ 换成一般的（非零）范数 $N$，但是仍然要求 $N(v\times w)=N(v)\cdot N(w)$，那么情况会如何呢？这个时候 "1, 2, 4, 8" 定理仍然成立，但是根据是否存在 $v\ne 0$ 使得 $N(v)=0$，有两种可能：

1. 上面看到的
$$\mathbb{R}\subset \mathbb{C}\subset \mathbb{H}\subset \mathbb{O}.$$
对应任何 $v\ne 0$ 都有 $N(v)\ne 0$；
2. 而另一种可能是
$$\mathbb{R}\subset \mathbb{R}\times\mathbb{R}\subset\mathrm{Mat}_2(\mathbb{R})\subset \mathbb{O}_s.$$
其中 $\mathbb{O}_s$ 是可裂八元数 (split octonion)。对后面三个代数，$N$ 形如 $N(a,b)=|a|^2-|b|^2$，其中 $a,b$ 具有相同的维数。

[^1]: [https://en.wikipedia.org/wiki/Octonion#History](https://en.wikipedia.org/wiki/Octonion#History)