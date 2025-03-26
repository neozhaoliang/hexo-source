---
title: "Schur 多项式与钩长公式"
categories: ["计数组合学"]
date: 2011-04-04
url: "schur-polynomials-and-hook-length-formula"
---

在数学中有那么一些问题，它们的表述简单而初等，但是解决起来却非常困难，往往需要相当的奇思妙想和深刻的工具，而且围绕这个问题许多不同领域的数学交织在一起，演绎出许多奇妙的故事来。

Young 表就是其中一个精彩的例子，组合数学，表示论，概率论在这里发生了奇妙的交汇。

我们先从一个有趣的问题开始：

:::{.question .unnumbered}
$n$ 位选民要在一次选举中给 $m$ 个候选人投票，每个选民只能投一票。已知第 $i$ 位候选人最终的得票数为 $\lambda_i$，这里 $\sum_{i=1}^m\lambda_i=n$ 且 $\lambda_1\geq\cdots\geq\lambda_m$。问题是：有多少种不同的得票序列，使得在投票过程中的任一时刻，对任何的 $i<j$，第 $i$ 位候选人所得的票数总不少于第 $j$ 位候选人所得的票数？

举个例子，假设有 $n=10$ 位选民和 $m=4$ 个候选人，则得票序列
$$1, 2, 1, 3, 2, 1, 2, 4, 3, 1$$
表示第一个选民投票给 1 号，第二个选民投票给 2 号，第三个选民投票给 1 号，第四个选民投票给 3 号，依次类推。符合问题要求的序列必须满足对任何 $1\leq k\leq n$ 和 $1\leq i<j\leq m$，序列的前 $k$ 项中数字 $i$ 出现的次数都大于等于数字 $j$ 出现的次数。
:::

虽然问题的表述很简单，但其实答案相当复杂，叫做钩长公式 (hook length formula)。钩长公式有好几个证明，但我最喜欢的证明是使用 Schur 多项式的理论，接下来就来介绍它。

<!-- more -->

# Schur 多项式：组合定义

设 $\lambda=(\lambda_1,\lambda_2,\ldots)$ 是一个元素都是非负整数且只有有限多项非 0 的序列，如果有 $\lambda_1\geq \lambda_2\geq\cdots$ 成立，就称 $\lambda$ 是一个整数分拆，简称分拆，并记 $|\lambda|=\sum\limits_{i=1}^\infty \lambda_i$。由于 $\lambda$ 只有有限多项非 0，$|\lambda|$ 总是有限的。如果 $|\lambda|=k$ 就称 $\lambda$ 是整数 $k$ 的分拆，记作 $\lambda\vdash k$。此外用 $l(\lambda)$ 表示 $\lambda$ 中非零项的个数。

对每个分拆 $\lambda\vdash k$，我们可以用一个图 $F_\lambda$ 来表示它：$F_\lambda$ 由 $k$ 个方格组成，第一行有 $\lambda_1$ 个方格，第二行有 $\lambda_2$ 个方格，. . . 以此类推，每一行都是左对齐的，总共有 $l(\lambda)$ 行。$F_\lambda$ 叫做 $\lambda$ 的 Ferrers 图。例如下图是分拆 $\lambda=(4, 2, 2, 1)$ 的 Ferrers 图。

|||||
|:-:|:-:|:-:|:-:|
|$\phantom{}$|$\phantom{}$|$\phantom{}$|$\phantom{}$|
|$\phantom{}$|$\phantom{}$|||
|$\phantom{}$|$\phantom{}$|||
|$\phantom{}$||||

注意 $\lambda$ 中的 0 不出现在 Ferrers 图中。

将 $F_\lambda$ 转置 （第一行变第一列，第二行变第二列，等等） 后得到的也是一个 Ferrers 图，其对应的分拆为 $\lambda'=(\lambda_1',\lambda_2',\ldots,\lambda_r')$，其中每个 $\lambda_i'$ 是 $\lambda$ 的 Ferres 图的第 $i$ 列的长度，$r=\lambda_1$。$\lambda'$ 叫做 $\lambda$ 的共轭分拆，例如上图转置后得到的共轭分拆为 $\lambda'=(4, 3, 1, 1)$：

|   |   |   |   |
|:-:|:-:|:-:|:-:|
|$\phantom{}$|$\phantom{}$|$\phantom{}$|$\phantom{}$|
|$\phantom{}$|$\phantom{}$|$\phantom{}$||
|$\phantom{}$||||
|$\phantom{}$||||

在 $F_\lambda$ 的每个方格中填入正整数，使得**每一行从左到右是弱递增的**，**每一列从上到下是严格递增的**，这样得到的表格叫做半标准 Young 表 (semistandard Young tableaux)，简称为 SSYT；如果一个形状为 $\lambda\vdash n$ 的半标准的 Young 表包含的数字恰好为集合 $\{1,2,\ldots,n\}$，则称其为一个标准 Young 表 (standard Young tableaux)，简称为 SYT。标准 Young 表由于数字互不相同所以也是行严格递增的。

:::{.example}

下图分别显示的是形状为 $\lambda=(4, 3, 2,1)$ 的一个半标准和一个标准 Young 表。

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
:::

我们用记号 ${\rm SSYT}(n,\lambda)$ 表示所有形状为 $\lambda$，并且填入的数字不超过 $n$ 的半标准 Young 表组成的集合。显然若要使得此集合非空必须有 $n\geq l(\lambda)$（SSYT 从上到下是递增的，第一列的最后一行填入的整数至少是 $l(\lambda)$）。当 $|\lambda|=n$ 时我们也将其简写为 ${\rm SSYT}(\lambda)$。类似地用记号 ${\rm SYT}(\lambda)$ 表示所有形状为 $\lambda$ 的标准 Young 表组成的集合。

文章开头的投票序列问题本质上是计算集合 ${\rm SYT}(\lambda)$ 的个数。实际上所有符合要求的投票序列与 ${\rm SYT}(\lambda)$ 是一一对应的：依次处理数字 $j=1,2,\ldots,n$，如果选民 $j$ 将票投给了候选人 $i$，则将数字 $j$ 填入 $\lambda$ 的 Ferrers 图的第 $i$ 行从左边数起第一个空着的方格中。所有 $n$ 个数字填写完后得到的就是一个标准 Young 表 $T$。若不然，假设第 $k$ 个选民投票给第 $j$ 个候选人，导致候选人 $j$ 的得票数大于某个候选人 $i\,(i<j)$ 时，第 $j$ 行填入的 $k$ 上方对应的第 $i$ 行的方格此时是空的，这个方格未来只能填大于 $k$ 的数字，这样的 Young 表当然不是标准的。反之对一个标准 Young 表，其所有 $\leq k$ 的方格构成一个子 Young 表 $T_k$，其每行长度是当前第 $i$ 个候选人的得票数，当然是递减的，所以它给出一个满足要求的投票序列。

:::{.example}
标准 Young 表

|   |   |   |   |
|:-:|:-:|:-:|:-:|
| 1  | 3  | 6  | 10  |
| 2  | 5  | 7
| 4  | 9
| 8

对应的得票序列为
$$1, 2, 1, 3, 2, 1, 2, 4, 3, 1$$
只要依次将 $1,2,\ldots,10$ 所在的行写出来即可。
:::

为了解决 ${\rm SYT}(\lambda)$ 的计数问题，我们需要引入 Schur 多项式的概念，Schur 多项式可以看作是半标准 Young 表的“生成函数”。

给定一个满足 $n\geq l(\lambda)$ 的分拆 $\lambda=(\lambda_1,\ldots,\lambda_n)$ （允许某些 $\lambda_i$ 为零），$T\in {\rm SSYT}(n,\lambda)$ 是**半标准 Young 表**。我们称 $c(T)=(c_1,c_2,\ldots,c_n)$ 为 $T$ 的**容度** (content)，其中 $c_i$ 是 $T$ 中数字 $i$ 出现的次数。记
$$X^{c(T)} = x_1^{c_1}x_2^{c_2}\cdots x_n^{c_n}.$$
$X^{c(T)}$ 是一个单项式。

:::{.example}
对 $n=10$ 和 $\lambda=(4,3,2,1)$，上面的半标准 Young 表

|   |   |   |   |
|:-:|:-:|:-:|:-:|
| 1  | 1  | 2  | 2  |
| 3  | 3  | 8
| 4  | 6
| 5

的容度为 $(2, 2, 2, 1, 1, 1, 0, 1, 0, 0)$，其对应的单项式为
$$X^{c(T)} = x_1^2x_2^2x_3^2x_4x_5x_6x_8.$$
:::

:::{.definition}

**Schur 多项式的组合定义**

设 $n$ 是一个正整数，$\lambda=(\lambda_1,\ldots,\lambda_n)$ 是一个满足 $n\geq l(\lambda)$ 的分拆 （允许某些 $\lambda_i$ 为零），定义 $n$ 变元多项式
$$s_\lambda(x_1,\ldots,x_n)=\sum_{T\in {\rm SSYT}(n,\lambda)}X^{c(T)}.$$
$s_\lambda$ 叫做 $n$ 变元的 Schur 多项式。
:::

注意 $s_\lambda(x_1,\ldots,x_n)$ 只有在 $l(\lambda)\leq n$ 时才有定义。

:::{.example}
对 $\lambda=(3,2)$，
$$\begin{align*}s_{(3,2)}(x_1,x_2,x_3) \,= \,
& x_1^3x_2^2  + x_1^3x_3^2 +  x_1^3x_2x_3 + x_1^2x_2^3 + x_1^2x_3^3 + 2x_1^2x_2x_3^2 + \\
&2x_1^2x_2^2x_3 +x_1x_2x_3^3 + 2x_1x_2^2x_3^2 + x_1x_2^3x_3 +  x_2^2x_3^3 + x_2^3x_3^2.
\end{align*}$$
前几项对应的半标准 Young 表如下：

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
:::

可以看到虽然 Schur 多项式的定义很直观，但写出它的具体表达式来却并不容易。我们需要找到 Schur 多项式的其它表现形式。首先我们将证明 Schur 多项式总是对称多项式。

# Bender-Knuth 对合

这一节我们来证明 Schur 多项式 $s_\lambda(x_1,\ldots,x_n)$ 是对称多项式。由于置换群 $S_n$ 可以由对换 $(i\,i+1)$ 生成，所以只要证明 $s_\lambda$ 在交换 $x_i$ 和 $x_{i+1}$ 后保持不变即可。而这又只要说明容度为 $(\ldots,c_i,c_{i+1},\ldots)$ 的半标准 Young 表与容度为 $(\ldots,c_{i+1},c_i,\ldots)$ 的半标准 Young 表之间存在一一对应即可。看起来只要对每个形状为 $\lambda$ 的半标准 Young 表，把其中的数字 $i$ 全换成 $i+1$，同时把 $i+1$ 全换成 $i$ 就可以了，是吗？

问题出在这样简单粗暴地修改得到的未必还是半标准的 Young 表。我们需要仔细点选择那些翻转的方格。我们作如下规定：如果某个 $i$ 的下方恰好是 $i+1$，就称这样的 $i$ 和 $i+1$ 是匹配了的。而那些下方没有 $i+1$ 的 $i$，或者上方没有 $i$ 的 $i+1$ 统称为未匹配的。

下图中演示了 $i=2$ 的例子，绿色显示了匹配的元素，红色显示了未匹配的元素。

<style>
table {max-width: 36%}
</style>

| | | | | | | |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| 1  | 1  | 1  | 1 | 1  | 1 | <span style="color:green">2</span>|
|<span style="color:green">2</span>| <span style="color:red">2</span>  | <span style="color:red">2</span>  | <span style="color:red">2</span> | <span style="color:red">3</span>  | <span style="color:red">3</span> | <span style="color:green">3</span> |
|<span style="color:green">3</span>  | 4  | 4 |
| 4|

下面的事实不难验证：

> 在 $T$ 的任意一行中，未匹配的元素总是构成一段连续的序列。即设 $i=x\leq y\leq i+1$ 是两个未匹配的元素，则它们中间不可能有匹配的元素。

设在一行中，未匹配的元素是 $r$ 个 $i$ 后面接着 $s$ 个 $i+1$，我们把这段序列替换为 $s$ 个 $i$ 后面接上 $r$ 个 $i+1$，对 $T$ 的每一行都进行这个操作而保持 $T$ 的其它数字不动。在这个变换下 $T$ 变成 $T^\ast$，$T^\ast$ 仍然是半标准的。

例如在上面的 $T$ 中，红色标注的未匹配的元素是 3 个 2 后面跟了 2 个 3，变换后在 $T^\ast$ 中变成了 2 个 2 后面跟了 3 个 3：

|   |   |   |   |  | | |
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| 1  | 1  | 1  | 1 | 1  | 1 | <font color="green">2</font> |
|<font color="green">2</font>| <font color="red">2</font>  | <font color="red">2</font>  | <font color="red">3</font> | <font color="red">3</font>  | <font color="red">3</font> | <font color="green">3</font> |
| <font color="green">3</font>  | 4  | 4 |
| 4 |

容易验证若 $T$ 的容度为 $(\ldots,c_i,c_{i+1},\ldots)$，则 $T^\ast$ 的容度为 $(\ldots,c_{i+1},c_i,\ldots)$。这个变换显然是个对合：$(T^\ast)^\ast=T$，这就证明了 Schur 多项式是对称的。

# Jacobi-Trudi 恒等式

除了半标准 Young 表的生成函数之外，Schur 多项式还有很多其它等价的定义。在这一节中，我们来把 Schur 多项式表示为齐次对称多项式的行列式。

:::{.definition}
记 $h_k(x_1,\ldots,x_n)$ 为所有 $k$ 次单项式的和：
$$h_k(x_1,\ldots,x_n)=\sum_{\begin{subarray}{c}\alpha_1+\alpha_2+\cdots+\alpha_n=k\\\alpha_i\in\mathbb{Z}_{\geq0}\end{subarray}} x_1^{\alpha_1}x_2^{\alpha_2}\cdots x_n^{\alpha_n}.$$
这里约定 $h_0=1$，$k<0$ 时 $h_{k}=0$。$h_k$ 也是对称多项式，叫做齐次对称多项式。
:::

:::{.example}
$h_2(x_1,\ldots,x_n)=\sum_{i=1}^n x_n^2 + \sum_{1<i<j<n}x_ix_j$。
:::

:::{.theorem}
设 $\lambda=(\lambda_1,\ldots,\lambda_n)\in\mathbb{Z}^n_{\geq0}$ 为一个分拆，则
$$s_\lambda(x_1,x_2,\ldots,x_n)=\det\left( h_{\lambda_i-i+j}\right)_{1\leq i,j\leq n}.$$
:::

:::{.note}
有的写法是
$$s_\lambda(x_1,x_2,\ldots,x_n)=\det\left( h_{\lambda_i-i+j}\right)_{1\leq i,j\leq l(\lambda)}.$$
这没有区别。实际上令 $r=l(\lambda)$，则
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
:::

证明要用到 [Gessel-Viennot 的不相交格点路径组方法](https://en.wikipedia.org/wiki/Lindstr%C3%B6m%E2%80%93Gessel%E2%80%93Viennot_lemma)。关于这个方法你可以参考我之前的 [一篇博文](/macmahon-formula-plane-partitions)。当然 [@thebook] 中格点路径组一章也是极好的介绍。

关键是要**把每个半标准 Young 表对应到一个不相交的路径组**。

下面的动图显示了 $n=6, \lambda=(5,4,3,2,0, 0)$ 时的一个形状为 $\lambda$ 的 Young 表 $T$

|   |   |   |   | |
|:-:|:-:|:-:|:-:|:-:|
| 1  | 1  | 1  | 1  | 2  |
| 2  | 2  | 3  | 3  |
| 3  | 4  | 4  |
| 4  | 5  |

与其不相交路径组的对应关系，$T$ 的第 $i$ 行是一个长度为 $\lambda_i$ 的递增数列，这样一个数列可以对应为一条从 $(0,1)$ 到点 $(\lambda_i,n)$ 的 Gauss 路径，这个路径即为这一行的“高度图”。

<img style="margin:0px auto;display:block" width="600" src="/images/schur/jacobi-trudi.gif"/>

我省略了 $\lambda_i=0$ 的部分，它们对应的是权重为 1 的垂直路径，实际上不起作用：

<img style="margin:0px auto;display:block" width="600" src="/images/schur/jacobi-trudi2.gif"/>

但是半标准 Young 表的列是严格递增的，这个递减关系反映在 Gauss 路径上，就是 $T$ 的第二行对应的路径应该整体位于第一行对应路径的上方，第三行对应的路径整体位于第二行对应的路径的上方，...，两条路径之间可以有垂直的公共边，但是不能有水平的公共边。

现在把第 $i$ 条路径水平地向左平移 $i$ 个单位，变成一条从 $A_i=(-i,1)$ 到 $B_i=(-i+\lambda_i,n)$ 的路径，则这样得到的 $n$ 条路径两两之间没有公共点，即构成一个不相交的路径组。

反过来每一个这样的不相交的路径组也对应于一个半标准 Young 表。

令水平线 $y=k$ 的权值为 $x_k$，垂直边的权值一律为 1，每条路径的权重是其所含各边的权重乘积。由于每条从 $A_j=(-j,1)$ 到 $B_i=(-i+\lambda_i,n)$ 的路径由于其横向长度是固定值 $\lambda_i-i+j$，所以其权重是关于 $x_1,\ldots,x_n$ 的次数为 $\lambda_i-i+j$ 的单项式，而且所有这样的单项式都可以作为某条从 $(-j,1)$ 到 $(-i+\lambda_i,n)$ 的路径的权重，从而这两点之间所有路径的权重之和为齐次对称多项式 $h_{\lambda_i-i+j}$，于是由 Gessel-Viennot 引理，行列式 $\det\left(h_{\lambda_i-i+j}\right)_{1\leq i,j\leq n}$ 给出了所有不相交路径组的权重之和。然而我们已经说明了这些不相交的路径组一一对应于形状为 $\lambda$ 的标准 Young 表，并且每个路径组的权重正是它对应 Young 表的权重 $X^{c(T)}$，所以
$$s_\lambda=\det\left(h_{\lambda_i-i+j}\right)_{1\leq i,j\leq n}.$$
这就证明了 Jacobi-Trudi 恒等式。

# 钩长公式

有了前面的准备，我们可以开始介绍钩长公式和它的证明了。

首先来定义什么钩子长度：设 $\lambda\vdash n$, $F_\lambda$ 是其 Ferrers 图，记 $v=(i,j)$ 为 $F_\lambda$ 中第 $i$ 行第 $j$ 列位置的方格 （只考虑那些有方格的位置）。我们计算那些与 $v$ 同行但是位置在 $v$ 的右边，以及与 $v$ 同列但是位置在 $v$ 的下方的方格的总数，$v$ 自己也算一个但是只算一次。这个数字称作 $v$ 的钩子长度，记作 $h_v$。

例如 $\lambda=(5, 4, 3, 2, 1)$ 的 Ferrers 图中，$v=(1, 1)$ 的钩子长度 $h_v=5$。

|   |   |   |   |   |
|:-:|:-:|:-:|:-:|:-:|
| $\phantom{}$ | $\phantom{}$  | $\phantom{}$  |  $\phantom{}$ | $\phantom{\bullet}$  |
| $\phantom{\bullet}$   | $\bullet$  | $\bullet$  | $\bullet$
|$\phantom{\bullet}$  | $\bullet$  |
| $\phantom{\bullet}$  | $\bullet$
| $\phantom{\bullet}$

一般地，$(i,j)$ 位置的方格的 hook 长度为 $\lambda_i + \lambda'_j - i - j + 1$。

:::{.theorem}

(**hook length formula**)

$$|{\rm SYT}(\lambda)|=f_\lambda=\frac{n!}{\prod\limits_{v\in F_\lambda}h_v}.$$
:::

:::{.lemma #lemmaA}
设 $\mu_i=\lambda_i+r-i$，这里 $r=l(\lambda)=\lambda_1',\,1\leq i\leq r$，则
$$\prod_{v\in F_\lambda} h_v =\frac{\prod\limits_{i=1}^r \mu_i!}{\prod\limits_{i<j}(\mu_i-\mu_j)}.$$
:::

@Pre:lemmaA 的结论可以很容易由下面的 @Pre:lemmaB 得出：

:::{.lemma #lemmaB}
对固定的 $1\leq k\leq r$，$F_\lambda$ 的第 $k$ 行所有方格的钩子长度 $\{h_{kj},1\leq j\leq\lambda_k\}$ 和集合 $\{\mu_k-\mu_i, k\leq i\leq r\}$ 不相交，且它们的并恰好是
$\{0,1,\ldots,\mu_k\}$。于是第 $k$ 行所有方格的钩子长度的乘积等于
$$\frac{\mu_k!}{\prod\limits_{k<i}(\mu_k-\mu_i)}.$$
:::

@Pre:lemmaB 的证明：这里的证明改编自 @Macdonald2008。

我们以 $F_\lambda$ 的左下角为原点 $(0,0)$，沿着边界，每一步向右或者向上行走，并将经过的边依次标号为 $0,1,\ldots,\lambda_1+\lambda_1'-1$，一直到 $F_\lambda$ 的右上角 $(\lambda_1+\lambda_1')$ 为止。

<img style="margin:0px auto;display:block" src="/images/schur/hook_length_lemma.svg"/>

我们来分别计算竖直和水平的边的标号。

从图中容易看到，所有竖直的边和 Ferrers 图的第一列一一对应，每条边的标号正是它最左边第一个方格的钩子长度，所以这些边的标号构成集合
$$\{h_{i1},1\leq i\leq r\}=\{\lambda_i+\lambda_1'-i,1\leq i\leq r\}.$$

另一方面，所有水平的边和 Ferrers 图的第一行一一对应，每条边的标号是 $\lambda_1+\lambda_1'-1$ 减去它到达终点 $(\lambda_1+\lambda_1')$ 所需的剩余步数。然而这个剩余步数正是它最上方第一个方格的钩子长度，所以这些边的标号构成集合
$$\{\lambda_1+\lambda_1'-1-h_{1j},1\leq j\leq \lambda_1\}=\{\lambda_1'-\lambda_j'+j-1,1\leq j\leq \lambda_1\}.$$
这两个集合的不交并构成了所有边的标号集合 $\{0,1,\ldots,\lambda_1+\lambda_1'-1\}$，把这两个集合中的元素同时用 $\lambda_1+\lambda_1'-1$ 减去，得到的两个集合
$$\{\lambda_1-\lambda_i+i-1,1\leq i\leq r\}\quad \text{and} \quad\{\lambda_1+\lambda_j'-j,1\leq j\leq \lambda_1\}$$
的不交并仍然构成集合 $\{0,1,\ldots,\lambda_1+\lambda_1'-1\}$。前者正是集合 $\{\mu_1-\mu_i,1\leq i\leq r\}$，后者正是第一行所有方格的钩子长度，这就证明了 @Pre:lemmaB 中 $k=1$ 的情形。

对一般的 $k$，考虑删掉 Ferrers 图的前 $k-1$ 行后剩下的部分，这仍然是一个 Young 表，对它的第一行（即原 Ferres 图的第 $k$ 行）应用上面的结论即得。$\blacksquare$

最后我们来完成钩长公式的证明：这里使用了一个小技巧：考虑无穷多个变元的对称多项式环 $\Lambda[x_1,\ldots,x_n,\ldots]$，任何 $k$ 变元的 Schur 多项式都是 $\Lambda$ 中的元素。$\Lambda$ 到有理数域上的单变元形式幂级数环 $\mathbb{Q}[[t]]$ 有一个同态 $\theta$：
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

在齐次对称多项式 $h_k$ 中，其形如 $x_1x_2\cdots x_n$ 的项只有一个，就是 $x_1x_2\cdots x_k$，并且这一项的系数是 1，所以 $\theta(h_k)=\frac{t^k}{k!}$。

我们再来分析 $\theta$ 作用在 Schur 多项式上的结果 $\theta(s_\lambda(x_1,\ldots,x_n))$。注意 这里要求 $n=|\lambda|$，即将数字 $\{1,2,\ldots,n\}$ 填入形状为 $\lambda\vdash n$ 的 Ferrers 图得到的半标准 Young 表的生成函数。单项式 $x_1x_2\cdots x_k$ 在 $s_\lambda(x_1,\ldots,x_n)$ 中的系数等于每个数字 $\{1,2,\ldots,k\}$ 都恰好使用一次的不同填法的个数，这只能是 $k=n$ 且得到的是标准 Young 表，这样的填法有 $f_\lambda$ 种，所以
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
其中采用了类似 @aigner07 中的记号
$$x^{\underline{k}}=x(x-1)\cdots(x-k+1).$$

不难证明 $\det(\mu_i^{\underline{r-j}})$ 这个行列式与 Vandermonde 行列式 $\det(\mu_i^{r-j})$ 的值是一样的，都等于 $\prod\limits_{i<j}(\mu_i-\mu_j)$。实际上我们可以考虑 $n$ 个变元 $X_1,\ldots,X_n$ 的行列式
$\det(X_i^{\underline{r-j}})$，这个多项式在 $X_i=X_j$ 时是 0，所以它有因子 $\prod_{1\leq i<j\leq r}(X_i-X_j)$。另一方面它的行列式展开以后每一项次数都不超过 $\sum_{i=1}^r(r-i)=\frac{r(r-1)}{2}$，所以比较次数即得它必然等于 $\prod_{1\leq i<j\leq r}(X_i-X_j)$ 乘以一个常数。再比较 $X_1^{r-1}X_2^{r-2}\cdots X_r^0$ 的系数（来自主对角线）即得这个常数是 1。

于是
$$f_\lambda = \frac{n!}{\prod\limits_{i=1}^r\mu_i!}\cdot\prod\limits_{i<j}(\mu_i-\mu_j) = \frac{n!}{\prod\limits_{v\in F_\lambda}h_v}.$$
这就完成了钩长公式的证明。