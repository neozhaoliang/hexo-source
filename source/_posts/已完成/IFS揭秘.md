---
title: "IFS 分形揭秘"
date: "2024-06-16"
categories: [Shadertoy]
url: "ifs-demystified"
teximage: true
glsl: true
---

本文整理自我 2024 年 6 月 14 日在上海科技大学数学所的一个小报告，标题是「GPU 涂鸦与数学可视化」。我保留了报告的技术内容，略去了报告中介绍 demoscene 文化和分形文化的部分。

<!--more-->

---

在 Shadertoy 上有很多效果酷炫，但是代码非常短的分形作品。我挑选了其中三个优秀的例子展示如下：

|   |    |   |
|:---:|:---:|:---:|
| [Ethereal](https://www.shadertoy.com/view/ltB3DG) by Kali|  [Apollonian fractal](https://www.shadertoy.com/view/NsVyRz) by Xor | [Radiosity](https://www.shadertoy.com/view/mdG3Wy) by Xor |
|![](https://www.shadertoy.com/media/shaders/ltB3DG.jpg)    |   ![](https://www.shadertoy.com/media/shaders/NsVyRz.jpg)   | ![](https://www.shadertoy.com/media/shaders/mdG3Wy.jpg) |

然而代码短可不代表它们容易看懂。特别是很多作者还喜欢故弄玄虚，把代码作了混淆处理以增加神秘感。对我来说，这种被人秀了一脸结果还没搞明白对面是怎么装的逼的感觉让人很不爽。当然我不是在抱怨，这种炫技的行为本身就是黑客文化的一部分，可以理解。后来分形玩的多了，我也慢慢明白了其中的奥妙，这次上科大之行是一次很好的机会，促使我把这些理解完整的写下来。

在这篇文章中，我将为大家揭示这些作品背后的奥秘。这些分形作品别看场景千变万化，其实都是用同一个套路制作出来的。这个套路可以简述为：首先将像素的 2D 坐标映射为空间中的某个 3D 的点，然后用一个 `fold` 函数，即所谓的 [迭代函数系统](https://en.wikipedia.org/wiki/Iterated_function_system)（iterated function system，简称 IFS）反复作用在该点上。每次迭代结束后，生成一个颜色并将其添加到当前的颜色 `color` 上。当达到一定的迭代次数后，返回 `color` 的值作为像素最终的颜色。


如果用伪代码来描述，大概是这样：

```glsl
vec3 getPixelColor(vec2 pixel) {
    vec3 p = screenToSpace(pixel);  // map 2D pixel to 3D space
    vec3 color = vec3(0);
    for (int i=0; i<max_iterations; i++) {
        p = fold(p);  // transform p in each iteration
        color += someColorFunc(p);  // add a bit color
    }
    return color;
}
```

整个过程主要包括三个要素：

1. 用 IFS 来构造分形。
2. 用轨道着色技巧给分形上色。
3. 在着色器 (shader) 中编程实现。

下面我来逐一来解释这些步骤。


# IFS 方法

::: {.definition .unnumbered}
**压缩映射** 设 $f:\mathbb{R}^n\to\mathbb{R}^n$ 是一个映射，如果存在 $0<r<1$ 使得对任何 $x,y\in\mathbb{R}^n$ 有
$$d(f(x),f(y))\leq r\cdot d(x,y)$$
成立，我们就称 $f$ 是一个压缩映射，$r$ 是压缩比例。这里 $d$ 是通常的 Euclidean 距离。
:::

记 $K(\mathbb{R}^n)$ 是 $\mathbb{R}^n$ 中所有紧集组成的集合，可以证明 $K(\mathbb{R}^n)$ 在 [Hausdorff 度量](https://en.wikipedia.org/wiki/Hausdorff_distance) 下构成一个完备度量空间。读者不必关心 Hausdoff 度量的具体细节，只要知道它是一个度量，可以衡量两个紧集的接近程度。

设 $f_1,\ldots,f_N$ 是 $N$ 个压缩映射，$f_i$ 的压缩比例是 $r_i$。定义映射 $F:K(\mathbb{R}^n)\to K(\mathbb{R}^n)$ 如下：
$$F(X) = f_1(X)\cup f_2(X)\cup\cdots\cup f_N(X),\quad X\in K(\mathbb{R}^n).$$
即 $F$ 把 $X$ 变成 $N$ 个更小的集合。

可以证明 $F$ 是空间 $K(\mathbb{R}^n)$ 上的压缩映射，其压缩比例 $r=\max\{r_1,\ldots,r_N\}$。于是根据 [Banach 不动点定理](https://en.wikipedia.org/wiki/Banach_fixed-point_theorem)，存在唯一的紧集 $A\subset\mathbb{R}^n$ 使得 $A$ 是 $F$ 的不动点：
$$F(A) = A.$$
不仅如此，对 $K(\mathbb{R}^n)$ 中的任何一点（注意 $K(\mathbb{R}^n)$ 是紧集组成的度量空间，里面的点都是紧集）$B\subset\mathbb{R}^n$，都有
$$\lim_{n\to\infty} F^n(B) =A.$$
紧集 $A$ 叫做 $F$ 的极限集，$A$ 是一个分形，它具有自相似的特征。

我们以著名的 [Sierpiński 三角形](https://en.wikipedia.org/wiki/Sierpi%C5%84ski_triangle) 为例来说明这个过程。我们选择的三个压缩映射分别是

$$
\begin{align}
f_1(x,y) &= (x/2, y/2),\\
f_2(x,y) &= (x/2, y/2) + (0, 1/2),\\
f_3(x,y) &= (x/2, y/2) + (1/2, 0).\\
\end{align}
$$

这三个压缩映射的压缩比都是 1/2。初始的紧集 $K_0$ 可以随便选，比如就取为一个圆：
$$K_0 = \img{/images/ifs/dot0.svg}{-1.75em}{}{4em}.$$

在第 1 次迭代后，它变成

$$K_1 = f_1(K_0)\cup f_2(K_0)\cup f_3(K_0) = \img{/images/ifs/dot1.svg}{-1.75em}{}{4em}.$$

在第 2 次迭代后，结果是

$$K_2 = f_1(K_1)\cup f_2(K_1)\cup f_3(K_1) = \img{/images/ifs/dot2.svg}{-1.75em}{}{4em}.$$

第 3 次迭代：

$$K_3 = f_1(K_2)\cup f_2(K_2)\cup f_3(K_2) = \img{/images/ifs/dot3.svg}{-1.75em}{}{4em}.$$

当迭代次数趋于无穷，就得到了 Sierpiński 分形：

$$\lim_{n\to\infty} K_n = K = f_1(K)\cup f_2(K)\cup f_3(K) = \img{/images/ifs/dot6.svg}{-1.75em}{}{4em}.$$

你可以很容易看出来为什么初始紧集的选择是不重要的：因为在压缩的过程中，任何紧集都会逐渐缩小到一个单点，所以 $K_0$ 甚至取成一个点也是可以的。

压缩映射是无穷无尽的，所以 IFS 给出的分形也是无穷无尽的。为了避免选择困难，我们一般只使用平移、旋转、反射、缩放、球反演这几种变换（球反演变换是将单位球的外部反演到内部，单位球内部保持不动），通过它们的复合变换来实现空间压缩。

你可能想问，那应该怎样具体选择 $f_1,\ldots,f_N$？我会在后面介绍，在着色器中实现 IFS 是通过「空间折叠」操作进行的，这个操作可以看作是 $F$ 的逆映射，它自动包含了多个压缩映射，所以你根本不需要单独指定每个 $f_i$！


# 轨道着色

我们希望给分形染上漂亮的颜色，这个染色应该满足如下的条件：

1. 在分形上颜色是连续变化的；
2. 在分形和非分形的交界处（即 $A$ 和 $A^c$ 的边界上）颜色应该是不连续的，从而产生泾渭分明的效果。

做到这一点并不难，但是需要在每一次迭代时考虑当前点的位置信息。

我们首先取一个底色，比如说 `color=vec3(0)`，在每一次迭代中，根据当前位置 `p` 生成一个颜色，并以一定的权重加到 `color` 上。理论上颜色的 rgb 的取值范围应该是 $[0,1]$，但是多数情况下我们要放宽到 $[-1,1]$ 之间，即颜色可以增加也可以减少。否则如果颜色只增不减的话，那么多次迭代以后 rgb 值很可能会溢出，变成白色。此外，随着迭代次数的增加，新颜色的权重应该单调下降，这样才能保证突出分形细节的部分。这也符合我们的生活直觉：想象一下，当一位画家作画时，在开始的时候他可以浓墨重彩地画一个轮廓，但是越到后面描绘更加精细的部分时，他就会换用更细的画笔，小心地蘸一点颜料。

根据 `p` 生成颜色的着色方案无穷无尽，请随便发挥你的创造力。一般来说你需要反复试验各种不同的方案才能找到最合适的。下面的例子使用了一种非常流行的染色方案，它以 `cos(vec3(0,1,2))` 作为底色，并根据当前时间 `iTime` 以及坐标 `uv` 进行调整：

<div class="codeAndCanvas" data="void mainImage(out vec4 fragColor, in vec2 fragCoord) {
    vec2 uv = fragCoord / iResolution.xy;
    vec3 col = 0.5 + 0.45 * cos(vec3(0, 1, 2) + iTime + uv.yxy);
    fragColor = vec4(col, 1.0);
}">
</div>

# 着色器编程基础

我简单介绍一下着色器编程的基本概念。打开 shadertoy 网站，点击右上角的`新建`按钮，你会看到一个 [最简单的动画](https://www.shadertoy.com/new)：

![](/images/ifs/shadertoy.png){.fig width=600}

左边的窗口是画布，显示渲染的结果；右边窗口是代码编辑器，你在这里书写着色器代码。

画布是由若干像素组成的，你需要根据每个像素的位置，即它的 `fragCoord` 值指定一个颜色。这个过程是在 `mainImage` 函数中实现的：

```glsl
void mainImage(out vec4 fragColor, in vec2 fragCoord);
```

其中 `fragCoord` 是像素的位置，`fragColor` 是需要设置的像素颜色。

现实生活中有一个很形象的例子可以帮你理解着色器编程：假设你是一场方阵表演的导演，所有演员排成一个 $W\times H$ 的方阵，每个演员可以改变自己衣服的颜色。你的任务是发出合适的指令让每个演员根据自己的位置计算出正确的颜色，使得整个方阵呈现出漂亮的图案。

![](/images/ifs/array.png){.fig width=600}

如果你一个一个地对每个演员下指令，张三你应该显示红色，李四你应该显示蓝色，等等 ... 对成千上万个演员，这么挨个下指令还不得把人累死？正确的做法是，你应该同时对所有演员发出相同的指令，比如：“每个人，根据自己的位置，$x$ 坐标 （即 `fragCoord.x`） 是偶数的显示红色，$x$ 坐标是奇数的显示蓝色”。这样你应该会看到红蓝相间、纵向排列的条纹图案。每个演员本质上就是一个单独的 GPU 计算单元，他们可以根据相同的指令独立计算各自的颜色。这种基于相同指令并行计算的工作方式才是 GPU 流水线的机制。

再举一个例子，比如你希望阵列的中心呈现一个圆盘的图案，那就可以这样下指令：“每个人，把自己的纵坐标转换到区间 $[-1, 1]$，然后计算各自到原点 $(0,0)$ 的距离。距离大于 0.5 的显示黑色，否则就显示红色”。这样一来，每个演员就会首先根据

```c
vec2 p = (2.0 * fragCoord  - iResolution.xy) / iResolution.y;
float d = length(p) - 0.5;
```

将自己的像素坐标 `fragCoord` 转换为世界坐标下的点 `p`，使得 `fragCoord.y` 的范围是 $[-1,1]$。然后计算各自到以原点为中心、半径为 0.5 的圆的距离 $d$。最终根据

```c
if (d > 0.0)
    fragColor = vec4(0, 0, 0, 1);
else
    fragColor = vec4(1, 0, 0, 1);
```

来设置各自的颜色。

<div class="codeAndCanvas" data="void mainImage(out vec4 fragColor, in vec2 fragCoord) {
    vec2 p = (2.0 * fragCoord - iResolution.xy) / iResolution.y;
    float d = length(p) - 0.5;
    if (d > 0.0)
        fragColor = vec4(0, 0, 0, 1);
    else
        fragColor = vec4(1, 0, 0, 1);
}">
</div>

这个例子其实蕴含了 shader 编程的一个非常核心的概念，即**距离场** (distance field)。当我们想绘制某个图案时，我们通过计算像素到这个图案的距离来对像素进行着色。


# 空间折叠

在前面关于 IFS 的介绍中我们可以看到，如果有 $N$ 个不同的压缩映射 $f_1,\ldots,f_N$，那么每次迭代后集合的数目会乘以 $N$，这是指数增长的，10 次迭代可能会产生多达 $10^N$ 个不同的集合。维护如此数量的集合是计算上不可行的。这该怎么办呢？

回忆我们之前介绍的，在着色器里面画 IFS 就是给每个像素指定一个颜色，这个颜色应该由这个像素对应的空间中的点到分形的距离来决定。假设像素对应的空间中的点是 $p$，初始紧集是 $K$，我们用迭代 $n$ 次的结果 $F^n(K)$ 作为分形的近似，这里 $n$ 是某个常数，在绝大多数场景下 $n=30$ 就足够了。我们需要计算距离 $d(p,F^n(K))$ 并根据这个距离值对像素染色。我们已经看到 $F^n(K)$ 是没法计算的，但有个巧妙的做法可以绕过这个困难：把 $F^n$ 挪到另一侧并取逆，转而计算 $d(F^{-n}(p), K)$！实际上，如果 $F$ 只包含旋转、平移、反射、缩放、球反演这些变换的话，$d(p,F^n(K))$ 和 $d(F^{-n}(p), K)$ 之间存在非常简单的关系，我们可以通过计算后者来得到前者！这个关系的推导我放在后面介绍。

所以我们需要将压缩迭代映射的步骤倒过来，采取相反的操作：即将逆映射 $F^{-1}$ 迭代作用在 $p$ 上，执行足够的迭代次数后，再绘制紧集 $K$。即我们实际是用一个**空间折叠**的映射作用反复作用在 $p$ 上，这个映射是**放大距离**的。

这个先折叠后画图的操作，也可以用一个生活中的例子来形象地解释，即剪纸艺术：

![](/images/ifs/papercut.jpg){.fig width=480}

在剪纸过程中，首先把纸张反复折叠，然后在折叠后的纸张上画出某个特定的图形，沿着这个图形裁剪，再将纸张展开得到的就是美丽的图案。

这里**展开**纸张的操作对应的就是迭代映射 $F$，它把一个初始的紧集铺开到空间中变成分形，是个「一对多」的映射；**折叠**纸张的操作就是 $F^{-1}$，它把分形折叠回最初的紧集，是个「多对一」的映射。

在下面的例子中，我们首先用 `p = abs(p)` 将整个空间折叠到第一象限，然后只要在第一象限中画一个圆，就可以同时在其它位置得到总共 4 个圆：

<div class="codeAndCanvas" data="void mainImage(out vec4 fragColor, in vec2 fragCoord) {
    vec2 p = (2.0 * fragCoord - iResolution.xy) / iResolution.y;
    p = abs(p); //折叠
    float d = length(p - vec2(0.5)) - 0.3; // 中心在 (0.5, 0.5), 半径为 0.3 的圆
    d = smoothstep(-0.005, 0.005, d); // 平滑一下边缘
    vec3 col = mix(vec3(0), vec3(0.9), d); //染色
    fragColor = vec4(col, 1);
}">
</div>

如果你去看那些分形作品的代码的话，会发现它们几乎都使用了 `abs` 函数。这个函数是多对一的，它会把整个空间折叠到第一象限，这对应了 $F$ 包含 4 个不同的 $f_i$ （这是在 2D 的情形；3D 的情形会有 8 个不同的 $f_i$）。进一步，再叠加关于其它平面/球面的折叠可以产生出更多的 $f_i$。这就解释了为什么在着色器中我们不需要显示地写出每个单独的 $f_i$。

最后我们来推导 $d(p,F^n(K))$ 和 $d(F^{-n}(p), K)$ 之间的关系。

如果 $F$ 是平移、旋转、反射这样的保持 Euclidean 距离不变的刚体运动，那么自然有
$$d(p, F(K)) = d(F^{-1}(p), K).$$

但如果 $F$ 是一个缩放变换，比如 $F(x) = x/s\,(s>1)$，那么
$$d(p, F(K)) = d(p, 1/s\cdot K) = 1/s\cdot d(s\cdot p, K) = 1/s\cdot d(F^{-1}(p), K).$$
即我们要对折叠以后算出来的距离值再除以 $s$。

对球的反演变换也有类似的结论，这是因为球反演在空间中每个点的局部是一个缩放。

既然每次迭代 $F$ 以比例 $1/s$ 缩小，那么用 $F^{-1}$ 迭代 $n$ 次以后累积放大的比例就是 $s^n$，我们要将 $d(F^{-n}(p), K)$ 再除以 $s^n$ 才是最终正确的距离值。

对于一般的映射 $F$，我们可以通过计算 $F^{-1}$ 在 $p$ 处 Jacobian 矩阵的行列式的绝对值，作为 $p$ 处缩放的近似。


# 实战演示

我以 Shadertoy 上一个混淆过的 [作品](https://www.shadertoy.com/view/WlGyWK)  为例子来完整展示上面的理论。下面是重新改写后的可读版本，我在注释中解释了每一步的含义：

<iframe width="640" height="360" frameborder="0" src="https://www.shadertoy.com/embed/l3cXR7?gui=true&t=10&paused=true&muted=false" allowfullscreen></iframe>