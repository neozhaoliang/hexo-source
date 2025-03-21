---
title: "Escher 风格的非周期密铺"
date: 2020-12-06
categories: [Shadertoy]
tags:
  - shadertoy
  - de Bruijn
  - Penrose tiling
  - Aperiodic tiling
  - Escher
  - Rhombus
url: "debruijn-rhombus-tiling"
---
周末刚完成了一个有点烧脑的 Shadertoy 项目，Escher 风格的 [非周期密铺](https://en.wikipedia.org/wiki/Aperiodic_tiling)：

<!--more-->

<iframe width="640" height="360" frameborder="0" src="https://www.shadertoy.com/embed/wsKBW1?gui=true&t=10&paused=true&muted=false" allowfullscreen></iframe>

你能看出这个动画的奥妙之处在哪里吗？

直观上看，这个动画由一些错落有致，但又无缝拼接在一起的房间（立方体）组成，每个房间的外面绘制了一些“窗户”，窗户的开闭、朝向是变化的。但是仔细一看，诶，好像一些房间的窗口的朝向是“矛盾”的哎？这种整体布局和谐但是局部细节与真实世界矛盾的艺术风格由 [Escher](https://en.wikipedia.org/wiki/M._C._Escher) (1898-1972) 所创立，所以这个作品也可以叫做 Escher 风格的不可能密铺。

这个动画里面使用的几何元素只有菱形，这些菱形分为两种：胖菱形和瘦菱形。在代码中我是对每一个像素，首先确定其所属的菱形，然后计算它到各个装饰元素 （菱形边界、窗户、窗台） 的 signed distance field 函数 $d$，根据 $d$ 的值来混合颜色，特别还根据菱形的类型和方向加上了阴影的效果，使得整个画面看起来有立体感。

计算菱形位置的算法非常奇妙，它来自 de Bruijn 1981 年的发现，是构造准晶的网格法 [^1] (multigrid)；添加窗户的点缀是受 Greg Egan 的 [Javascript 动画](http://gregegan.net/APPLETS/02/02.html) 启发。我很久之前就知道 de Bruijn 的方法，但是看到 Greg Egan 的动画以后还是萌发了在 shader 里面做出一个更漂亮的 3D 效果来的想法。这个念头憋了好久，终于前几天利用晚上业余时间动手折腾了一番，捣鼓出了上面的效果。当然只是一个伪 3D 的效果。我的动画与 Greg Egan 不同的地方在于，Greg Egan 的 Javascript 动画可以直接计算出菱形的坐标然后绘制，思路比较直接；但是在 shader 里面则需要把这个过程逆过来，需要对每一个像素，通过搜索确定它所在的菱形，所以实现起来要麻烦一些。此外 Greg Egan 是精心选择了每一个窗户的开口方向，使得所有的房间的窗户看起来都是矛盾的；我这里为了简单起见只随机设置了开口的方向，所以只有部分房间的窗户是矛盾的。

代码中窗户的绘制方法参考了 Greg Egan 的代码和注释，特别致谢。

[^1]: N.G. de Bruijn. Algebraic theory of Penrose's non-periodic tilings of the plane.
