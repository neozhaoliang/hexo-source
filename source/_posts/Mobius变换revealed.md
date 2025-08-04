---
title: "Möbius 变换与球的刚体运动"
date: 2022-05-08
categories: [可视化复分析]
url: "mobius-ball-rigid-motion"
teximage: true
---

\newcommand{\Cbar}{\overline{\mathbb{C}}}

五一期间我写了一个 shadertoy 小动画，演示 Möbius 变换与球的刚体运动之间的关系：

<!--more-->

<iframe width="640" height="360" frameborder="0" src="https://www.shadertoy.com/embed/fljfRm?gui=true&t=10&paused=true&muted=false" allowfullscreen></iframe>

这个动画的名字叫做 Möbius transformation revealed，想法源自 Douglas N. Arnold 和 Jonathan Rogness 于 2007 年发布的 [同名视频](https://www-users.cse.umn.edu/~arnold/moebius/)。这是一个很有名的视频，它表达的核心思想是，扩充复平面 $\Cbar$ 上的 Möbius 变换可以由球在三维空间中的刚体运动给出：

1. 我们称一个球 $S$ 是**容许**的，如果 $S$ 的最高点，也就是北极点位于半空间 $\{z>0\}$ 中。
2. 取任何一个可容许的球 $S$，将 $\Cbar$ 在逆球极投影下对应到 $S$ 的球面上。
3. 对 $S$ 作刚体变换 （平移和旋转） $S\to T(S)$，使得 $T(S)$ 也是一个容许的球，即 $T(S)$ 的最高点也在半空间 $\{z>0\}$ 中。
4. 将 $T(S)$ 的表面通过球极投影再映射回 $\Cbar$，我们就得到了一个 $\Cbar\to\Cbar$ 的变换，此变换是一个 Möbius 变换，且所有 Möbius 变换都可以通过此种方式得到。

整个过程如下所示：

$$\underbrace{\Cbar\xrightarrow{\text{inverse stereographic projection}} S\xrightarrow{\text{rigid motion}} T(S)\xrightarrow{\text{stereographic projection}}\Cbar}_{\text{Möbius transformation}}.$$

:::{.note}
球极投影使用的北极点始终是球面的最高点。
:::

详细的解释可以见原视频的解释 [文章](https://www-users.cse.umn.edu/~arnold/papers/moebius.pdf)。但是从直观上理解也不难：

- $S$ 在 $xy$ 平面内的平移给出的是 $\Cbar$ 上的平移。
  <video src="/images/mobius/translation.mp4" height="300" controls></video>

- $S$ 在 $z$ 方向上的平移给出的是 $\Cbar$ 上的缩放。
  <video src="/images/mobius/scale.mp4" height="300" controls></video>

- 保持 $S$ 的北极点不动的旋转给出的是 $\Cbar$ 上的旋转。
  <video src="/images/mobius/rotation.mp4" height="300" controls></video>

- 绕 $x$ 轴旋转 180 度给出的是 $\Cbar$ 上的逆变换 $z\to 1/z$。
  <video src="/images/mobius/inversion.mp4" height="300" controls></video>

以上几种运动方式的复合可以给出可容许球的任何刚体运动，而任何 Möbius 变换都是平移、缩放、旋转、逆变换的复合，所以 Möbius 变换确实与可容许球体的刚体运动是对应的。

另一种看待的角度是把 $M$ 对应的复矩阵写成一个酉矩阵 $Q$ 和上三角矩阵 $U$ 的乘积：$M=RQ$。$Q$ 作为 ${\rm SU}(2)$ 中的元素作用在球面上是一个旋转，而 $R$ 作为上三角矩阵给出的是平移和缩放。

反过来对给定的 Möbius 变换 $M$ 和容许的球 $S$，当 $S$ 的初始位置确定以后，给出 $M$ 的刚体运动 $T$ 也是唯一确定的。证明见 [这个论文](https://scholar.rose-hulman.edu/cgi/viewcontent.cgi?article=1218&context=rhumj)。
