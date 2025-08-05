---
title: "静电场与 Marden 定理"
date: 2021-05-24
categories: ["可视化复分析"]
url: "Marden-theorem"
---
我昨晚刚完成了一个 [shadertoy 小动画](https://www.shadertoy.com/view/7lf3Wn)，演示平面几何中的 [Marden 定理](https://en.wikipedia.org/wiki/Marden%27s_theorem)、复分析中的 [Gauss-Lucas 定理](https://en.wikipedia.org/wiki/Gauss%E2%80%93Lucas_theorem) 和静电场之间的关系：

<!-- more -->

<iframe width="640" height="360" frameborder="0" src="https://www.shadertoy.com/embed/7lf3Wn?gui=true&t=10&paused=true&muted=false" allowfullscreen></iframe>

这个动画的含义如下：

1. 在复平面上三角形 $\Delta ABC$ 的三个顶点处各自放置一个单位正电荷，则平面上电场强度为 0 的点有两个（这两个点可能重合），它们位于 $\Delta ABC$ 的内部，并且是三次复多项式 $P(z) = (z-A)(z-B)(z-C)$ 的导数 $P'(z)$ 的零点。

2. 不仅如此，这两个零点还是一个内切于 $\Delta ABC$ 的椭圆的两个焦点，此椭圆是所有内切于 $\Delta ABC$ 的椭圆中面积最大者，其与 $\Delta ABC$ 三边的切点均为各边中点。这个椭圆叫做 [Steiner 内切椭圆](https://en.wikipedia.org/wiki/Steiner_inellipse)。

这个动画是受几天前 Albert Chern 的 [一篇推文](https://twitter.com/theAlbertChern/status/1395468792788967428?s=20) 启发所作，John Baez 也写了一篇关于这个话题的 [文章](https://johncarlosbaez.wordpress.com/2021/05/24/electrostatics-and-the-gauss-lucas-theorem/)。我是由此才了解到 Marden 定理还有如此有趣的物理学解释，的确大开眼界！

---

在平面上不全共线的 $n$ 个点 $a_1,\ldots,a_n$ 处放置若干单位正电荷，这规定了一个平面上的电势函数 $V(z)$ （标量） 和一个电场 $\mathbf{E}(z)$ （二维向量场）。电学知识告诉我们，在忽略物理常数意义下有
$$V(z) =\sum_{i=1}^n\ln|z-a_i|=\ln\prod_{i=1}^n|z-a_i|=\ln|P(z)|.$$
其中 $P(z)=(z-a_1)(z-a_2)\cdots(z-a_n)$ 是以 $a_1,\ldots,a_n$ 为根的多项式。

此外 $\mathbf{E} = -\nabla V$ 为电势的梯度向量取负。

> **问题**：怎样确定平面上场强为 0 的点呢？

场强为 0 的点也叫做**平衡点**、**鞍点**，因为在这一点处的电荷不受电场的库仑力。

答案有点出人意料：平衡点必然是 $P'(z)$ 的零点，而且这些点都属于 $a_1,\ldots,a_n$ 的凸包！

注意 $V(z)$ 是 $\ln P(z) = \ln |P(z)| + i\arg{P(z)}$ 的实部，由 Cauchy-Riemann 方程不难看出满足 $\nabla V=0$ 的点都是 $(\ln P(z))'=P'(z)/P(z)$ 的零点，所以平衡点都是 $P'(z)$ 的零点。平衡点属于 $\{a_1,\ldots,a_n\}$ 的凸包是根据 [Gauss-Lucas 定理](https://en.wikipedia.org/wiki/Gauss%E2%80%93Lucas_theorem)：任何复多项式 $f$ 的导数的零点都属于 $f$ 的零点构成的凸包！

John Baez 的文章中利用凸集分离定理给出了 Gauss-Lucas 定理的一个简洁证明。

需要注意的是，反过来 $P'(z)$ 的零点未必都是电场的平衡点，当 $P(z)$ 有重根时，重根是 $P'(z)$ 的零点但不是 $P'(z)/P(z)$ 的零点，所以不是平衡点。

平衡点是鞍点 (saddle point) 是由于 $V(z)$ 的调和性质，其不存在局部的极大极小值，所以使得 $\nabla V=0$ 的点都是鞍点。

在三个点电荷 $A,B,C$ 的情形，平衡点有两个，它们位于 $\Delta ABC$ 的内部，且是多项式 $P(z) = (z-A)(z-B)(z-C)$ 的导数 $P'(z)$ 的零点。那关于这两个点的具体位置我们可以说什么吗？这就是优美的 Marden 定理，要表述这个定理，我们需要先介绍 Steiner 内切椭圆的概念：

:::{.theorem .unnumbered}
**Steiner inellipse** 在所有内切于 $\Delta ABC$ 的椭圆中，存在唯一的一个面积最大者，叫做 Steiner inellipse，此椭圆与 $\Delta ABC$ 三边的切点为各边的中点。
:::

Marden 定理断言 $P'(z)$ 的两个根正是 Steiner 内切椭圆的两个焦点：

:::{.theorem .unnumbered}
**Marden 定理** 复多项式 $P(z)=(z-A)(z-B)(z-C)$ 的导数 $P'(z)$ 的两个零点正是 $\Delta ABC$ 的 Steiner inellipse 的两个焦点。
:::

Steiner inellipse 和 Marden 定理的证明并不复杂，美国数学月刊上出现过两篇介绍其证明的文章，都非常值得一读：

1. [Triangles, Ellipses, and Cubic Polynomials](https://www.researchgate.net/publication/228698127_Triangles_Ellipses_and_Cubic_Polynomials).

2. [An Elementary Proof of Marden's Theorem](https://www.researchgate.net/publication/263136028_An_Elementary_Proof_of_Marden%27s_Theorem).

其中第一篇文章采用了复数和仿射变换的途径，第二篇使用了椭圆的光学性质。
