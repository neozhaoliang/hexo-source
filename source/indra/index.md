---
title: "Indra's pearls 中英双语对照"
subtitle: "The vision of Felix Klein"
date: 2025-01-23
---
\DeclareMathOperator{\tr}{Tr}

# 译者前言

由于大模型的能力越来越强，现在翻译一本学术著作已经不像之前那么费力。你或许会认为，现在的翻译不过是用软件识别文件结构，然后丢给大模型，等它自动翻译完然后输出结果就完事了。但是如果对翻译质量有追求的话，翻译实际上仍然是一个繁复且高技术含量的工作：你需要反复和模型对话，修正模型的翻译错误，在保持忠于原文的同时尽可能去掉译文腔。

我选择使用 deepseek-r1 进行翻译。这种推理模型用来做翻译是很慢的，但是效果还不错。我不打算 100% 翻译全书，仅翻译书中的主要内容。同时，由于几十年来显卡技术的进步，我们可以制作更加精美的插图和动画。我会为书中的一些插图制作交互动画并嵌入在这个网页中。

本书的翻译完全是我在业余时间完成，所以如果进度不尽人意，请多加谅解。如果你想早些看到完整翻译的话，不妨在打赏页面中给我一点小小的鼓励，让我更有动力肝一波。


# 扉页

![The ancient Buddhist dream of Indra’s Net 佛教古老的因陀罗网想象](/images/indra/inner-cover.jpg){.fig width=400}

:::{.simple}
In the heaven of the great god Indra is said to be a vast and shimmering net, finer than a spider’s web, stretching to the outermost reaches of space. Strung at the each intersection of its diaphanous threads is a reflecting pearl. Since the net is infinite in extent, the pearls are infinite in number. In the glistening surface of each pearl are reflected all the other pearls, even those in the furthest corners of the heavens. In each reflection, again are reflected all the infinitely many other pearls, so that by this process, reflections of reflections continue without end.
:::

在印度教主神因陀罗的梵天之中，悬有一张璀璨绝伦的珍珠宝网，其纤细更胜蛛丝，绵延至宇宙的终极边际。这轻若云烟的罗网间，每一经纬交汇处皆垂缀明珠，因法界无尽，故明珠无量。每颗宝珠的莹润光华中，俱现十方世界一切珠影，纵使远在梵天极隅之珠亦纤毫毕现。更妙者，珠中所映万千珠影，复现重重无尽珠光，如镜镜相照，光光互摄，遂成华严玄境，映现大千世界之无穷法界。

**Cover picture**: A mathematically generated picture foretold in the Buddhist myth of Indra’s net? We sometimes call these Klein Bubbles. The smallest ones are sehr klein.

:::{.simple}
**封面图片** 这幅由数学生成的瑰丽图案，是否暗合了佛教因陀罗网的古老寓言？我们称之为"克莱因泡泡"，其中最小的泡泡在德语中恰被称作 "sehr klein"　（“意为极小”）。
:::


# 前言

## 这是什么类型的书？

:::{.simple}
This is a book about serious mathematics, but one which we hope will be enjoyed by as wide an audience as possible. It is the story of our computer aided explorations of a family of unusually symmetrical shapes, which arise when two spiral motions of a very special kind are allowed to interact. These shapes display intricate ‘fractal’ complexity on every scale from very large to very small. Their visualisation forms part of a century-old dream conceived by the great German geometer Felix Klein. Sometimes the interaction of the two spiral motions is quite regular and harmonious, sometimes it is total disorder and sometimes and this is the most intriguing case - it has layer upon layer of structure teetering on the very brink of chaos.
:::

这是一本探讨严谨数学的著作，但我们力求以平易近人的方式呈现给广大读者。本书记录了我们借助计算机探索一系列具有非凡对称性的几何形状的历程，这些形状源于两种特殊螺旋运动的交互。无论观察尺度如何变化，这些形状始终呈现出精妙的分形复杂结构。我们的可视化研究部分地实现了德国几何学大师菲利克斯·克莱因百年前的数学梦想。当两种螺旋运动相互作用时，时而形成和谐有序的图案，时而呈现完全无序的状态，而最引人入胜的当属在秩序与混乱的临界状态，那里层层嵌套着精妙的几何结构。

:::{.simple}
As we progressed in our explorations, the pictures that our computer programs produced were so striking that we wanted to tell our tale in a manner which could be appreciated beyond the narrow confines of a small circle of specialists. You can get a foretaste of their variety by taking a look at the Road Map on the final page. Mathematicians often use the word ‘beautiful’ in talking about their proofs and ideas, but in this case our judgment has been confirmed by a number of unbiassed and definitely non-mathematical people. The visual beauty of the pictures is a veneer which covers a core of important and elegant mathematical ideas; it has been our aspiration to convey some of this inner aesthetics as well. There is no religion in our book but we were amazed at how our mathematical constructions echoed the ancient Buddhist metaphor of Indra’s net, spontaneously creating reflections within reflections, worlds without end.
:::

随着我们探索的深入，计算机程序生成的几何图像呈现出惊人的数学美感，促使我们尝试突破专业领域壁垒，以更科普性的叙事方式呈现研究成果。读者可通过书末的"探索路线图"预览其森罗万象之妙。数学界虽然惯用"美"来评价理论体系，但值得注意的是，本研究的美学价值已获得诸多非数学背景的客观评审者的支持。这些图像的视觉美感如同精密抛光的外壳，包裹着深邃而优雅的数学内核－－我们始终致力于在可视化的同时揭示其内在的数学意蕴。虽然研究本身不涉及宗教议题，但让我们惊叹的是，数学结构通过层层反射自发衍生出无垠的宇宙，这一点竟与佛教中“因陀罗网”的古老隐喻形成跨时空的共鸣。

:::{.simple}
Most mathematics is accessible, as it were, only by crawling through a long tunnel in which you laboriously build up your vocabulary and skills as you abstract your understanding of the world. The mathematics behind our pictures, though, turned out not to need too much in the way of preliminaries. So long as you can handle high school algebra with confidence, we hope everything we say is understandable. Indeed given time and patience, you should be able to make programs to create new pictures for yourself. And if not, then browsing through the figures alone should give a sense of our journey. Our dream is that this book will reveal to our readers that mathematics is not alien and remote but just a very human exploration of the patterns of the world, one which thrives on play and surprise and beauty.
:::

理解大多数数学领域如同在漫长的知识隧道爬行，需要逐步积累专业术语与解题技巧，同时不断抽象化对世界的认知。然而本书中图像背后的数学理论，实际上并不需要复杂的前置知识。我们相信，只要读者能熟练掌握高中代数基础，就能理解全书内容。实际上如果具备足够的时间与耐心，您甚至可以自主编写程序生成新的数学图像。即便不进行编程实践，单纯浏览书中的可视化成果也能领略研究脉络。我们期待通过这部著作，向读者展现数学并非遥不可及的抽象领域，而是人类探索世界规律的本真方式——这种探索始终根植于游戏性、惊喜感与美感。

## 我们是如何开始写它的？

:::{.simple}
**David M.'s story**. This book has been over twenty years in the writing. The project began when Benoit Mandelbrot visited Harvard in 1979/80, in the midst of his explorations of complex iteration - the ‘fractals’ known as Julia sets - and the now famous ‘Mandelbrot Set’. He had also looked at some nineteenth century figures produced by infinite repetitions of simple reflections in circles, a prototypical example of which had fascinated Felix Klein. David W. and I pooled our expertise and began to develop these ideas further in the Kleinian context. The computer rapidly began producing pictures like the ones you will find throughout the book.
:::

**戴维·芒福德（David Mumford）的故事**。本书的创作跨越二十余载。项目始于 1979-1980 年间，贝努瓦·曼德布罗特（Benoit B. Mandelbrot, 1924-2010）访问哈佛大学，彼时他正在研究复迭代系统——即著名的朱利亚集（Julia sets）与曼德布罗特集（Mandelbrot Set）。在学术交流中，曼德布罗特特别关注 19 世纪数学家通过圆反射的无限迭代生成的几何图形，其中一个令菲利克斯·克莱因（Felix Klein, 1849-1925）着迷的典型范例，成为我们后续研究的起点。我与合作者大卫·怀特（David W.）整合了我们各自的学术专长，开始在克莱因几何理论框架下深化该方向研究。我们很快就使用计算机程序产生出类似你在本书中随处可见的图片。

:::{.simple}
What to do with the pictures? Two thoughts surfaced: the first was that they were unpublishable in the standard way. There were no theorems, only very suggestive pictures. They furnished convincing evidence for many conjectures and lures to further exploration, but theorems were the coin of the realm and the conventions of that day dictated that journals only publish theorems.
The second thought was equally daunting: here was a piece of real mathematics that we could explain to our non-mathematical friends. This dangerous temptation prevailed, but it turned out to be much, much more difficult than we imagined.
:::

这些图像能拿来做什么呢？我们面临着双重困境。首先，这些图像无法遵循常规学术途径发表——它们不包含严格定理，仅是一些充满启示的图像。尽管这些图像为许多猜想提供了有力佐证，也为后续研究开辟了探索路径，但在定理至上的学术体系中，当时的期刊规范仅接受严格数学定理的发表。

第二个挑战更为棘手：这些数学发现具有独特的科普价值，我们可以向非专业的朋友们阐释。我们最终未能抵挡这种极具风险的尝试冲动，然而实际操作中的重重困难，却远超我们最初的预想。

:::{.simple}
We persevered off and on for a decade. One thing held us back: whenever we got together, it was so much more fun to produce more figures than to write what Dave W. named in his computer TheBook. I have fond memories of traipsing through sub-zero degree gales to the bunker-like supercomputer in Minneapolis to push our calculations still further. The one loyal believer in the project was our ever-faithful and patient editor, David Tranah. However, things finally took off when Caroline was recruited a bit more than a decade ago. It took a while to learn how to write together, not to mention spanning the gulfs between our three warring operating systems. But our publisher, our families and our friends told us in the end that enough was enough.
:::

这项研究我们断续推进了十年光景。最大的羁绊在于：每当我们聚在一起时，绘制新图像总比撰写戴夫·W.电脑里那个名为《天书》的文档要有趣的多。我至今犹记在明尼阿波利斯的刺骨寒风中，我们跋涉到堡垒式超级计算机中心，只为将运算推向新的极限。唯一始终如一的守护者，是那位兼具忠诚与耐心的编辑大卫·特拉纳。转机出现在十余年前卡罗琳的加入——我们花了一段时间学会如何协同写作，并克服我们三个相互冲突的操作系统之间的鸿沟。直到最终出版方与亲友们一起告诉我们是时候"见好当收"了。

You know that ‘word problem’ you hated the most in elementary school? The one about ditch diggers. Ben digs a ditch in 4 hours, Ned in 5 and Ted in 6. How long do they take to dig it together? The textbook will tell you 1 hour, 37 minutes and 17 seconds. Baloney! We have uncovered incontrovertable evidence that the right answer is
hours. This is a deep principle involving not merely mathematics but sociology, psychology, and economics. We have a remarkable proof of this but even Cambridge University Press’s generous margin allowance is too small to contain it.

还记得小学应用题里最令你抓狂的"挖水沟难题"吗？本挖一条沟需要 4 小时，内德要 5 小时，泰德要 6 小时，三人合力需要多久完工？教科书会告诉你标准答案是 1 小时 37 分 17 秒——纯属扯淡！我们通过实践获得铁证：真实耗时应为 4 + 5 + 6 = 15 小时。这背后暗含深刻的原理，不仅涉及数学，还涉及社会学、心理学和经济学。我们对此有一个精彩的证明，可惜即便剑桥大学出版社预留了慷慨的页边距，依然无法容下它。

:::{.note}
Since then, the pioneering team of Klaus and Alice Peters have started the journal Experimental Mathematics.

自那时起，Klaus 和 Alice Peters 的先锋团队创办了《实验数学》期刊。
:::




# 7 The glowing gasket


:::{.simple}
The lacy web in Figure 7.1 is called the Apollonian gasket. Usually, it is constructed by a simple geometric procedure, dating back to those most famous of geometers, the ancient Greeks. We shall start by explaining the traditional construction, but as we shall disclose shortly, the gasket also represents another remarkable way in which the Schottky dust can congeal. The pictures you see here were actually all drawn using a refinement of the DFS algorithm for tangent Schottky circles.
:::

图 7.1 中的镂空结构被称为阿波罗尼奥斯分形。其构造基于一种简单的几何方法，可追溯至古希腊著名的几何学家。我们将首先解释传统构造方法，但稍后也会揭示这个分形结构还展现了肖特基尘埃凝聚的另一种独特方式。本章所有图示均采用改进版 DFS 算法绘制，该算法专门用于处理相切肖特基圆的情形。

:::{.simple}
The starting point of the traditional construction is a chain of three non-overlapping disks, each tangent to both of the others. A region between three tangent disks is a ‘triangle’ with circular arcs for sides. This shape is often called an ideal triangle: the sides are tangent at each of the three vertices so the angle between them is zero degrees.

The gasket is activated by the fact that in the middle of each ideal triangle there is always a unique ‘inscribed disk’ or incircle, tangent to the three outer circles. It is really better to think of the gasket as a construction on the sphere. Insides and outsides don’t matter any more, so we may as well start with any three mutually tangent circles. You can see lots of disks and incircles in Figure 7.2.
:::

传统构造法的起点是三个互不重叠的圆盘呈链状排列，每个圆盘都与另外两个相切。三个相切圆盘之间的区域形成以圆弧为边的"三角形"，这种几何形状被称为理想三角形：其三条边在顶点处相切，因此相邻边夹角为零。

该垫片的原理基于如下的几何事实：每个理想三角形中心处必存在唯一的内切圆，同时与外部的三个圆相切。更恰当的视角是将该结构置于球面之上进行考察，此时内外之分不复存在，因此初始构造只需选取任意三个两两相切的圆即可。读者可参见图 7.2，其中展示了大量圆盘及其内切圆结构。

:::{.simple}
In the figure, we show two initial configurations of three tangent blue disks. When you take out the three blue disks you are left with two red ideal triangles. Each red ideal triangle has a yellow incircle. See how each yellow incircle divides the red triangle into three more triangles.
:::

在图中，我们展示了三个相切的蓝色圆盘的两种初始排布。当你移除这三个蓝色圆盘后，会留下两个红色的理想三角形。每个红色理想三角形各含一个黄色内切圆。仔细观察这些黄色的内切圆如何将红色三角形进一步分割为三个子三角形。

:::{.simple}
For repetitive people (a necessary quality in this subject, you might say), it is only natural to draw the incircles in these new triangles, resulting, of course, in even more triangles of the same kind. The bottom frame shows this subdivision carried out twice more, with green and then even smaller purple disks. In The Cat in the Hat Comes Back,’ the cat takes off his hat to reveal Little Cat, who then removes his hat and releases Little Cat, who then uncovers Little Cat, and so on. Now imagine there are not one but three new cats inside each cat’s hat. That gives a good impression of the explosive proliferation of these tiny ideal triangles. Carry out this process to infinity, and Voom, the Apollonian Gasket appears.
:::

对于执着的研究者（可说是本领域必备素质），在新三角形中继续绘制内切圆是再自然不过的事了，这自然会产生更多同类三角形。下图展示了该细分过程再执行两次的结果：先出现绿色圆盘，继而产生更小的紫色圆盘。正如《戴帽子的猫又来了》中的场景——大猫摘帽露出小猫，小猫摘帽又露出更小的小猫，如此无限延续。现在设想每顶帽子里有三只而非一只小猫，就能理解这些微型理想三角形如何爆发式增长。当此过程无限继续时，砰的一声，阿波罗尼奥斯分形便瞬间显现。

:::{.simple}
The Apollonian gasket is indeed very pretty, but the reason for introducing it here is that, remarkably, it is also the limit set of a Schottky group made by pairing tangent circles. Exactly the same intricate mathematical object can created by completely different means! You can see better how this works in the beautiful glowing version in Figure 7.3. The solid red circles in this picture are the initial Schottky circles in a very special configuration which we will look at closely in the next section. The glowing yellow limit set can be recognized as the same as the Apollonian gasket of Figure 7.1. The picture was made by pairing four tangent circles arranged in the configuration shown in Figure 7.4. The four circles are tangent not only in a chain; there are also extra tangencies between $C_a$ and $C_A$, and between $C_b$ and $C_B$.
:::

阿波罗尼奥斯分形确实非常美丽，但在此介绍它的原因在于：它竟然也是由配对相切圆构成的肖特基群的极限集。完全相同的复杂数学对象，竟能通过截然不同的方法生成！通过图7.3的发光图示，可以更清晰地理解这一机制。图中的红色实心圆是以特殊构型排列的初始肖特基圆（我们将在下节详细分析），其发光黄色极限集与图7.1的阿波罗尼奥斯分形完全一致。该图像通过配对四个相切圆生成（排列方式见图7.4），这些圆不仅形成链式相切，在 $C_a$ ​与 $C_A$、$C_b$ ​与 $C_B$ ​之间还存在额外切点。

:::{.simple}
As you iterate the pairing transformations $a$ and $b$, the extra tangency proliferates, with the effect that inside each disk $D$
you see three further Schottky disks tangent to $D$ and each of the other two. In our version, the circles have been coloured depending on their level, starting with red at the first or lowest level, gradually changing to yellow, green and then blue. The small yellow and blue circles pile up, highlighting the limit set with a mysterious glow.
:::

当你迭代执行配对变换 $a$ 和 $b$ 时，额外切点将呈指数增长，其结果是：在每一个圆盘 $D$ 内部，都会新生成三个肖特基子圆盘，这些子圆盘不仅与 $D$ 相切，彼此之间也相切。在我们的可视化模型中，圆盘按迭代层级着色——从第一层（最底层）的红色开始，渐次过渡为黄、绿、蓝三色。随着黄蓝两色的小圆盘层层堆叠，极限集逐渐被神秘辉光勾勒显现。

:::{.simple}
In this chapter, we shall be exploring various features of the gasket. Notwithstanding the extra tangency, it turns out that each limit point is still associated to exactly one or two infinite words in the generators $a,b,A$ and $B$. You will be able to make your own version of the glowing gasket by running our DFS algorithm for the group generated.
:::

在本章中，我们将深入探究这一垫片结构的诸多特性。尽管存在额外的相切条件，但事实证明，每个极限点仍然对应于生成元 $a,b,A,B$ 所构成的一个或者两个无限词。通过运行我们特别设计的深度优先搜索（DFS）算法，您将能亲手构建出自己专属的的发光垫片。

:::{.simple}
Figure 7.2. Activating the gasket. On the top left, the three largest disks which activate the gasket are shown in blue. One of the three disks appears as the outer blue region which frames the picture, because it contains the point $\infty$, the North Pole on the Riemann sphere. On the top right, two of the disks are tangent at $\infty$, so that you see them in the picture as parallel blue strips. Removing the blue circles leaves two red ideal triangles. Inside each ideal triangle is an incircle, coloured yellow. Below, we see more levels of incircles.

![](/images/indra/fig-7.2.jpg){width=400 .fig}

图 7.2 激活垫片。左上角，激活垫片的三个最大圆盘以蓝色显示。其中一个圆盘作为蓝色外框环绕整个图示，因为它包含黎曼球面上的北极点 $\infty$。右上角两个圆盘在无穷远点 $\infty$ 相切，因此在图中呈现为平行蓝色条纹。移除蓝色圆盘后，剩余区域形成两个红色理想三角形，每个三角形内都有一个黄色内切圆。下方展示了更多层级的内切圆。
:::


## Generating the gasket 生成垫片

:::{.simple}
The configuration of tangent circles which produced the gasket is shown in the right frame of Figure 7.4. The picture has been arranged so that $C_a$ goes through $\infty$, hence it appears in the figure as a straight line. In addition, $C_A$ and $C_a$ are tangent at 0 and $C_B$ and $C_b$ are tangent at $-i$. You can see how this picture is made by creating extra tangencies among a kissing chain of four circles by comparing with the nearby arrangement of four circles in the left hand frame.
:::

生成垫片的相切圆配置如图 7.4 右图所示。图中特意令圆 $C_a$ 经过 $\infty$，从而它在图中呈现为一条直线。此外，我们令圆 $C_A$ 与 $C_a$ 在原点 0 处相切，圆 $C_B$ 与 $C_b$ 在$-i$ 处相切。通过与左边图中四个圆的排列进行对比，可以清晰观察到右图通过在四圆相切链中引入额外切点形成的特殊结构。

:::{.simple}
![](/images/indra/fig-7.4.jpg){width=600 #fig-7.4 .fig}

Figure 7.4. The right frame shows the starting configuration of tangent Schottky circles which produces the glowing gasket. The red circles $C_a$ and $C_A$ are paired by the transformation $a$ and the blue circles $C_B$ and $C_b$ by $b$. Using notation from the last chapter, the tangency points $P,Q,R$ and $S$ are at $1,-1,-0.2-0.4i$ and $0.2-0.4i$ respectively. On the left is a nearby Schottky configuration of circles which are not quite tangent and $a$
and $b$ are loxodromic. This is similar to the configuration shown in frame (vi) of Figure 6.10. The centre frame is an intermediate stage where $a$ is parabolic but $b$ is not.

图 7.4. 右图展示了生成发光垫片的相切 Schottky 圆的初始配置。红色圆 $C_a$ ​与 $C_A$ ​通过变换 $a$ 配对，蓝色圆 $C_B$ 与 $C_b$ 通过变换 $b$ 配对。依照前一章的记号，切点 $P,Q,R,S$ 分别位于坐标 $1,−1,−0.2−0.4i$ 和 $0.2−0.4i$ 处。左图展示了一个稍微不同的不相切的 Schottky 圆配置，此时变换 $a$ 与 $b$ 都是斜航的。此配置与图 6.10 (vi) 所示的结构相似。中间的图呈现过渡状态：变换 $a$ 是抛物的而 $b$ 不是。
:::

:::{.simple}
The generating matrices for the gasket are quite simple:
$$a=\begin{pmatrix}1&0\\-2i&1\end{pmatrix}\quad\text{and}\quad b=\begin{pmatrix}1-i&1\\1&1+i\end{pmatrix}.$$

We shall have more to say about how we arrived at these particular formulas later on. Note that $\tr{a}=\tr{b}=2$, so $a$ and $b$ are parabolic. Looking at the arrangement of Schottky circles in Figure 7.4, you see the fixed point of $a$ is 0, the tangency point of the circles $C_a$ and $C_A$. In Figure 7.3, you can see two chains of tangent circles nesting down on 0 from above and below. The same phenomenon occurs at $-i$, the tangency point of $C_B$ and $C_b$ and the fixed point of $b$. Notwithstanding extra tangencies, the generators $a$ and $b$ still pair opposite circles in the initial tangent chain $C_a,C_b,C_A$ and $C_B$. This means that for nesting circles we still need the commutator condition $\tr{abAB}=2$, which is not hard to check.
:::

生成该垫片的矩阵非常简单：

$$a=\begin{pmatrix}1&0\\-2i&1\end{pmatrix}\quad\text{and}\quad b=\begin{pmatrix}1-i&1\\1&1+i\end{pmatrix}.$$

我们稍后将详细说明如何得出这些特定的公式。注意 $\tr{a}=\tr{b}=2$，因此 $a$ 和 $b$ 均为抛物型变换。观察 [图 7.4](#fig-7.4) 中 Schottky 圆的排列，你会发现 $a$ 的不动点是 0，即圆 $C_a$ ​与 $C_A$ ​的切点。在图 7.3 中，你可以看到两条相切圆的链分别从上下两侧向 0 点嵌套收敛。同样的现象也发生在 $−i$ 处，即 $C_b$ ​与 $C_B$ ​的切点，也是 $b$ 的不动点。尽管存在额外的切点，生成元 $a$ 和 $b$ 仍然将初始的相切链 $C_a,C_b,C_A,C_B$ ​中的圆两两配对。这意味着要实现圆链嵌套，我们仍然需要交换子条件 $\tr{abAB}=-2$，这一点不难验证。

:::{.simple}
We have been speaking as if there is only one Apollonian gasket, but could we not get different gaskets by starting with different tangent chains? Not really, because it turns out that any chain of three tangent circles can be conjugated to any other three. As you can work out in Project 7.1, this stems from the fact that there is always a Möbius map carrying any three points to any other three. Since the gasket is activated by its initial ideal triangle, and since the procedure at each step consists in adding incircles, a Möbius map which conjugates one ideal triangle to another carries the whole gasket along in its wake.

This explains why it makes sense to talk about the Apollonian gasket, because up to conjugation by Möbius maps there is really only one.
:::

我们的讨论似乎一直都假定了阿波罗尼奥斯垫片是唯一的，但如果我们从不同的相切圆链开始，难道不能得到不同的垫片吗？当然不是。实际上，任意三个相切圆构成的初始链都可以共轭到其它任何三个。正如你在项目 7.1 中推导的那样，这源于一个事实：总存在一个莫比乌斯变换，可以将任意三点映射到任何其他三个点。由于垫片是由其初始理想三角形激活的，并且每一步都是添加内切圆，因此将某个理想三角形共轭到另一个理想三角形的莫比乌斯变换，必将整个垫片结构同步地变换过去。

这就解释了为什么我们可以谈论“阿波罗尼奥斯垫片”，因为在莫比乌斯变换的共轭变换下，实际上只有一个垫片。

:::{.simple}
**Pinching tiles**

Figure 7.6 is a wonderful picture of what happened when we introduced Dr. Stickler to Apollonius! It is a pretty intricate arrangement, so let’s take a bit of time understanding what has happened to the tiles. To get a grasp on the situation, look back at the three pictures in Figure 7.4, and watch the progression across the three frames. On the left the limit set is a loop or quasicircle, so the ordinary set - what is left when you take away the limit set - has two parts, a pink inside and a white outside. In the central picture, the pink part has collapsed into a myriad of tangent disks, and the red Schottky circles $C_a$ and $C_A$ touch at 0. On the right, the gasket group, the ‘horns’ of the pink region have also come together, causing the white outside to fracture into disks as well. Notice how the memory of which was inside and which was outside still persists, because what were the ‘inside’ disks are pink while the ‘outside’ ones are white.
:::