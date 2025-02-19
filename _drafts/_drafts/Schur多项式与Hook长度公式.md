---
title: "Schur 多项式，Littlewood-Richardson rule 与 Hook 长度公式"
categories: ["计数组合学"]
tags:
  - Schur polynomial
  - Young tableaux
  - Symmetric polynomial
  - Hook length formula
  - Littlewood-Richardson rule
  - Jacobi-Trudi identity
  - Bender-Knuth involution
  - Lattice path
date: 2011-04-04
url: "schur-polynomials-and-hook-length-formula"
---

在数学中有那么一些问题，它们的表述简单而初等，但是解决起来却非常困难，往往需要相当的奇思妙想和深刻的工具，而且围绕这个问题许多不同领域的数学交织在一起，演绎出许多奇妙的故事来。

Young 表就是其中一个精彩的例子，组合数学，表示论，概率论在这里发生了奇妙的交汇。

我们先从一个有趣的问题开始：

{% blockquote %}
**问题**：$n$ 位选民要在一次选举中给 $m$ 个候选人投票，每个选民只能投一票。已知第 $i$ 位候选人最终的得票数为 $\lambda_i$，这里 $\sum_{i=1}^m\lambda_i=n$ 且 $\lambda_1\geq\cdots\geq\lambda_m$。问题是：有多少种不同的得票序列，使得在投票过程中的任一时刻，对任何的 $i<j$，第 $i$ 位候选人所得的票数总不少于第 $j$ 位候选人所得的票数？

举个例子，假设有 $n=10$ 位选民和 $m=4$ 个候选人，则得票序列
$$1, 2, 1, 3, 2, 1, 2, 4, 3, 1$$
表示第一个选民投票给 1 号，第二个选民投票给 2 号，第三个选民投票给 1 号，第四个选民投票给 3 号，依次类推。符合问题要求的序列必须满足对任何 $1\leq k\leq n$ 和 $1\leq i<j\leq m$，序列的前 $k$ 项中数字 $i$ 出现的次数都大于等于数字 $j$ 出现的次数。
{% endblockquote %}

虽然问题的表述很简单，但其实答案相当复杂，绝非一般的初等方法所能解决。对付它的最好方法是 Schur 多项式的理论，我接下来就来介绍它。

<!-- more -->

# Schur 多项式：组合定义

设 $\lambda=(\lambda_1,\lambda_2,\ldots)$ 是一个元素都是非负整数且只有有限多项非 0 的序列，如果有 $\lambda_1\geq \lambda_2\geq\cdots$ 成立，就称 $\lambda$ 是一个整数分拆，简称分拆，并记 $|\lambda|=\sum\limits_{i=1}^\infty \lambda_i$。$|\lambda|$ 总是一个有限的数，如果 $|\lambda|=k$ 就称 $\lambda$ 是整数 $k$ 的分拆，记作 $\lambda\vdash k$。此外用 $l(\lambda)$ 表示 $\lambda$ 中非零项的个数。

对每个分拆 $\lambda\vdash k$，我们可以用一个图 $F_\lambda$ 来表示它：$F_\lambda$ 由 $k$ 个方格组成，第一行有 $\lambda_1$ 个方格，第二行有 $\lambda_2$ 个方格，. . . 以此类推，每一行都是左对齐的，总共有 $l(\lambda)$ 行。$F_\lambda$ 叫做 $\lambda$ 的 Ferrers 图。例如下图是分拆 $\lambda=(4, 2, 2, 1)$ 的 Ferrers 图。

|||||
|:-:|:-:|:-:|:-:|
|$\phantom{}$|$\phantom{}$|$\phantom{}$|$\phantom{}$|
|$\phantom{}$|$\phantom{}$|||
|$\phantom{}$||||

注意 $\lambda$ 中的零分量不出现在 Ferrers 图中。

将 $F_\lambda$ 转置 （第一行变第一列，第二行变第二列，等等） 后得到的也是一个 Ferrers 图，其对应的分拆 $\lambda'$ 叫做 $\lambda$ 的共轭分拆，例如上图转置后得到的共轭分拆为 $\lambda'=(4, 3, 1, 1)$：

|   |   |   |   |
|:-:|:-:|:-:|:-:|
|$\phantom{}$|$\phantom{}$|$\phantom{}$|$\phantom{}$|
|$\phantom{}$|$\phantom{}$|$\phantom{}$||
|$\phantom{}$||||

在 $F_\lambda$ 的每个方格中填入正整数，使得**每一行从左到右是弱递增的**，**每一列从上到下是严格递增的**，这样得到的表格叫做半标准 Young 表 (semistandard Young tableaux)，简称为 SSYT；如果一个形状为 $\lambda\vdash n$ 的半标准的 Young 表包含的数字恰好为集合 $\{1,2,\ldots,n\}$，则称其为一个标准 Young 表 (standard Young tableaux)，简称为 SYT。标准 Young 表由于数字互不相同所以也是行严格递增的。例如下图分别显示的是形状为 $\lambda=(4, 3, 2,1)$ 的一个半标准和一个标准 Young 表。

|   |   |   |   |
|:-:|:-:|:-:|:-:|
| 1  | 1  | 2  | 2  |
| 3  | 3  | 8  ||
| 4  | 6  |||
| 5  ||||

|   |   |   |   |
|:-:|:-:|:-:|:-:|
| 1  | 3  | 6  | 10  |
| 2  | 5  | 7
| 4  | 9
| 8

我们用记号 ${\rm SSYT}(n,\lambda)$ 表示所有形状为 $\lambda$ 且填入的数字不超过 $n$ 的半标准 Young 表组成的集合，显然此集合非空则必有 $n\geq l(\lambda)$。当 $|\lambda|=n$ 时我们也将其简写为 ${\rm SSYT}(\lambda)$。用记号 ${\rm SYT}(\lambda)$ 表示所有形状为 $\lambda$ 的标准 Young 表组成的集合。

文章开头的投票序列问题本质上是计算集合 ${\rm SYT}(\lambda)$ 的元素个数，实际上所有符合要求的投票序列与 ${\rm SYT}(\lambda)$ 是一一对应的：依次处理数字 $j=1,2,\ldots,n$，如果选民 $j$ 将票投给了候选人 $i$，则将数字 $j$ 填入 $\lambda$ 的 Ferrers 图的第 $i$ 行从左边数起第一个空着的方格中。所有 $n$ 个数字填写完后得到的就是一个标准 Young 表 $T$。反之对任何标准 Young 表 $T$ 还原出对应的投票序列也是显然的。

例如上面的标准 Young 表

|   |   |   |   |
|:-:|:-:|:-:|:-:|
| 1  | 3  | 6  | 10  |
| 2  | 5  | 7
| 4  | 9
| 8

对应的得票序列为 （序列的第 $j$ 项为数字 $j$ 所在的行的编号，即选民 $j$ 选择的候选人编号）
$$1, 2, 1, 3, 2, 1, 2, 4, 3, 1$$

${\rm SYT}(\lambda)$ 的计数可以由一个非常优美的结论给出，叫做 hook length formula，本文后面会介绍。我们首先需要介绍 Schur 多项式的概念，Schur 多项式可以看作是半标准 Young 表的“生成函数”。

取定一个正整数 $n$，$\lambda=(\lambda_1,\ldots,\lambda_n)$ 是一个非零项个数不超过 $n$ 的分拆 （允许某些 $\lambda_i$ 为零），$T\in {\rm SSYT}(n,\lambda)$ 是一个**半标准 Young 表**，记 $c(T)=(c_1,c_2,\ldots,c_n)$ 为 $T$ 的容度 (content) 向量，其中 $c_i$ 是 $T$ 中数字 $i$ 出现的次数。记
$$X^{c(T)} = x_1^{c_1}x_2^{c_2}\cdots x_n^{c_n}.$$
$X^{c(T)}$ 是一个单项式。

例如对 $n=10$ 和 $\lambda=(4,3,2,1)$，上面的半标准 Young 表

|   |   |   |   |
|:-:|:-:|:-:|:-:|
| 1  | 1  | 2  | 2  |
| 3  | 3  | 8
| 4  | 6
| 5

的容度为 $(2, 2, 2, 1, 1, 1, 0, 1, 0, 0)$，其对应的单项式为
$$X^{c(T)} = x_1^2x_2^2x_3^2x_4x_5x_6x_8.$$

{% blockquote %}
**Schur 多项式的组合定义**：设 $n$ 是一个正整数，$\lambda=(\lambda_1,\ldots,\lambda_n)$ 是一个长度不超过 $n$ 的分拆 （允许某些 $\lambda_i$ 为零），定义 $n$ 变元多项式
$$s_\lambda(x_1,\ldots,x_n)=\sum_{T\in {\rm SSYT}(n,\lambda)}X^{c(T)}.$$
$s_\lambda$ 叫做 $n$ 变元的 Schur 多项式。
{% endblockquote %}

这里需要注意的是 $n$ 变元的 Schur 多项式有且只有对长度不超过 $n$ 的分拆 $\lambda$ 才有定义。

例子：对 $\lambda=(3,2)$，
$$\begin{align*}s_{(3,2)}(x_1,x_2,x_3) \,= \,
& x_1^3x_2^2  + x_1^3x_3^2 +  x_1^3x_2x_3 + x_1^2x_2^3 + x_1^2x_3^3 + 2x_1^2x_2x_3^2 + \\
&2x_1^2x_2^2x_3 +x_1x_2x_3^3 + 2x_1x_2^2x_3^2 + x_1x_2^3x_3 +  x_2^2x_3^3 + x_2^3x_3^2.
\end{align*}$$

其中前几项对应的半标准 Young 表如下：

<table>
<tr><th>$x_1^3x_2^2$ </th><th> $x_1^3x_3^2$</th><th> $x_1^3x_2x_3$</th><th> $x_1^2x_2^3$</th>
<th> $x_1^2x_3^3$</th></tr>
<tr><td>

| | | |
|:-:|:-:|:-:|
|1 | 1 | 1
| 2| 2

</td><td>

| | | |
|:-:|:-:|:-:|
|1 | 1 | 1
|3| 3

</td><td>

| | | |
|:-:|:-:|:-:|
|1 | 1 | 1
|2| 3

</td><td>

| | | |
|:-:|:-:|:-:|
|1 | 1 | 2
|2| 2

</td><td>

| | | |
|:-:|:-:|:-:|
|1 | 1 | 3
|3| 3

</td>
</tr></table>

可以看到虽然 Schur 多项式的组合定义很直观，但要写出它的具体表达式来却并不容易，为此我们需要找到 Schur 多项式的其它表现形式。首先我们将证明 Schur 多项式总是对称多项式。

# Bender-Knuth 对合

这一节我们来证明 Schur 多项式是对称多项式，为此只要证明对任意的 $i$，$s_\lambda$ 在交换 $x_i$ 和 $x_{i+1}$ 后保持不变即可，而这又只要说明容度为 $(\ldots,c_i,c_{i+1},\ldots)$ 的半标准 Young 表与容度为 $(\ldots,c_{i+1},c_i,\ldots)$ 的半标准 Young 表一一对应即可。看起来只要对每个形状为 $\lambda$ 的半标准 Young 表，把其中的数字 $i$ 全换成 $i+1$，同时把 $i+1$ 全换成 $i$ 就可以了，是吗？

问题出在这样简单粗暴地得到的未必还是一个半标准的 Young 表。我们需要仔细点选择那些翻转的方格。如果某个 $i$ 的下方恰好是 $i+1$，就称这样的 $i$ 和 $i+1$ 是匹配了的。而那些下方没有 $i+1$ 的 $i$ 或者上方没有 $i$ 的 $i+1$ 统称为未匹配的。下面的事实不难验证：

> 在 $T$ 的任意一行中，设 $i=x\leq y\leq i+1$ 是两个未匹配的元素，则它们中间不可能有匹配的元素。即在一行中，未匹配的元素总是构成一段连续的序列。

下图中演示了 $i=2$ 的例子，绿色显示了匹配的元素，红色显示了未匹配的元素。

<style>
table {max-width: 45%}
</style>

| | | | | | | |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| 1  | 1  | 1  | 1 | 1  | 1 | <span style="color:green">2</span>|
|<span style="green">2</span>| <span style="color:red">2</span>  | <span style="color:red">2</span>  | <span style="color:red">2</span> | <span style="color:red">3</span>  | <span style="color:red">3</span> | <span style="color:green">3</span> |
|<span style="color:green">3</span>  | 4  | 4 |
| 4|

设在一行中，未匹配的元素是 $r$ 个 $i$ 后面接着 $s$ 个 $i+1$，我们把这段序列替换为 $s$ 个 $i$ 后面接上 $r$ 个 $i+1$，对 $T$ 的每一行都进行这个操作而保持 $T$ 的其它数字不动。在这个变换下 $T$ 变成 $T^\ast$，$T^\ast$ 仍然是半标准的：上图 $T$ 是 3 个 2 后面跟了 2 个 3，变换后在 $T^\ast$ 中变成了 2 个 2 后面跟了 3 个 3：

|   |   |   |   |  | | |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| 1  | 1  | 1  | 1 | 1  | 1 | <font color="green">2</font> |
|<font color="green">2</font>| <font color="red">2</font>  | <font color="red">2</font>  | <font color="red">3</font> | <font color="red">3</font>  | <font color="red">3</font> | <font color="green">3</font> |
| <font color="green">3</font>  | 4  | 4 |
| 4 |

容易验证若 $T$ 的容度为 $(\ldots,c_i,c_{i+1},\ldots)$，则 $T^\ast$ 的容度为 $(\ldots,c_{i+1},c_i,\ldots)$。这个变换显然是个对合：$(T^\ast)^\ast=T$，这就证明了 Schur 多项式是对称的。

# Jacobi-Trudi 恒等式

定义 $h_k(x_1,\ldots,x_n)$ 为所有 $k$ 次单项式的和：
$$h_k(x_1,\ldots,x_n)=\sum_{\begin{subarray}{c}\alpha_1+\alpha_2+\cdots+\alpha_n=k\\\alpha_i\in\mathbb{Z}_{\geq0}\end{subarray}} x_1^{\alpha_1}x_2^{\alpha_2}\cdots x_n^{\alpha_n}.$$

这里约定 $h_0=1$，$k<0$ 时 $h_{k}=0$。显然每个 $h_k$ 是齐次的对称多项式。

{% blockquote %}
**定理**：设 $\lambda=(\lambda_1,\ldots,\lambda_n)\in\mathbb{Z}^n_{\geq0}$ 为一个分拆，则
$$s_\lambda(x_1,x_2,\ldots,x_n)=\det\left( h_{\lambda_i-i+j}\right)_{1\leq i,j\leq n}.$$
{% endblockquote %}

{% blockquote %}
注：有的写法是
$$s_\lambda(x_1,x_2,\ldots,x_n)=\det\left( h_{\lambda_i-i+j}\right)_{1\leq i,j\leq l(\lambda)}.$$
这没有区别。实际上设 $r=l(\lambda)$，则
$$\det\left(h_{\lambda_i-i+j}\right)_{1\leq i,j\leq n}=
\det\left(\begin{array}{cc}
\begin{array}{l}
h_{\lambda_1}&h_{\lambda_1+1} &\cdots & h_{\lambda_1+r-1}\\
h_{\lambda_2-1}&h_{\lambda_2} &\cdots & h_{\lambda_2+r-2}\\
&  & \cdots & \\
h_{\lambda_r-(r-1)}&h_{\lambda_r-(r-2)}&\cdots & h_{\lambda_r}
\end{array} & \Large\ast \\ \Large 0 & \begin{matrix}1&&\\&\ddots&\\&&1\end{matrix}\end{array}\right).
$$
显然它等于左上角的主子式。
{% endblockquote %}

这里的证明采用 Gessel-Viennot 的不相交格点路径组方法，思路一目了然，论证简单直接。关于这个方法你可以参考我之前的 [一篇博文](/macmahon-formula-plane-partitions)。当然

> Proofs from The Book. Aigner, Martin; Ziegler, Günter (2009).

一书中的格点路径组一章也是极好的介绍。

关键是要**把每个半标准 Young 表对应到一个不相交的路径组**，如果你熟悉格点路径组方法的话，这个构造过程是很自然的。

下面的动图显示了 $n=6, \lambda=(5,4,3,2,0, 0)$ 时的一个形状为 $\lambda$ 的 Young 表

|   |   |   |   | |
|:-:|:-:|:-:|:-:|:-:|
| 1  | 1  | 1  | 1  | 2  |
| 2  | 2  | 3  | 3  |
| 3  | 4  | 4  |
| 4  | 5  |

与其不相交路径组的对应关系：

<img style="margin:0px auto;display:block" width="600" src="/images/schur/jacobi-trudi.gif"/>

我省略了 $\lambda_i=0$ 的部分，如果非要加上的话它们对应的是权重为 1 的垂直路径，实际上不起作用：

<img style="margin:0px auto;display:block" width="600" src="/images/schur/jacobi-trudi2.gif"/>

设 $T\in{\rm SSYT}(n,\lambda)$，则 $T$ 的第 $i$ 行是一个长度为 $\lambda_i$ 的弱递增的数列，这样一个数列很自然地对应于一条从点 $(0,1)$ 到点 $(\lambda_i,n)$ 的 Gauss 路径，这个路径即为这一行的“高度图”。

但是半标准 Young 表的列是严格递增的，这个递减关系反映在 Gauss 路径上，就是 $T$ 的第二行对应的路径应该整体位于第一行对应路径的上方，第三行对应的路径整体位于第二行对应的路径的上方，...，两条路径之间可以有垂直的公共边，但是不能有水平的公共边。

现在把第 $i$ 条路径水平地向左平移 $i$ 个单位，变成一条从 $(-i,1)$ 到 $(-i+\lambda_i,n)$ 的路径，则这样得到的 $n$ 条路径两两之间没有公共点，即构成一个不相交的路径组。

反过来对每一个这样的不相交的路径组，也很容易得出其对应的半标准 Young 表来。

令水平线 $y=k$ 的权值为 $x_k$，垂直边的权值一律为 1，注意到从 $(-j,1)$ 到 $(-i+\lambda_i,n)$ 之间的任一路径由于其横向长度是固定值 $\lambda_i-i+j$，所以其权重 （等于路径中各边权重的乘积） 是次数为 $\lambda_i-i+j$ 的单项式，所有这样的单项式都可以作为某条从 $(-j,1)$ 到 $(-i+\lambda_i,n)$ 的路径的权重，从而这两点之间所有路径的权重之和为齐次对称多项式 $h_{\lambda_i-i+j}$，于是由 Gessel-Viennot 引理有
$$s_\lambda=\det\left(h_{\lambda_i-i+j}\right)_{1\leq i,j\leq n}.$$
这就证明了 Jacobi-Trudi 恒等式。

# Bi-alternant 公式

设 $\lambda=(\lambda_1,\ldots,\lambda_n),\,\mu=(\mu_1,\ldots,\mu_n)\in\mathbb{Z}^n_{\geq0}$ 是两个分拆。定义 Weyl 向量 $\rho=(n-1,n-2,\ldots,1,0)$。

设 $T$ 是一个形状为 $\mu$ 的半标准 Young 表，用记号 $T_{\geq j}$ 表示由 $T$ 的第 $j,j+1,\ldots$ 列组成的半标准 Young 表，同理记号 $T_{>j}$ 和 $T_{<j}$ 的含义都是不言自明的。如果对任何 $j$，向量 $\lambda+c(T_{\geq j})$ 都是一个分拆，就称 $T$ 是一个“好” Young 表，否则就称 $T$ 是一个“坏” Young 表。

定义如下的 $n$ 阶行列式：

$$a_\lambda=\det(x_i^{\lambda_j})_{1\leq i,j\leq n}=\sum_{\sigma\in S_n}\text{sgn}(\sigma)X^{\sigma(\lambda)}.$$

{% blockquote %}
**定理**：
$$a_{\lambda+\rho}s_{\mu}=\sum_{T}a_{\lambda+c(T)+\rho}.$$
这里求和跑遍那些形状为 $\mu$ 的好 Young 表。
{% endblockquote %}

注意两边都是关于 $n$ 个变元 $x_1,\ldots,x_n$ 的多项式。

这个定理乍看起来从叙述到证明都很不直观，不过它的结论却非常重要，这就是 Littlewood-Richardson 定律。下面这个证明有很深刻的来源 （李代数的晶体图）。见

> A Concise Proof of the Littlewood-Richardson Rule, by John R. Stembridge.

证明：由于 $s_\mu$ 是 $n$ 变元的对称多项式，因此对任何置换 $\sigma\in S_n$，当 $T$ 跑遍 ${\rm SSYT}(n,\mu)$ 时，集合 $\{c(T)\}$ 与集合 $\{\sigma(c(T))\}$ 是相同的，所以
$$
\sum_{T\in{\rm SSYT}(n,\mu)} X^{c(T)} = \sum_{T\in{\rm SSYT}(n,\mu)} X^{\sigma(c(T))}.
$$

于是利用定义有

$$a_{\lambda+\rho}s_\mu=\sum_{\sigma\in S_n}\text{sgn}(\sigma)\sum_{T\in{\rm SSYT}(n,\,\mu)}X^{\sigma(\lambda+\rho+c(T))} =\sum_{T\in{\rm SSYT}(n,\mu)}a_{\lambda+c(T)+\rho}.$$

这里的关键之处在于，借助 Bender-Knuth 对合，我们可以把求和项中坏的 Young 表两两配对抵消掉，从而剩下的和项都是好 Young 表。

设 $T$ 是一个坏 Young 表，则存在 $j$ 使得 $\lambda+c(T_{\geq j})$ 不是一个分拆，在所有这样的 $j$ 中，选取最大的那个。选好 $j$ 以后，由于 $\lambda+c(T_{\geq j})$ 不是分拆，因此存在 $k$ 使得
$$\lambda_k+c_k(T_{\geq j}) < \lambda_{k+1}+c_{k+1}(T_{\geq j}).$$
在所有这样的 $k$ 中，选取最小的那个。

{% blockquote %}
**断言**：我们有
$$\lambda_k+c_k(T_{>j})=\lambda_{k+1}+c_{k+1}(T_{>j}),$$
并且 $T$ 的第 $j$ 列有一个 $k+1$ 但是没有 $k$，于是
$$\lambda_k+c_k(T_{\geq j})+1=\lambda_{k+1}+c_{k+1}(T_{\geq j}).$$
{% endblockquote %}

**断言的证明**：考虑这样的场景：$A,B$ 两人玩游戏，每局获胜的一方可得 1 元，输的一方得 0 元，打平则各得 1 元。初始时刻 $A$ 有 $\lambda_k$ 元，$B$ 有 $\lambda_{k+1}$ 元，这里 $\lambda_k\geq\lambda_{k+1}$。已知第 $m$ 局结束后 $B$ 的资金首次大于 $A$ 的资金，你能推断出什么？

很显然，第 $m$ 局的结果必然是 $B$ 获胜了；不仅如此，前 $m-1$ 局结束的时候 $B$ 的资金也应该恰好追平了 $A$。很简单的推理，对不对？这些就足够了。

现在回到我们的“坏伙计” $T$：我们知道一个 Young 表的每一列至多有一个 $k$ （也至多有一个 $k+1$)，我们把每一列包含的关于 $k$ 和 $k+1$ 的个数看做一局游戏的结果：$T$ 最右端的一列描述了 $A,B$ 第一局的结果：如果有 $k$ 无 $k+1$，则 $A$ 得 1 元；既有 $k$ 又有 $k+1$ 则 $A,B$ 各得 1 元；无 $k$ 有 $k+1$ 则 $B$ 得 1 元。右边第二列对应第二局游戏的结果并以此类推。这样从右向左到第 $j+1$ 列时，根据 $j$ 的选取规则，$A$ 的资金仍然不少于 $B$，但是到第 $j$ 列时 $A$ 的资金被 $B$ 超过。根据我们前面的分析，这说明 $T$ 的第 $j$ 列有一个 $k+1$ 但是没有 $k$，而且
$$\lambda_k+c_k(T_{>j})=\lambda_{k+1}+c_{k+1}(T_{>j}).$$
这就印证了之前的断言。

现在考虑对 $T$ 进行如下的变换：保持 $T_{\geq j}$ 的部分不动，把 $T_{<j}$ 的部分对数字 $k$ 和 $k+1$ 进行 Bender-Knuth 变换，得到一个 Young 表 $T^\ast$ （不排除 $T=T^\ast$ 的可能）。不难验证 $T^\ast$ 也是半标准的 （因为 Bender-Knuth 对换不影响列递增性质，利用 $T$ 的第 $j$ 列不含 $k$ 这一点，将 $T_{<j}$ 的部分中某些 $k$ 换成 $k+1$ 也不会影响行递增性质），$T^\ast$ 也是一个坏 Young 表且 $(T^\ast)^\ast =T$ （因为 $T^\ast_{\geq j}$ 和 $T_{\geq j}$ 完全一样）。容易验证对换 $s_k=(k,k+1)$ 交换 $c(T_{< j})$ 和 $c(T^\ast_{< j})$ 的 $k$ 和 $k+1$ 位置：
$$s_kc(T_{< j}) = c(T^\ast_{< j}).$$
而前面的断言
$$\lambda_k+c_k(T_{\geq j})+1=\lambda_{k+1}+c_{k+1}(T_{\geq j}).$$
说明 $s_k$ 保持 $\lambda+c(T_{\geq j}) + \rho$ 不变，因此
$$s_k(\lambda+c(T)+\rho)=s_k(\lambda+c(T_{\geq j})+\rho)+s_kc(T_{<j})=\lambda+c(T^\ast)+\rho.$$

于是若 $T\ne T^\ast$，则两个行列式 $a_{\lambda+c(T)+\rho}$ 和 $a_{\lambda+c(T^\ast)+\rho}$ 相差一个 $k,k+1$ 列的交换，从而它们的值抵消。在 $T=T^\ast$ 的情形，矩阵的 $k,k+1$ 列是相同的，行列式自然是 0。

{% blockquote %}
**推论 [bi-alternant formula]**：
$$s_{\mu}=\frac{a_{\mu+\rho}}{a_\rho}.$$
{% endblockquote %}

证明：在定理中令 $\lambda=0$，则只有唯一的一个形状为 $\mu$ 的好 Young 表 $T$，使得 $c(T_{\geq j})$ 对任何 $j$ 都是一个分拆，这个表必须是第一行都填 1，第二行都填 2，...， 以此类推，从而 $c(T)=\mu$，因此得证。

# Hook 长度公式

这一节来介绍并证明著名的 hook 长度公式。hook 公式的表述简单优美，结论出人意料，让人第一眼看到它就会被它所吸引。

首先来定义什么是 hook 长度：设 $\lambda\vdash n$, $F_\lambda$ 是对应的 Ferrers 图，用 $v=(i,j)$ 来表示 $F_\lambda$ 中第 $i$ 行第 $j$ 列位置的方格 （只考虑那些有方格的位置）。数数与 $v$ 同行但是位置在 $v$ 的右边，以及与 $v$ 同列但是位置在 $v$ 的下方的方格的总数，$v$ 自己也算一个但是只算一次。这个数字称作 $v$ 的 hook 长度，记作 $h_v$。

例如下图显示的是 $\lambda=(5, 4, 3, 2, 1)$ 对应的 Ferrers 图中，$v=(1, 1)$ 的 hook 长度 $h_v=5$。

|   |   |   |   |   |
|:-:|:-:|:-:|:-:|:-:|
| $\phantom{}$ | $\phantom{}$  | $\phantom{}$  |  $\phantom{}$ | $\phantom{\bullet}$  |
| $\phantom{\bullet}$   | $\bullet$  | $\bullet$  | $\bullet$
|$\phantom{\bullet}$  | $\bullet$  |
| $\phantom{\bullet}$  | $\bullet$
| $\phantom{\bullet}$

一般地，$(i,j)$ 位置的方格的 hook 长度为 $\lambda_i + \lambda'_j - i - j + 1$。

{% blockquote %}
**定理 [hook 公式]**：
$$|{\rm SYT}(\lambda)|=f_\lambda=\frac{n!}{\prod\limits_{v\in F_\lambda}h_v}.$$
{% endblockquote %}

Hook 公式的表达式虽然很形象，但是这个表达式真要用起来并不顺手。我们需要一个看起来不那么直观，但是用起来趁手的表达式，这就是下面的关键引理：

{% blockquote %}
**引理 A**：设 $\mu_i=\lambda_i+r-i$，这里 $r=l(\lambda),1\leq i\leq r$，则
$$\prod_{v\in F_\lambda} h_v =\frac{\prod\limits_{i=1}^r \mu_i!}{\prod\limits_{i<j}(\mu_i-\mu_j)}.$$
{% endblockquote %}

引理 A 的结论可以很容易由下面的引理 B 得出：

{% blockquote %}
**引理 B**：对任何 $1\leq k\leq r$，$F_\lambda$ 的第 $k$ 行方格的 hook 长度之集
$$\{h_{kj},1\leq j\leq\lambda_k\} = \{\lambda_k+\lambda'_j-k-j+1,1\leq j \leq\lambda_k\}$$
和集合
$$\{\mu_k-\mu_j, k\leq j\leq r\}$$
的并集恰好就是集合
$$\{0,1,\ldots,\mu_k\}.$$
于是第 $k$ 行所有方格的 hook 长度的乘积等于
$$\frac{\mu_k!}{\prod\limits_{k<j}(\mu_k-\mu_j)}.$$
{% endblockquote %}

引理的证明：这里的证明改编自 [^1]。

设 $\lambda^{(k)}$ 是将 $\lambda$ 的前 $k-1$ 行删除，只保留第 $k$ 行之后的部分得到的子分拆，则 $\lambda^{(k)}$ 的行数相比 $\lambda$ 缩水了 $k-1$，即 $l(\lambda^{(k)})=r-k+1$。此外 $\lambda^{(k)}$ 的第一行长度为 $\lambda_k$，所以 $\lambda^{(k)}$ 对应于一条从 $(0,0)$ 出发，每一步向右或者向上，到达 $(r-k+1,\lambda_k)$ 的格点路径，如下图所示，其中 $\lambda^{(k)} = (4, 3, 3, 2, 2, 2)$：

<img style="margin:0px auto;display:block" width=500 src="/images/schur/bijection.svg"/>

从左下角开始，依次给路径上的每条边依次标号为 $0,1,\ldots,\lambda_k+r-k$，我们来分别分析水平的边和竖直的边的标号：

竖直的边从上到下一共有 $\lambda_k$ 条，其中第 $i$ 条边是从上往下数第 $i$ 行的 $\lambda_i'-(k-1)$ 个方格的“右边界”。所以这些边的**下方**端点 （图中标注的顶点） 坐标依次为
$$(\lambda_1'-k+1, \lambda_k-1),(\lambda_2'-k+1,\lambda_k-2),\ldots,(\lambda_k'-k+1, 0).$$
这些边的标号是其**下方**端点的坐标之和，等于集合
$$\{\lambda_i'+\lambda_k-i-k+1, 1\leq i\leq n\},$$
这正是第 $k$ 行所有方格的 hook 长度！

水平的边从左到右一共有 $r-k+1$ 条，其中第 $j$ 条边是从左往右数第 $j$ 列的 $\lambda_k-\lambda_j$ 个方格的“下边界”，所以这些边的**右方**端点 （下图中标注的点） 坐标依次为
$$(1,\lambda_k-\lambda_k),(2,\lambda_k-\lambda_{k+1}),\ldots,(r-k+1, \lambda_k-\lambda_r).$$

<img style="margin:0px auto;display:block" width=500 src="/images/schur/bijection2.svg"/>

这些边的标号是这些**右方**端点的坐标之和减去 1，等于集合
$$\{\lambda_k-\lambda_{k+j-1}+j-1, 1\leq j\leq r+k-1\}=\{\lambda_k-\lambda_j+j-k, k\leq j\leq r\}.$$
这正是集合 $\{\mu_k-\mu_j,k\leq j\leq r\}$。

综上我们证明了水平边的标号是 $F_\lambda$ 中第 $k$ 行方格的 hook 长度，竖直边的标号是 $\{\mu_k-\mu_j,k\leq j\leq r\}$，并且它们合起来构成集合 $\{0,1,\ldots,\mu_k\}$，引理 B 得证。
$$\tag*{$\blacksquare$}$$

最后我们来完成 hook 长度公式的证明：这里使用了一个小技巧：考虑无穷多个变元的对称多项式环 $\Lambda[x_1,\ldots,x_n,\ldots]$，任何 $k$ 变元的 Schur 多项式都是 $\Lambda$ 中的元素。$\Lambda$ 到有理数域上的单变元形式幂级数环 $\mathbb{Q}[[t]]$ 有一个同态 $\theta$：
$$\theta(f) = \sum_{k=0}^\infty f_k \frac{t^k}{k!}.$$
其中 $f_k$ 是 $f$ 中单项式 $x_1x_2\cdots x_k$ 的系数。$\theta$ 显然是线性的，要验证它是代数同态，对任何 $f,g\in\Lambda$ 我们计算
$$\begin{align*}
\theta(f)\theta(g) &= \left(\sum_{k=0}^\infty f_k\frac{t^k}{k!}\right)\left(\sum_{l=0}^\infty g_l\frac{t^l}{l!}\right)\\
&=\sum_{n=0}^\infty \left(\sum_{k+l=n}\frac{f_kg_l}{k!l!}\right) t^n\\
&=\sum_{n=0}^\infty \left(\sum_{k=0}^n f_kg_{n-k} C_n^k\right) \frac{t^n}{n!}
\end{align*}$$
另一方面 $fg$ 中单项式 $x_1x_2\cdots x_n$ 的系数等于
$$\sum_{k=0}^n\sum_{\{i_1,\ldots,i_k\}\subseteq\{1,2,\ldots,n\}} f_{i_1\cdots i_k}g_{j_1\cdots j_{n-k}}.$$
其中 $f_{i_1\cdots i_k}$ 为单项式 $x_{i_1}\cdots x_{i_k}$ 在 $f$ 中的系数，$g_{j_1\cdots j_{n-k}}$ 为单项式 $x_{j_1}\cdots x_{j_{n-k}}$ 在 $g$ 中的系数，并且
$\{j_1,\ldots,j_{n-k}\}$ 是 $\{i_1,\ldots, i_k\}$ 在 $\{1,2,\ldots, n\}$ 中的补集。

由于 $f,g$ 都是对称多项式，所以 $f_{i_1\cdots i_k}$ 对任何 $\{i_1,\ldots,i_k\}$ 都相同，都等于 $f_k$，同理 $g_{j_1\cdots j_{n-k}}$ 都等于 $g_{n-k}$，所以
$$(fg)_k=\sum_{k=0}^n\sum_{\{i_1,\ldots,i_k\}\subseteq\{1,2,\ldots,n\}} f_{i_1\cdots i_k}g_{j_1\cdots j_{n-k}}=\sum_{k=0}^nC_n^k f_kg_{n-k}.$$
这就证明了 $\theta$ 确实是代数同态。

显然 $\theta(h_k)=\frac{t^k}{k!}$。我们来分析 $\theta(s_\lambda(x_1,\ldots,x_n))$。单项式 $x_1x_2\cdots x_k$ 在 $s_\lambda(x_1,\ldots,x_n)$ 中的系数等于将数字 $1,2,\ldots,k$ 填入形状为 $\lambda$ 的 Ferrers 图，使得结果为半标准 Young 表的不同填法的个数，且每个数字恰好使用一次，这只能是 $k=n$ 且得到的是标准 Young 表，这样的填法有 $f_\lambda$ 种，所以
$$\theta(s_\lambda(x_1,\ldots,x_n))=f_\lambda \frac{t^n}{n!}.$$

在 Jacobi-Trudi 恒等式两边同时用 $\theta$ 作用，得到
$$f_\lambda \frac{t^n}{n!}=\det\left( \frac{t^{\lambda_i-i+j}}{(\lambda_i-i+j)!} \right).$$
取 $t=1$ 代入得
$$f_\lambda = n!\cdot \det\left(\frac{1}{(\lambda_i-i+j)!}\right).$$
我们把这个行列式写出来：
$$f_\lambda = n!\cdot \det\begin{pmatrix}
\frac{1}{\lambda_1!} & \frac{1}{(\lambda_1+1)!} & \cdots & \frac{1}{(\lambda_1+r-1)!}\\
\frac{1}{(\lambda_2-1)!} & \frac{1}{\lambda_2!} & \cdots & \frac{1}{(\lambda_2+r-2)!}\\
\cdots & \cdots &\cdots&\cdots\\
\frac{1}{(\lambda_r-r+1)!} & \frac{1}{(\lambda_r-r+2)!} & \cdots & \frac{1}{\lambda_r!}
\end{pmatrix}.$$
它的最后一列恰好是 $\{\mu_i!,1\leq i\leq r\}$，提出来以后得到
$$f_\lambda = \frac{n!}{\prod\limits_{i=1}^r\mu_i!}\cdot \det\begin{pmatrix}
\mu_1^{\underline{r-1}}& \mu_1^{\underline{r-2}} & \cdots & \mu_1^{\underline{0}}\\
\mu_2^{\underline{r-1}} & \mu_2^{\underline{r-2}} & \cdots & \mu_2^{\underline{0}}\\
\cdots & \cdots &\cdots&\cdots\\
\mu_r^{\underline{r-1}}& \mu_r^{\underline{r-2}} & \cdots & \mu_r^{\underline{0}}
\end{pmatrix}= \frac{n!}{\prod\limits_{i=1}^r\mu_i!}\cdot\det(\mu_i^{\underline{r-j}}).$$
其中采用了记号 [^2]
$$x^{\underline{k}}=x(x-1)\cdots(x-k+1).$$

不难证明 $\det(\mu_i^{\underline{r-j}})$ 这个行列式与 Vandermonde 行列式 $\det(\mu_i^{r-j})$ 的值是一样的 （你注意到这两个行列式的区别了吗？)，都等于 $\prod\limits_{i<j}(\mu_i-\mu_j)$，所以

$$f_\lambda = \frac{n!}{\prod\limits_{i=1}^r\mu_i!}\cdot\prod\limits_{i<j}(\mu_i-\mu_j) = \frac{n!}{\prod\limits_{v\in F_\lambda}h_v}.$$
这就完成了 hook 长度公式的证明。

[^1]: Symmetric Functions and Hall Polynomials. I. G. Macdonald.
[^2]: A Course in Enumeration. Martin Aigner. Graduate Texts in Mathematics 238. Springer-Verlag, 2007. 见 Chapter 8 的 highlights 部分。
