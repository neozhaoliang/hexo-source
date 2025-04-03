---
title: 平面分拆的 Macmahon 公式
date: "2009-03-10"
categories: [计数组合学]
url: "macmahon-formula-plane-partitions"
---

:::{.question .unnumbered}
一个边长为 $a\times b\times c$ 的平行六边形（$a,b,c$ 都是正整数），每个内角都是 120 度。用边长为 1 的菱形密铺，有多少种不同的方法？

![](/images/macmahon/hexagon.svg){width=400 .fig}
:::

下图是一种密铺的示例：

![](/images/macmahon/planepartition.svg){width=400 .fig}

<!-- more -->

我们观察这张图，想象在空间中鸟瞰它，发现它很像是在墙角“堆箱子”。不仅如此，箱子的堆放方式还满足规律：从墙角开始，沿着两侧墙壁的方向，箱子的高度是递减的。我们把地面上第 $i$ 行第 $j$ 列位置箱子的高度 $a_{ij}$ 填写在一个 $a$ 行 $b$ 列的矩阵 $A$ 中（习惯上空白位置的 0 不写出来）：

|   |   |   |   |   |   |
|:-:|:-:|:-:|:-:|:-:|:-:|
| 5 | 5 | 5 | 5 | 4 | 3
| 5 | 4 | 4 | 4 | 1 | 1
| 4 | 4 | 2 | 1 | 1 |
| 3 | 1 | 1 | 1 | |
| 2 | 1 | 1 |||

$A$ 有如下特点：

> + $A$ 的每一行从左到右，每一列从上到下都是递减的。
> + $a_{ij}$ 都是介于 $0$ 和 $c$ 之间的整数（箱子的高度不能超过天花板的高度 $c$）。

我们把矩阵 $A$ 叫做一个参数为 $(a,b,c)$ 的受限制的**平面分拆**。

每个受限制的平面分拆都对应一种堆箱子的方式，从而对应六边形的一个菱形密铺。这个对应是一一的。较真的读者可能会说：“且慢，你这只是从视觉直观上看出来菱形密铺和堆箱子是一一对应的，这不够严格吧？” 没错，严格的证明是可以有的，但是这里我们的目的是欣赏一处数学奇趣，不必搞得那么学究。

总之，我们把开头的密铺问题转化为平面分拆的计数问题：

:::{.question .unnumbered}
满足如下两个条件的 $a$ 行 $b$ 列矩阵有多少个？

1. 元素都是 $[0,c]$ 之间的非负整数；
2. 每一行从左到右，每一列从上到下都是递减的。
:::

设答案为 $M(a,b,c)$，则我们有一个非常令人吃惊的表达式：

:::{.theorem .unnumbered}
**Macmahon 公式** \

$$M(a,b,c)=\prod_{i=1}^a\prod_{j=1}^b\prod_{k=1}^c\frac{i+j+k-1}{i+j+k-2}.$$
:::


虽然问题看起来很初等，但是答案的复杂暗示我们它并不像看起来那么容易。接下来你会看到，用一个巧妙的方法可以把问题转化为求一个行列式的值。

# 不相交的路径组

我们知道在平面上从原点 $(0,0)$ 出发，每次向右或者向上移动一个单位的距离，到达点 $(b,a)$ 的路径个数是组合数 $\binom{a+b}{b}$，这样的一条路径叫做 Gauss 路径。

每个平面分拆的矩阵 $A$ 都对应 $c$ 条这样的路径，其中第 $k$ 条路径是高度为 $k\,(1\leq k\leq c)$ 的那一层的「等高线」：

![](/images/macmahon/paths-on-cubes.svg){width=400 .fig}

我们把这些路径投影到 2D，和矩阵 $A$ 画在一起。从最下方的路径开始，第 $i$ 条路径对应的是矩阵中 $\geq i$ 的那些方格构成的区域的边界：

![](/images/macmahon/gauss_path.svg){width=500 .fig}

:::{.note}
在上图中，我稍微移动了各个路径的位置，使得它们容易在视觉中区分，所以导致看起来它们的起点和终点是不同的。实际上它们都是从 $(0,0)$ 到 $(b,a)$ 的 Gauss 路径。
:::

注意 $A$ 的行和列满足递降关系，这个递降关系反映在这 $c$ 条路径上就是，对任何两条路径，它们可以有接触点或者重合的边，但彼此不能穿过对方。

接下来是关键的一步：如果把这 $c$ 条路径沿着 $(-1,1)$ 方向，分别平移 $0,1,\ldots,c-1$ 个单位，则平移后的 $c$ 条路径两两之间将没有任何公共点。我们称之为一个不相交的路径组。如下图所示：

![](/images/macmahon/nonintersecting_paths.gif){width=550 .fig}

这里 $A_i=(1-i,i-1)$，$B_j=(b+1-j,a-1+j)$，$\{p_i:A_i\rightarrow B_i,1\leq i\leq c\}$ 是一个不相交的路径组。反过来对每一个这样的不相交的路径组，我们也很容易还原出对应的平面分拆来。

于是我们的问题又进一步转化为

:::{.question .unnumbered #paths-problem}
设 $\{A_i=(1-i,i-1)\}$ 和 $\{B_j=(b+1-j,a-1+j)\}$ 是平面上两组顶点集，计算所有不相交路径组 $\mathcal{P}=\{p_i,1\leq i\leq c\}$ 的数目，其中 $p_i$ 是从 $A_i$ 出发到 $B_i$ 的 Gauss 路径。
:::


# Gessel-Viennot 的巧妙方法

考虑 $c\times c$ 的矩阵 $M$，其元素 $m_{ij}$ 是从 $A_i$ 出发到达 $B_j$ 的所有 Gauss 路径的数目。由于 $A_i$ 坐标为 $(1-i,i-1)$，$B_j$ 坐标为 $(b+1-j,a-1+j)$，所以
$$m_{ij}=\binom{a+b}{b+i-j}.$$
这里如果 $b+i-j<0$ 则规定 $m_{ij}=0$。Gessel-Viennot 引理非常意外地告诉我们：

::: {.lemma .unnumbered}

**Gessel-Viennot 引理** \

记 $\mathcal{A}=\{A_i,1\leq i\leq c\}$ 和 $\mathcal{B}=\{B_j,1\leq j\leq c\}$ 是 [问题中所述](#paths-problem) 的两个顶点集，则所有不相交路径组的个数为
$$\det M=\det_{1\leq i,j\leq c}\left(\left(\begin{array}{c}a+b\\b+i-j\end{array}\right)\right).$$
:::

Gessel-Viennot 引理对更一般的带权的图也成立，它在许多组合问题中都有精彩的应用。关于这方面可以参看 [@thebook]。

**证明**：对 $c$ 元组上的任一置换 $\sigma\in S_c$，记路径组 $\mathcal{P}_\sigma=\{p_i:A_i\rightarrow B_{\sigma(i)},1\leq i\leq c\}$。

把 $\det M$ 按照行列式的定义展开：

$$\begin{aligned}\det M&=\sum_{\sigma}\text{sgn}(\sigma)m_{1\sigma(1)}\cdots m_{c\sigma(c)}\\&=\sum_{\sigma}\text{sgn}(\sigma)\left(\sum_{p_1:A_1\to B_{\sigma(1)}}1\right)\cdots\left(\sum_{p_c:A_c\to B_{\sigma(c)}}1\right).\end{aligned}$$

其中 $\sigma$ 跑遍对称群 $S_c$。取出其中的一个因子

$$\left(\sum_{p_1:A_1\to B_{\sigma(1)}}1\right)\cdots\left(\sum_{p_c:A_c\to B_{\sigma(c)}}1\right),$$

把它展开得到很多个 1，每个 1 对应一个路径组 $\mathcal{P}_\sigma$，因此

$$\det M=\sum_{\sigma,\mathcal{P}_\sigma}\text{sgn}(\sigma). \tag{$\ast$}\label{eq:det}$$

这个求和是对每个置换 $\sigma$，跑遍所有可能的路径组 $P_\sigma$。

我们来证明在 $(\ref{eq:det})$ 的求和中，相交路径组对应的项可以两两抵消，剩下的只有不相交的路径组。

设 $\mathcal{P}=\mathcal{P}_\sigma$ 是一个相交的路径组，我们构造与之抵消的路径组 $\mathcal{P}'$ 如下：

1. 在 $\mathcal{P}$ 的所有交点中，选择位于最“东北”方向的那一个，将其记作 $C$。
1. 选择最大的 $i$ 使得 $p_i$ 经过 $C$，再选择最大的 $j<i$ 使得 $p_j$ 也经过 $C$。
4. 交换 $p_i$ 和 $p_j$ 在 $C$ 点之后的部分，保持路径组其它部分不动。记得到的新路径组为 $\mathcal{P}'$。

直观上，你可以想象两个人分别从 $A_i$ 和 $A_j$ 出发沿着路径 $p_i$ 和 $p_j$ 前往目的地 $B_{\sigma(i)}$ 和 $B_{\sigma(j)}$。当他们到达 $C$ 时改变路线，沿着对方剩下的路径前往对方的目的地。

![](/images/macmahon/gessel_viennot.svg){width=550 .fig}

于是 $\mathcal{P}'$ 对应的置换 $\sigma'$ 与 $\sigma$ 只差一个对换 $(ij)$，因此 $\text{sgn}(\sigma')=-\text{sgn}(\sigma)$。更重要的是，如果对 $\mathcal{P}'$ 也进行上述操作的话，又会回到 $\mathcal{P}$，因此相交的路径组确实可以两两配对抵消。

于是我们可以把 $(\ref{eq:det})$ 改写为
$$\det M=\sum_{\sigma,\,\mathcal{P}_\sigma \text{ non-intersecting}}\text{sgn}(\sigma).$$

但是注意，不相交的路径组只有在 $\sigma=1$ 时才可能发生，即每个 $A_i$ 的目的地必须是 $B_i$。所以我们进一步得到
$$
\det M=\sum_{\sigma=1\text{ and } \mathcal{P}_\sigma \text{ non-intersecting}}1.$$
这正是所求的不相交路径组的个数。$\blacksquare$

# Dodgson's condensation method

为了求出行列式的值，我们介绍一个古老的方法：Dodgson's condensation。这是一个递归求解行列式的方法：设 $A$ 是一个 $n\times n$ 矩阵，用 $A_i^j$ 表示删去 $A$ 的第 $i$ 行和第 $j$ 列后剩下的 $n-1$ 阶矩阵，用 $A_{1,n}^{1,n}$ 表示删去 $A$ 的第 1 行第 1 列和第 $n$ 行第 $n$ 列后剩下的 $n-2$ 阶矩阵，则我们有恒等式

$$\det A\cdot \det A_{1,n}^{1,n}=\det A_1^1\det A_n^n-\det A_1^n\det A_n^1.$$

用一个形象的图片描述：

![](/../images/macmahon/dodgson.svg){width=450 .fig}

这个结论的证明不难，可以见 [维基百科](http://en.wikipedia.org/wiki/Dodgson_condensation)，这里就不再写了。

我们对 $c$ 归纳来证明

:::{.theorem .unnumbered}

（**Macmahon 公式**）

$$\det_{1\leq i,j\leq c}\left(\left(\begin{array}{c}a+b\\b+i-j\end{array}\right)\right)=\prod_{i=1}^a\prod_{j=1}^b\prod_{k=1}^c\frac{i+j+k-1}{i+j+k-2}.$$
:::

首先你需要对 $c=1$ 和 $c=2$ 的情形手算验证（略繁琐，不过只是一个 2 阶矩阵），设 $M_c(a, b)$ 为所求的行列式，注意到

$$\begin{cases}(M_c(a,b))_1^1=M_{c-1}(a,b),\\(M_c(a,b))_n^n=M_{c-1}(a,b),\\(M_c(a,b))_1^n=M_{c-1}(a-1,b+1),\\(M_c(a,b))_n^1=M_{c-1}(a+1,b-1),\\(M_c(a,b))^{1,n}_{1,n}=M_{c-2}(a,b).\end{cases}$$

然后应用归纳假设即可。

:::{.note}
问题的 $q-$ 计数版本也可以用 Gessel-Viennot 引理来做，只是行列式的求值略复杂。其实也可以用 [Krattenthaler 公式](https://arxiv.org/abs/math/9902004) 来计算，不过那个方法不是我们要讲的。
:::

# 番外话

说点八卦的东西。Dodgson 是 19 世纪的英国数学家，细心点的读者可能注意到这位老兄的名字实在让人不敢恭维：Dodgson，dog .. son？大概他也知道自己的名字难登大雅之堂，所以他给自己取了一个很好听的笔名：Lewis Carroll（路易斯·卡罗尔）。

你对这个名字没有反应么？那好，我们继续说说他的轶事。这位老兄虽然名字略俗，受过的教育可不含糊，是牛津大学的数学教授，也算上层社会体面人物，但是按照今天的话说，是个不折不扣的怪蜀黍，对萝莉有着特别的喜爱，尤其喜爱给她们拍裸照，所以后人基本认定他是一个恋童癖大叔。他曾经专门为邻居家的女儿写了一部童话来哄她开心，这就是大名鼎鼎的《爱丽斯漫游奇境记》。虽然创作动机不纯，但是这部童话非常精彩，以至于当时的英国女王都变成了他的粉丝。女王命令手下的大臣把 Dodgson 的全部著作都搜集呈上来，于是大臣献上了一本厚厚的《符号逻辑》，当然结果你猜得到的 ...

时光一转到了 20 世纪 80 年代，三位数学家 William Mills，David Robbins 和 Howard Rumsey 在研究计算行列式的快速数值算法时，受 Dodgson 算法的启发，发现了交错符号矩阵猜想。这是计数组合学里面最精彩的猜想之一。我向你推荐 Bressoud 的书 [@Bressoud1999]，我保证里面的故事和《爱丽丝漫游奇境记》一样奇妙 ...
