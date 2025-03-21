---
title: "Poncelet 定理与 Blaschke 乘积"
date: 2021-08-27
categories: ["可视化复分析"]
url: "poncelet-blaschke"
---

下面这个动画是受到 [Finding Ellipses: What Blaschke Products, Poncelet’s Theorem, and the Numerical Range Know about Each Other](https://bookstore.ams.org/car-34) 这本书启发所作：

<!-- more -->

<iframe width="640" height="360" frameborder="0" src="https://www.shadertoy.com/embed/fst3Rl?gui=true&t=10&paused=true&muted=false" allowfullscreen></iframe>

这个动画看起来似乎一目了然：我们有一个圆 $C$，一个椭圆 $E$，还有一个三角形 $\Delta$。$\Delta$ 内接于圆 $C$ 同时外切于椭圆 $E$。椭圆和三角形同时都在变动，但它们始终保持内切的关系。

但我打包票保证你绝难猜到它说的是什么事情。

下面是动画的制作过程：

1. 首先在单位圆 $C$ 内任取两个点 $a,b$，它们将作为椭圆 $E$ 的两个焦点。
2. 构造 Blaschke 乘积 $$B(z)=z\frac{z-a}{1-\overline{a}z}\frac{z-b}{1-\overline{b}z}.$$ $B(z)$ 是一个解析函数，它的三个因子每一个都保持单位圆的内部不变，将圆周 $C$ 仍然映射为 $C$，所以 $B(z)$ 也是如此。而且 $B(z)$ 是一个 3 对 1 的映射：对任何 $|\lambda|\leq 1$ 有三个原像 $z_1,z_2,z_3$ 使得 $B(z_i)=w,\,i=1,2,3$。这一点不难从方程 $B(z)=\lambda$ 是一个关于 $z$ 的严格三次多项式看出来。
3. 更进一步，对圆周 $C$ 上的任何一点 $|\lambda|=1$，$B(z)=\lambda$ 的三个根必然是互不相同的，这三个根构成 $C$ 的一个内接三角形 $\Delta ABC$。$\Delta ABC$ 有一个特殊的性质：它必然外切于以 $a,b$ 为焦点的椭圆 $$|z-a|+|z-b|=|1-\overline{a}b|.$$
4. 当 $\lambda$ 变动时，$\Delta ABC$ 也随之变动，得到的就是上面的动画。

动画中我取了 $a$ 为原点，$b\in(0,1)$ 为实数。采用这两个特殊点的原因是，一般情形下用 Mathematica 求解得到的三次方程 $B(z)=\lambda$ 的表达式实在是太太太让人头大了。:grin:

正如开头书名所提示的，这个故事同时与 Poncelet 定理和 Blaschke 乘积有关。

---

假设有两个椭圆 $E_1,\,E_2$，$E_2$ 位于 $E_1$ 的内部。在 $E_1$ 上选定一点 $A_1$，从 $A_1$ 出发作 $E_2$ 的切线与 $E_1$ 交于 $A_2$，然后从 $A_2$ 出发引另一条关于 $E_2$ 的切线交 $E_1$ 于 $A_3$，...，如此一直进行下去。则有两种可能：

1. 经过 $N$ 次操作以后 $A_{N+1}=A_1$，这时路径围成一个闭合的 $N$ 边形 $P$，$P$ 内接于 $E_1$ 同时外切于 $E_2$。
2. 所有的切点 $\{A_n\}_{n=1}^\infty$ 全部互不相同。

下面的动画显示了 $N=3$ 的情形，并且外面的椭圆 $E_1$ 是个圆 [^1]：

<object data="/images/blaschke/poncelet_billiard.svg"></object>

Poncelet 定理说的是，如果情形 1 对 $E_1$ 上的某个点 $A_1$ 成立，则它对 $E_1$ 上所有点都成立，并且所有得到的多边形都是 $N$ 边形。同样地如果情形 2 对某个点成立，则对椭圆上所有点 $A_1$，序列 $\{A_n\}_{n=1}^\infty$ 也都互不相同，并且在边界 $E_1$ 上是稠密的。

可以料见，“作 $N$ 次切线后回到起点”这种好事不是那么容易发生的。$E_1,E_2$ 必须满足一些条件才行。对一般的 $N$ 这个条件可以用 Jacobi 椭圆函数来描述，有点高深。不过在 $N=3$ 且 $E_1$ 为单位圆时，这个条件是非常简单的：这当且仅当椭圆 $E_2$ 形如
$$|z-a| + |z-b|=|1-\overline{a}b|,\quad |a|<1,\,|b|<1.$$
不仅如此，从单位圆上任意一点 $x$ 出发，按照上述方法连续作 $E_2$ 的切线，得到的闭合三角形的另外两个顶点是方程 $B(z)=B(x)$ 的另外两个根。

这个故事还与矩阵的 [numeric range](https://en.wikipedia.org/wiki/Numerical_range) （数值域） 有关，我不想假装成我很懂的样子，所以就不再叨叨了。

[^1]: 取其中一个椭圆为圆并不损失一般性，因为我们总是可以用一个仿射变换把其中一个椭圆变成圆，而仿射变换保持相切关系不变。
