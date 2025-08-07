---
title: "遛狗中的数学：曲线的环绕数、Rouché 定理和开映射定理"
categories: [可视化复分析]
date: 2021-09-01
url: "Rouche-theorem-winding-number"
---

我写了一个 [shadertoy 小动画](https://www.shadertoy.com/view/fdK3RD)，演示 [@Needham1997] 书中第 7 章 "Winding numbers and topology" 中的结论：

<!--more-->

:::{.simple}
一个人和他的狗在公园里绕着一棵树散步，人和狗各自走的路径都是闭曲线，即经过一段时间后都会回到起点。如果人把狗绳抓的紧一些，使得整个过程中狗**无法接触**到树，则结束后人和狗绕着树走的圈数是一样的，这就是下面这个动画演示的：（树的位置是原点，用一个表盘标记）

<iframe width="640" height="360" frameborder="0" src="https://www.shadertoy.com/embed/fdK3RD?gui=true&t=10&paused=true&muted=false" allowfullscreen></iframe>
:::

对应的数学结论是：

> 如果两条闭曲线 $\gamma_1,\gamma_2$ 都不经过原点，且 $\gamma_1$ 可以在不碰触到原点的前提下通过连续的形变变为 $\gamma_2$（同伦），则 $\gamma_1,\gamma_2$ 关于原点的环绕数相等。

注意这个结论只要求 $\gamma_1,\gamma_2\colon\ [0,1]\to\mathbb{R}^2$ 是两条连续曲线，并不涉及解析性。因为环绕数和同伦都是拓扑概念，只涉及连续性。

但如果我们进一步考虑“人和狗的路线”分别是单位圆 $S^1\colon\ \{z\in\mathbb{C}:|z|=1\}$ 经由两个解析函数 $f,g$ 映射后的路径，那事情就变得有趣多了。

首先 [幅角原理](https://en.wikipedia.org/wiki/Argument_principle) 给出了环绕数的另一种解释：

> $\gamma_1,\gamma_2$ 关于原点的环绕数分别等于 $f,g$ 在 $S^1$ 内部的零点个数。

进一步 [Rouché 定理](https://en.wikipedia.org/wiki/Rouch%C3%A9%27s_theorem) 给出了 $\gamma_1,\gamma_2$ 关于原点有相同环绕数的充分条件：

> 如果对任何 $z\in S^1$ 都有 $|f(z)|>|f(z)-g(z)|$ 成立，则 $\gamma_1,\gamma_2$ 关于原点有相同的环绕数。于是 $f,g$ 在 $S^1$ 内部的零点个数也相等。

想象人的位置是 $f(z)$，狗的位置是 $g(z)$，由于绳子 $l(z)=f(z)-g(z)$ 的长度 $|l(z)|$ 始终小于人到原点的距离 $|f(z)|$，所以狗始终够不到原点。

在动画中，左下角的圆周是 $S^1$，右边红、绿两条路径分别是 $f(S^1)$ 和 $g(S^1)$。这里的 $f$ 我取的形如
$$f(z) =\frac{z-a}{1-\overline{a}z}\frac{z-b}{1-\overline{b}z}\frac{z-c}{1-\overline{c}z} (z-2-2i),\quad |a|,|b|,|c|<1.$$
$f(z)$ 在 $S^1$ 的内部有 3 个根 （我用红点标出来了），在 $S^1$ 上不为 0，在 $S^1$ 外部有一个根（图中没有画）。$f(z)$ 的前三个因子构成一个 Blaschke 乘积，它把 $S^1$ 的内部仍然映射为内部，把 $S^1$ 仍然映射为 $S^1$，于是对任何 $z\in S^1$ 有
$$|f(z)| = |z - 2 - 2i| \geq 2\sqrt{2} - 1,\quad z\in S^1.$$
所以只要绳子 $l(z)$ 满足 $|l(S^1)| < 2\sqrt{2}-1$，则狗走的路径 $g(S^1)=f(S^1)+l(S^1)$ 就不可能接触到原点。我这里取了 $l(z) = cz$，其中 $c$ 是一个小于 $2\sqrt{2}-1$ 的正实数。

Needham 的书中还介绍了一个有意思的事实：

> $\gamma$ 的环绕数在 $\mathbb{C}\setminus\gamma$ 的每个连通分支上都是常数。也就是说，对不在 $\gamma$ 上的一点 $z$，我们可以稍稍移动 $z$ 到另一个点 $z'$，只要保持 $z'$ 仍然位于 $z$ 所在的连通分支内，$\gamma$ 关于 $z$ 和 $z'$ 的环绕数就一定相同。

利用这个事实并结合幅角原理不难得出下面的结论：

:::{.corollary .unnumbered #connected-component}
**推论**

设 $\gamma$ 是一条简单闭曲线，内部围的区域为 $\Omega$，$f(z)$ 是一个非常数的解析函数，$f$ 在包含 $\gamma$ 的某个区域内解析。假设有两棵树分别位于 $w_0,\,w_1$ 两点，且人行走的路线 $f(\gamma)$ 到 $w_0$ 的距离始终大于两棵树之间的距离：
$$|f(z)-w_0| > |w_0-w_1|,\quad\forall z\in\gamma.$$

![注意两棵树位于 $\mathbb{C}\setminus f(\gamma)$ 的同一个连通分支中](/images/rouche/winding_number.svg){width=250}

则 $f(\gamma)$ 关于 $w_0,w_1$ 的环绕数相等，从而 $w_0,w_1$ 在 $\gamma$ 内部的原像个数相同：
$$\sharp\{z\in \Omega: f(z)=w_0\} = \sharp\{z\in \Omega: f(z)=w_1\}.$$
:::

**证明**：根据条件，从 $w_0$ 沿着线段 $[w_0,w_1]$ 移动到 $w_1$ 的过程中始终不会碰触到曲线 $f(\gamma)$，所以 $w_0,w_1$ 必然位于同一连通分支内。$\blacksquare$

利用此推论我们不难得出复分析中的 [开映射定理](https://en.wikipedia.org/wiki/Open_mapping_theorem_(complex_analysis))：

:::{.theorem .unnumbered}
如果 $U\subseteq\mathbb{C}$ 是开集，$f\colon\ U\to\mathbb{C}$ 是非常数的解析函数，则 $f(U)$ 也是开集。
:::

**证明**：任取 $z_0\in U$，记 $w_0=f(z_0)$。由于 $f$ 不是常数，所以 $f(z)-w_0$ 的零点都是孤立的。我们可以取 $z_0$ 的一个充分小的闭圆盘 $B_\delta=\{z\in U\mid |z-z_0|\leq\delta\}$ 使得 $f(z)-w_0$ 在 $B_\delta$ 中除了 $z_0$ 以外没有其它零点。特别地，$f(z)-w_0$ 在 $B_\delta$ 的边界 $\gamma =\{|z-z_0|=\delta\}$ 上恒不为 0，从而 $|f(z)-w_0|$ 在 $\gamma$ 上有正的极小值 $e$，即对任何 $z\in\gamma$ 有 $|f(z)-w_0|\geq e$。

现在我们考虑 $w_0$ 的邻域 $V_e=\{|w-w_0|<e\}$。则任何 $w_1\in V_e$ 都满足 @Prev:connected-component 中的条件：

$$|f(z)- w_0| \geq e > |w_1-w_0|,\quad z\in \gamma.$$

所以 $w_1$ 在 $\gamma$ 内部至少有一个原像。由 $w_1$ 的任意性可得 $V_e\subset f(U)$ 是 $w_0$ 在 $f(U)$ 中的开邻域，从而 $f(U)$ 是开集。$\blacksquare$

怎么样？一次简单的遛狗，串联起了拓扑和复分析中几个核心的定理。