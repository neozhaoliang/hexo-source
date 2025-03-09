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

这是一本关于严谨数学的著作，但我们希望它能以通俗易懂的方式吸引尽可能多的读者。本书讲述了我们通过计算机探索一系列具有独特对称性的几何形状的故事，这些形状源自两种特殊螺旋运动的相互作用。这些形状在从大到小的各个尺度上，都展示了精妙的分形复杂性。我们的可视化工作，部分实现了德国几何学大师菲利克斯·克莱因百年前的数学梦想。当两种螺旋运动相互作用时，有时它们会形成规则和谐的图案，有时则呈现完全的无序状态，最引人入胜的是它们在秩序与混乱的临界状态下，层层结构交织，令人着迷。

:::{.simple}
As we progressed in our explorations, the pictures that our computer programs produced were so striking that we wanted to tell our tale in a manner which could be appreciated beyond the narrow confines of a small circle of specialists. You can get a foretaste of their variety by taking a look at the Road Map on the final page. Mathematicians often use the word ‘beautiful’ in talking about their proofs and ideas, but in this case our judgment has been confirmed by a number of unbiassed and definitely non-mathematical people. The visual beauty of the pictures is a veneer which covers a core of important and elegant mathematical ideas; it has been our aspiration to convey some of this inner aesthetics as well. There is no religion in our book but we were amazed at how our mathematical constructions echoed the ancient Buddhist metaphor of Indra’s net, spontaneously creating reflections within reflections, worlds without end.
:::

随着我们探索的深入，计算机程序生成的几何图像展现出令人震撼的数学美感，这促使我们希望以一种超越专业圈子的方式讲述我们的故事。读者可以通过书末的“探索路线图”一窥其丰富的多样性。数学家常用“美”来形容他们的证明和思想，但在本研究中，我们的美学评价得到了众多非数学背景的客观评审者的认可。这些图像的视觉美感，就像是光滑的外壳，包裹着深刻而优雅的数学内核——我们一直致力于在展示这些图像的同时，也传达它们内在的数学美学。虽然本书并不涉及宗教，但我们惊讶地发现，我们的数学结构与佛教“因陀罗网”这一古老隐喻之间产生了意外的共鸣，层层反射自发地衍生出无尽的宇宙。

:::{.simple}
Most mathematics is accessible, as it were, only by crawling through a long tunnel in which you laboriously build up your vocabulary and skills as you abstract your understanding of the world. The mathematics behind our pictures, though, turned out not to need too much in the way of preliminaries. So long as you can handle high school algebra with confidence, we hope everything we say is understandable. Indeed given time and patience, you should be able to make programs to create new pictures for yourself. And if not, then browsing through the figures alone should give a sense of our journey. Our dream is that this book will reveal to our readers that mathematics is not alien and remote but just a very human exploration of the patterns of the world, one which thrives on play and surprise and beauty.
:::

大多数数学，仿佛只能通过爬行在漫长的隧道中来理解——在这个过程中，你不断积累词汇和技巧，同时抽象化你对世界的认知。然而，本书图像背后的数学却并不需要太多前置知识。只要你能自信地掌握高中代数，我们相信你能理解书中的所有内容。事实上，若有足够的时间和耐心，你应该能编写程序，自己创造新的图像。如果不进行编程实践，单纯浏览这些图像，也能让你感受到我们研究的历程。我们的梦想是通过这本书向读者展示，数学并非遥不可及的抽象领域，而是人类探索世界规律的一种方式——这是一种充满游戏、惊喜和美感的探索。

## 我们是如何开始写它的？

:::{.simple}
**David M.'s story**. This book has been over twenty years in the writing. The project began when Benoit Mandelbrot visited Harvard in 1979/80, in the midst of his explorations of complex iteration - the ‘fractals’ known as Julia sets - and the now famous ‘Mandelbrot Set’. He had also looked at some nineteenth century figures produced by infinite repetitions of simple reflections in circles, a prototypical example of which had fascinated Felix Klein. David W. and I pooled our expertise and began to develop these ideas further in the Kleinian context. The computer rapidly began producing pictures like the ones you will find throughout the book.
:::

**戴维·芒福德（David Mumford）的故事**。本书的创作历时二十多年。项目始于 1979 至 1980 年间，当时贝努瓦·曼德布罗特（Benoit B. Mandelbrot）访问哈佛大学，他正处于对复迭代系统的研究之中——即著名的朱利亚集（Julia sets）和曼德布罗特集（Mandelbrot Set）。在此期间，曼德布罗特还关注了 19 世纪数学家通过圆反射的无限迭代所生成的几何图形，其中一个典型范例曾深深吸引了菲利克斯·克莱因（Felix Klein）。我与大卫·怀特（David W.）共同整合各自的专业知识，开始在克莱因几何学的框架下进一步发展这一研究方向。计算机程序很快就生成了许多类似于你在本书中所看到的图像。

:::{.simple}
What to do with the pictures? Two thoughts surfaced: the first was that they were unpublishable in the standard way. There were no theorems, only very suggestive pictures. They furnished convincing evidence for many conjectures and lures to further exploration, but theorems were the coin of the realm and the conventions of that day dictated that journals only publish theorems.
The second thought was equally daunting: here was a piece of real mathematics that we could explain to our non-mathematical friends. This dangerous temptation prevailed, but it turned out to be much, much more difficult than we imagined.
:::

这些图像该如何处理呢？我们有了两个思路。第一个思路是，这些图像无法按照常规的学术方式发表——它们没有定理，只有一些充满启发性的图像。虽然这些图像为许多猜想提供了有力证据，也为进一步探索指引了方向，但在当时定理至上的学术体系中，期刊的传统要求只发表定理。

第二个思路同样让人感到棘手：这些数学成果具有显著的科普价值，我们可以向非专业的朋友们加以解释。我们最终没有抵抗住这个充满风险的诱惑，然而，实际操作的困难远远超出了我们的预期。

:::{.simple}
We persevered off and on for a decade. One thing held us back: whenever we got together, it was so much more fun to produce more figures than to write what Dave W. named in his computer TheBook. I have fond memories of traipsing through sub-zero degree gales to the bunker-like supercomputer in Minneapolis to push our calculations still further. The one loyal believer in the project was our ever-faithful and patient editor, David Tranah. However, things finally took off when Caroline was recruited a bit more than a decade ago. It took a while to learn how to write together, not to mention spanning the gulfs between our three warring operating systems. But our publisher, our families and our friends told us in the end that enough was enough.
:::

这项研究我们断断续续地推进了十年。最大的障碍是：每当我们聚在一起时，绘制新图像总比撰写戴夫·W.电脑中的《天书》更有趣。我至今还记得，在明尼阿波利斯刺骨的寒风中，我们跋涉到堡垒般的超级计算机中心，只为将计算推向新的极限。唯一始终如一的支持者，是那位忠诚且耐心的编辑大卫·特拉纳。真正的转折出现在十多年前卡罗琳的加入——我们花了些时间学会了如何共同写作，并克服了三个互不兼容的操作系统之间的鸿沟。直到最后，出版商、家人和朋友们都告诉我们，“是时候结束了”。

You know that ‘word problem’ you hated the most in elementary school? The one about ditch diggers. Ben digs a ditch in 4 hours, Ned in 5 and Ted in 6. How long do they take to dig it together? The textbook will tell you 1 hour, 37 minutes and 17 seconds. Baloney! We have uncovered incontrovertable evidence that the right answer is
hours. This is a deep principle involving not merely mathematics but sociology, psychology, and economics. We have a remarkable proof of this but even Cambridge University Press’s generous margin allowance is too small to contain it.

还记得小学时最让你头疼的“挖水沟问题”吗？本挖一条沟需要 4 小时，内德需要 5 小时，泰德需要 6 小时，那么他们三个人一起干，得多长时间才能完成？教科书上会告诉你标准答案是 1 小时 37 分 17 秒——纯粹胡说八道！我们已经通过实践得到了确凿的证据：真正的耗时应该是 4 + 5 + 6 = 15 小时。这背后蕴藏着一个深刻的原理，不仅仅涉及数学，还牵扯到社会学、心理学和经济学。我们有一个精彩的证明，只可惜即使剑桥大学出版社给出了超大的页边距，依然容不下它。

:::{.note}
Since then, the pioneering team of Klaus and Alice Peters have started the journal Experimental Mathematics.

自那时起，Klaus 和 Alice Peters 的先锋团队创办了《实验数学》期刊。
:::

# 7 The glowing gasket

![Figure 7.1. The Apollonian gasket. The lacy web in the two pictures is the same: on the left, it is drawn in the complex plane and, on the right, on the sphere. As you might imagine, many people have tried calculating the Hausdorff dimension of the gasket. Curt McMullen has found the most accurate value, which is estimated as about 1.305688. \
图 7.1. 阿波罗尼斯垫片。两幅图中的蕾丝网状结构实际上是相同的：左边是在复平面上绘制的，右边则是在球面上绘制的。你可能已经猜到，许多人都曾尝试计算该垫片的豪斯多夫维数。柯特·麦克马伦（Curt McMullen）给出了目前最精确的估计值，约为 1.305688。](/images/indra/fig-7.1.jpg){width=600 .fig #fig-7.1}

:::{.simple}
The lacy web in Figure 7.1 is called the Apollonian gasket. Usually, it is constructed by a simple geometric procedure, dating back to those most famous of geometers, the ancient Greeks. We shall start by explaining the traditional construction, but as we shall disclose shortly, the gasket also represents another remarkable way in which the Schottky dust can congeal. The pictures you see here were actually all drawn using a refinement of the DFS algorithm for tangent Schottky circles.
:::

[图 7.1](#fig-7.1) 中的镂空结构被称为阿波罗尼奥斯分形。其构造基于一种简单的几何方法，可追溯至古希腊著名的几何学家。我们将首先解释传统的构造方法，但稍后也会揭示，这个分形结构同样展现了肖特基尘埃凝聚的另一种独特形式。此处所见的所有图像，实际上都是通过一种改进版的 DFS 算法绘制的，该算法专门用于处理相切肖特基圆的情况。

:::{.simple}
The starting point of the traditional construction is a chain of three non-overlapping disks, each tangent to both of the others. A region between three tangent disks is a ‘triangle’ with circular arcs for sides. This shape is often called an ideal triangle: the sides are tangent at each of the three vertices so the angle between them is zero degrees.

The gasket is activated by the fact that in the middle of each ideal triangle there is always a unique ‘inscribed disk’ or incircle, tangent to the three outer circles. It is really better to think of the gasket as a construction on the sphere. Insides and outsides don’t matter any more, so we may as well start with any three mutually tangent circles. You can see lots of disks and incircles in Figure 7.2.
:::

传统构造的起点是三个互不重叠且两两相切的圆盘，呈链状排列。三个相切圆盘围成的区域，形状类似一个以圆弧为边的“三角形”。这种几何图形通常被称为理想三角形：由于其三条边在顶点处相切，因此每个顶点的夹角恰为零度。阿波罗尼奥斯垫片的构造正是由这一特性触发的：每个理想三角形的中心都有且仅有一个内切圆，它同时与这三个外接圆相切。更直观的理解方式是将这一构造置于球面上来考察。这样一来，“内外”之分已无意义，因此我们大可从任意三个两两相切的圆开始。在 [图 7.2](#fig-7.2) 中，你会看到许多这样的圆盘及其内切圆结构。


![Figure 7.2. Activating the gasket. On the top left, the three largest disks which activate the gasket are shown in blue. One of the three disks appears as the outer blue region which frames the picture, because it contains the point $\infty$, the North Pole on the Riemann sphere. On the top right, two of the disks are tangent at $\infty$, so that you see them in the picture as parallel blue strips. Removing the blue circles leaves two red ideal triangles. Inside each ideal triangle is an incircle, coloured yellow. Below, we see more levels of incircles. \
图 7.2. 激活垫片。左上图中，标出的三个最大圆盘以蓝色呈现，正是它们激活了垫片。其中一个圆盘显示为环绕整幅图像的外部蓝色区域，这是因为它包含了点 $\infty$——也就是黎曼球面上的北极点。右上图中，其中两个圆盘在 $\infty$ 处相切，因此在图中看起来像是两条平行的蓝色带状区域。当我们移除这些蓝色圆盘后，图中便显现出两个红色的理想三角形。每个理想三角形内部都嵌有一个黄色内切圆。下方图示进一步展示了更深层次的内切圆结构。](/images/indra/fig-7.2.jpg){width=600 .fig #fig-7.2}

:::{.simple}
In the figure, we show two initial configurations of three tangent blue disks. When you take out the three blue disks you are left with two red ideal triangles. Each red ideal triangle has a yellow incircle. See how each yellow incircle divides the red triangle into three more triangles.
:::

在图中，我们展示了三个相切的蓝色圆盘的两种初始排布。当你移除这三个蓝色圆盘后，会留下两个红色的理想三角形。每个红色理想三角形各含一个黄色内切圆。仔细观察这些黄色的内切圆如何将红色三角形进一步分割为三个子三角形。

:::{.simple}
For repetitive people (a necessary quality in this subject, you might say), it is only natural to draw the incircles in these new triangles, resulting, of course, in even more triangles of the same kind. The bottom frame shows this subdivision carried out twice more, with green and then even smaller purple disks. In The Cat in the Hat Comes Back,’ the cat takes off his hat to reveal Little Cat, who then removes his hat and releases Little Cat, who then uncovers Little Cat, and so on. Now imagine there are not one but three new cats inside each cat’s hat. That gives a good impression of the explosive proliferation of these tiny ideal triangles. Carry out this process to infinity, and Voom, the Apollonian Gasket appears.
:::

对于那些乐此不疲的人（或许正是研究这一主题的必备素质），在新三角形中继续绘制内切圆简直是顺理成章的事。这当然会催生出更多相似的三角形。下方的子图展示了这种细分过程再重复两次的结果——先是绿色圆盘，接着是更小的紫色圆盘，密密层层地堆叠起来。这让我想起《戴帽子的猫又来了》中的情节——大猫摘下帽子，露出一只小猫；小猫摘下自己的帽子，又冒出一只更小的小猫；接着更小的小猫再摘帽……如此反复，仿佛无穷无尽。现在，试着想象每顶帽子里不是藏着一只，而是三只小猫，那你就能体会这些微型理想三角形是如何爆炸式增长的了。让这一过程无限延续，砰——阿波罗尼奥斯分形便瞬间跃然眼前。

:::{.simple}
The Apollonian gasket is indeed very pretty, but the reason for introducing it here is that, remarkably, it is also the limit set of a Schottky group made by pairing tangent circles. Exactly the same intricate mathematical object can created by completely different means! You can see better how this works in the beautiful glowing version in Figure 7.3. The solid red circles in this picture are the initial Schottky circles in a very special configuration which we will look at closely in the next section. The glowing yellow limit set can be recognized as the same as the Apollonian gasket of Figure 7.1. The picture was made by pairing four tangent circles arranged in the configuration shown in Figure 7.4. The four circles are tangent not only in a chain; there are also extra tangencies between $C_a$ and $C_A$, and between $C_b$ and $C_B$.
:::

阿波罗尼奥斯分形确实非常美丽，但我们在此介绍它的原因是：令人惊讶的是，它也是由切圆配对生成的肖特基群的极限集。这一精妙的数学对象，竟然能通过完全不同的方式构造出来！您可以通过 [图 7.3](#fig-7.3) 中的荧光渲染图，看到这一过程是如何运作的。图中的实心红色圆环是以一种特殊配置排列的初始肖特基圆（具体分析请参见下一节），其荧黄色的极限集与 [图 7.1](#fig-7.1) 中的阿波罗尼奥斯垫片完全一致。这幅图像是通过配对四个相切圆生成的，排列方式如 [图 7.4](#fig-7.4) 所示：这些圆不仅形成了链式相切的关系，而且在 $C_a$ 和 $C_A$、$C_b$ 和 $C_B$ 之间还存在额外的切点。

![Figure 7.3. (Overleaf.) The glowing gasket. This picture was created by applying the generating transformations $a,A,b,B$ to the chain of four solid red disks bounding the black ideal triangles. At higher levels, the image circles tone from red to orange to yellow, through green to blue, finally cycling back to red. Don’t let the picture fool you - the red circles are not the circles which activate the gasket in the traditional construction. The ones which appear in the traditional construction are the ‘dual’ circles with the yellow glow. \
图 7.3. 荧光垫片。此图像是通过对围绕黑色理想三角形的四个实心红色圆盘施加生成变换 $a,A,b,B$ 而生成的。在更高的层级中，图像中的圆环色调从红色渐变为橙色、黄色，接着是绿色，再到蓝色，最终循环回红色。需要特别注意的是：图中的红色圆并非传统阿波罗尼奥斯构造中激活垫片的圆——在传统构造中，起激活作用的是发出黄色光辉的“对偶圆”。](/images/indra/fig-7.3.jpg){width=600 #fig-7.3}

:::{.simple}
As you iterate the pairing transformations $a$ and $b$, the extra tangency proliferates, with the effect that inside each disk $D$ you see three further Schottky disks tangent to $D$ and each of the other two. In our version, the circles have been coloured depending on their level, starting with red at the first or lowest level, gradually changing to yellow, green and then blue. The small yellow and blue circles pile up, highlighting the limit set with a mysterious glow.
:::

当你不断迭代配对变换 $a$ 和 $b$ 时，额外的切点会迅速增殖，呈现出一种指数增长的趋势。几何上，其几何效应表现为：这意味着在每个圆盘 $D$ 内部，都会涌现出三个新的肖特基子圆盘——它们不仅与 $D$ 相切，而且两两之间也彼此相切。在我们的可视化方案中，圆盘根据迭代的层级依次着色——最底层从红色起步，逐步过渡到黄色、绿色、蓝色。随着黄色和蓝色的小圆盘层层堆叠，极限集仿佛被一圈神秘的光晕所笼罩，愈发清晰而引人入胜。

:::{.simple}
In this chapter, we shall be exploring various features of the gasket. Notwithstanding the extra tangency, it turns out that each limit point is still associated to exactly one or two infinite words in the generators $a,b,A$ and $B$. You will be able to make your own version of the glowing gasket by running our DFS algorithm for the group generated.
:::

在本章中，我们将深入探讨垫片结构的各种特性。尽管存在额外的相切关系，但事实证明，每个极限点仍然对应于生成元 $a, b, A, B$ 所构成的一个或两个无限词。通过运行我们设计的深度优先搜索（DFS）算法，您将能够亲手生成属于自己的发光垫片。


## Generating the gasket 生成垫片

:::{.simple}
The configuration of tangent circles which produced the gasket is shown in the right frame of Figure 7.4. The picture has been arranged so that $C_a$ goes through $\infty$, hence it appears in the figure as a straight line. In addition, $C_A$ and $C_a$ are tangent at 0 and $C_B$ and $C_b$ are tangent at $-i$. You can see how this picture is made by creating extra tangencies among a kissing chain of four circles by comparing with the nearby arrangement of four circles in the left hand frame.
:::

生成垫片的相切圆配置如 [图 7.4](#fig-7.4) 右图所示。图中特意令圆 $C_a$ 经过 $\infty$，从而它在图中呈现为一条直线。此外，我们令圆 $C_A$ 与 $C_a$ 在原点 0 处相切，圆 $C_B$ 与 $C_b$ 在$-i$ 处相切。The configuration of tangent circles which produced the gasket is shown in the right frame of Figure 7.4. The picture has been arranged so that $C_a$ goes through $\infty$, hence it appears in the figure as a straight line. In addition, $C_A$ and $C_a$ are tangent at 0 and $C_B$ and $C_b$ are tangent at $-i$. You can see how this picture is made by creating extra tangencies among a kissing chain of four circles by comparing with the nearby arrangement of four circles in the left hand frame.
:::

生成垫片的相切圆配置如 [图 7.4](#fig-7.4) 右图所示。图中特意令圆 $C_a$ 经过 $\infty$，从而它在图中呈现为一条直线。此外，我们令圆 $C_A$ 与 $C_a$ 在原点 0 处相切，圆 $C_B$ 与 $C_b$ 在$-i$ 处相切。通过与左边图中四个圆的排列进行对比，可以清晰观察到右图通过在四圆相切链中引入额外切点形成的特殊结构。

![Figure 7.4. The right frame shows the starting configuration of tangent Schottky circles which produces the glowing gasket. The red circles $C_a$ and $C_A$ are paired by the transformation $a$ and the blue circles $C_B$ and $C_b$ by $b$. Using notation from the last chapter, the tangency points $P,Q,R$ and $S$ are at $1,-1,-0.2-0.4i$ and $0.2-0.4i$ respectively. On the left is a nearby Schottky configuration of circles which are not quite tangent and $a$
and $b$ are loxodromic. This is similar to the configuration shown in frame (vi) of Figure 6.10. The centre frame is an intermediate stage where $a$ is parabolic but $b$ is not. \
图 7.4. 右图展示了生成发光垫片的相切 Schottky 圆的初始配置。红色圆 $C_a$ 与 $C_A$ 通过变换 $a$ 配对，蓝色圆 $C_B$ 与 $C_b$ 通过变换 $b$ 配对。根据前一章的记号，切点 $P, Q, R, S$ 分别位于坐标 $1, -1, -0.2-0.4i$ 和 $0.2-0.4i$ 处。左图展示了一个相似的 Schottky 圆配置，其中圆未完全相切，且变换 $a$ 和 $b$ 均为斜航的。该配置与 [图 6.10](#fig-6.10) (vi) 中的结构相似。中间图呈现了过渡状态，其中变换 $a$ 是抛物线型的，而 $b$ 不是。](/images/indra/fig-7.4.jpg){width=600 #fig-7.4 .fig}

:::{.simple}
The generating matrices for the gasket are quite simple:
$$a=\begin{pmatrix}1&0\\-2i&1\end{pmatrix}\quad\text{and}\quad b=\begin{pmatrix}1-i&1\\1&1+i\end{pmatrix}.$$

We shall have more to say about how we arrived at these particular formulas later on. Note that $\tr{a}=\tr{b}=2$, so $a$ and $b$ are parabolic. Looking at the arrangement of Schottky circles in Figure 7.4, you see the fixed point of $a$ is 0, the tangency point of the circles $C_a$ and $C_A$. In Figure 7.3, you can see two chains of tangent circles nesting down on 0 from above and below. The same phenomenon occurs at $-i$, the tangency point of $C_B$ and $C_b$ and the fixed point of $b$. Notwithstanding extra tangencies, the generators $a$ and $b$ still pair opposite circles in the initial tangent chain $C_a,C_b,C_A$ and $C_B$. This means that for nesting circles we still need the commutator condition $\tr{abAB}=2$, which is not hard to check.
:::

生成该垫片的矩阵非常简单：

$$a=\begin{pmatrix}1&0\\-2i&1\end{pmatrix}\quad\text{and}\quad b=\begin{pmatrix}1-i&1\\1&1+i\end{pmatrix}.$$

我们将在后续部分详细说明如何得到这两个特定的矩阵。值得注意的是，由于 $\tr{a}=\tr{b}=2$，因此 $a$ 和 $b$ 都是抛物型变换。观察 [图 7.4](#fig-7.4) 中 Schottky 圆的排列，你会发现 $a$ 的不动点是原点 0，即圆 $C_a$ 和 $C_A$ 的切点。在 [图 7.3](#fig-7.3) 中，你可以看到两条相切的圆链从上下两侧分别向 0 点逐渐嵌套。相同的现象也出现在 $-i$ 处，这既是圆 $C_b$ 和 $C_B$ 的切点，也是变换 $b$ 的不动点。尽管存在额外的切点，生成元 $a$ 和 $b$ 仍然会将初始的相切链 $C_a,C_b,C_A,C_B$ 中的圆两两配对。这意味着，在嵌套圆的过程中，我们仍然需要满足交换子条件 $\tr{abAB}=2$，这一点也不难验证。

:::{.simple}
We have been speaking as if there is only one Apollonian gasket, but could we not get different gaskets by starting with different tangent chains? Not really, because it turns out that any chain of three tangent circles can be conjugated to any other three. As you can work out in Project 7.1, this stems from the fact that there is always a Möbius map carrying any three points to any other three. Since the gasket is activated by its initial ideal triangle, and since the procedure at each step consists in adding incircles, a Möbius map which conjugates one ideal triangle to another carries the whole gasket along in its wake.

This explains why it makes sense to talk about the Apollonian gasket, because up to conjugation by Möbius maps there is really only one.
:::

我们此前的讨论似乎一直都默认了阿波罗尼奥斯垫片是独一无二的，但如果我们从不同的初始相切圆链出发，难道不会得到不同的垫片吗？答案是否定的。事实上，任何由三个相切圆组成的链，都可以通过某个莫比乌斯变换转化为另一组（事先给定的）相切圆链。如 [项目 7.1](#proj-7.1) 中的推导所示，这一结论的根本原因在于：在复平面上，任意三个不同点总能通过某个莫比乌斯变换映射到任意其它三点。由于垫片的构造源于其初始理想三角形，而每一步的操作都是添加内切圆，因此将一个理想三角形共轭到另一个理想三角形的莫比乌斯变换，会将整个垫片一同带动并映射过去。

这就解释了为什么谈论“阿波罗尼奥斯垫片”是有意义的，因为在莫比乌斯变换的共轭意义下，本质上只存在一个阿波罗尼奥斯垫片。

![Figure 7.5. The strip gasket. This shows the gasket as it appears when we conjugate so that the extra tangency point of $C_b$ and $C_B$ is at $\infty$. Any parabolic with a fixed point at $\infty$ is a Euclidean translation, in this case $b(z)=z+2$, which explains the translational symmetry along the infinite strip. \
图 7.5. 带状垫片。图中展示了当我们进行共轭变换，使得 $C_b$ 和 $C_B$ 的额外切点位于 $\infty$ 处时，垫片的样貌。任何以 $\infty$ 为不动点的抛物型变换都是欧几里得平移，在本例中为 $b(z)=z+2$，这解释了沿着无限带的平移对称性。](/images/indra/fig-7.5.jpg){width=600 #fig-7.5}

另一个著名的垫片版本可以在 [图 7.5](#fig-7.5) 中看到。为了得到这个，我们进行了共轭，使得 $C_a$ 和 $C_A$ 在 0 处相切，因此它们是垂直线。映射 $a$ 和 $b$ 现在在 $0$ 处有一个固定点。该群的生成元为：

$$a=\begin{pmatrix}2&-i\\-i&0\end{pmatrix}\quad\text{and}\quad b=\begin{pmatrix}1&2\\0&1\end{pmatrix}.$$

## Pinching tiles

![Figure 7.6. Dr. Stickler meets Apollonius. Placing Dr. Stickler in the Apollonian gasket, we let the group of symmetries carry him around. He appears exactly in those disks which were pink in Figure 7.4. If we had started him off in a white one, his images would fill the white disks instead. The symmetry $a$ is parabolic and on both sides of its fixed point 0, circles of Sticklers are streaming out. A startling feature is the circle of Sticklers streaming out from and into 1. Every alternate Stickler is standing on his head! The upright Sticklers are just powers of $abAB$
(which fixes 1) applied to the Stickler standing on the right hand horizontal axis, while the upside down ones are the images of this same Stickler under $(abAB)^nA$. \
图 7.6. Stickler 博士邂逅阿波罗尼奥斯分形。我们将 Stickler 博士置于阿波罗尼奥斯垫片中，并让对称群带他四处转转。他恰好出现在 [图 7.4](#fig-7.4) 中那些粉红色的圆盘中。若是他最初从某个白色圆盘出发，那么他的身影就会出现在所有白色圆盘中。对称 $a$ 是抛物型的，在其不动点 0 的两侧，成群的 Stickler 博士排成圆圈，向外辐射而出。最令人惊奇的是，在坐标 1 附近，Stickler 博士的身影竟排成了一个双向流动的环形结构，更妙的是，相邻的 Stickler 博士还严格地头朝上、头朝下交替出现。这些直立的 Stickler 博士，正是通过不断对右侧水平轴上那位 Stickler 施加变换 $(abAB)^n$（该变换以 1 为不动点）而得到的。而那些倒立的 Stickler 博士，则是这位 Stickler 在变换 $(abAB)^nA$ 作用下的映射结果。](/images/indra/fig-7.6.jpg){width=600 #fig-7.6}

:::{.simple}
Figure 7.6 is a wonderful picture of what happened when we introduced Dr. Stickler to Apollonius! It is a pretty intricate arrangement, so let’s take a bit of time understanding what has happened to the tiles. To get a grasp on the situation, look back at the three pictures in Figure 7.4, and watch the progression across the three frames. On the left the limit set is a loop or quasicircle, so the ordinary set - what is left when you take away the limit set - has two parts, a pink inside and a white outside. In the central picture, the pink part has collapsed into a myriad of tangent disks, and the red Schottky circles $C_a$ and $C_A$ touch at 0. On the right, the gasket group, the ‘horns’ of the pink region have also come together, causing the white outside to fracture into disks as well. Notice how the memory of which was inside and which was outside still persists, because what were the ‘inside’ disks are pink while the ‘outside’ ones are white.
:::

[图 7.6](#fig-7.6) 生动展示了当我们邀请 Stickler 博士探索阿波罗尼奥斯分形时所产生的奇妙效果！图中的结构相当复杂，因此我们不妨花些时间来理解瓷砖发生了什么变化。为了更好地理解，请回顾 [图 7.4](#fig-7.4) 的三幅子图，并观察这三帧之间的变化：左图中的极限集是一个回路或拟圆，因此普通集（即去掉极限集后剩下的部分）分为粉色的内部和白色的外部。在中间的图中，粉色区域已坍缩成无数相切的圆盘，而红色的肖特基圆 $C_a$ 和 $C_A$ 在 0 处相切。右图则展示了垫片群，其中粉色区域的“触角”也汇聚在一起，导致白色外部区域被分裂成圆盘。令人惊奇的是，尽管整体结构被打破，内外区域仍通过颜色得以保留其原始的记忆——曾经的内部区域仍然是粉色，而外部区域则保持白色。

:::{.simple}
In each picture, the initial Schottky circles are blue and red. Watch them to follow the fate of the tiles. On the left, as usual for a kissing Schottky group, they surround the central inner four sided tile. If we transported this tile around by the group, we would see a tessellation　of the pink region similar to the one in Figure 6.6. (There is also an outer tile, the region outside the four Schottky circles, which as usual you can see more clearly by imagining it on the Riemann sphere.) The inner and outer parts of the ordinary set are invariant under the group, so if you apply any transformation of the group to any tile in the pink region ‘inside’ the limit set, you get another tile which is also ‘inside’.
:::

在每张图片中，初始的 Schottky 圆是蓝色和红色。观察它们可以帮助我们跟踪瓷砖的变化。在左侧，和常见的亲吻 Schottky 群一样，这些圆围绕着中心的四边形内部瓷砖。如果我们将这块瓷砖通过群的变换进行移动，就会看到一个类似于 [图 6.6](#fig-6.6) 中粉色区域的镶嵌图案。（此外，还有一个外部瓷砖，即四个 Schottky 圆外部的区域，通常你可以通过在黎曼球面上想象它来更清楚地看到。）普通集合的内部和外部部分在群作用下保持不变，因此，如果将群中的任何变换应用于极限集“内部”粉色区域的任何瓷砖，我们会得到另一个同样位于“内部”的瓷砖。

:::{.simple}
In the central picture, where $a$ has become parabolic, the inner tile has been pinched into two halves. Each half-tile is an ideal triangle, with two red sides and one blue. You should think of this pair of triangles as one composite two-part tile. Moved around by the group, the composite tile will cover all the pink circles. There is an outer tile in this picture too, which (on the Riemann sphere) remains in one piece.

On the right, in the gasket group, both $a$ and $b$ have been pinched so that now $C_b$ and $C_B$ also tuch at $-i$. Now there are four basic half-tiles. The two pink ones will produce a tiling of the pink circles and the white ones will make a tiling of the white circles. In the glowing gasket picture, these four tiles are black. The upper two ‘horizontal’ ideal triangles are the remnants of the inner Schottky tile, while the lower ‘vertical’ triangle is a remnant of the outer one. If you look carefully, you can just see its twin peeping out in the bottom centre of the page.
:::

在中央的图片中，$a$ 已变为抛物型，内部的瓦片被挤压成了两半。每个半瓦片都是一个理想三角形，具有两条红边和一条蓝边。你可以将这对三角形视为一个复合的两部分瓦片。通过群的作用，这个复合瓦片会覆盖所有粉红色的圆圈。图中还有一个外部瓦片，它在黎曼球面上保持完整。

在右侧的垫片群中，$a$ 和 $b$ 都被挤压变形，使得 $C_b$ 和 $C_B$ 现在也在 $-i$ 处相切。此时有四个基本的半瓦片。两个粉色的将生成粉色圆圈的平铺，而两个白色的则将生成白色圆圈的平铺。在发光的垫片图像中，这四个瓦片是黑色的。上方的两个“水平”理想三角形是内部 Schottky 瓦片的残余，而下方的“垂直”三角形则是外部瓦片的残余。如果你仔细观察，可以看到它的双胞胎在页面底部中央隐约可见。

:::{.simple}
Now we can go back to the picture of Dr. Stickler meeting Apollonius. The party is taking place in the remnants of the ‘pink’ circles. If you compare with the half-tiles in Figure 7.4, something rather odd has happened to Dr. Stickler - when the original tile split in two, his head ended up in the green half-tile and his feet in the blue one. Fortunately, there is a transformation of the group (namely $B$) which carries the blue Stickler to the green one, moving the blue half-tile containing the blue feet to the yellow half-tile containing the green feet. Had we not pointed out his difficulties you might not even have noticed that anything was wrong. After gluing the yellow half-tile to the green halftile, the relieved (but still slightly greenish) Dr. Stickler stands reunited in a new and complete tile whose images under the group map to all the Sticklers in the picture.
:::

现在我们可以回到 Stickler 博士与阿波罗尼奥斯相遇的画面。聚会正在“粉色”圆圈的遗迹中举行。如果你将其与 [图 7.4](#fig-7.4) 中的半瓷砖进行对比，你会发现 Stickler 博士身上发生了一些相当奇怪的事情——当原始瓷砖一分为二时，他的头部出现在了绿色半瓷砖中，而脚部则在蓝色半瓷砖里。幸运的是，群中有一个变换（即 $B$）能够将蓝色的 Stickler 移到绿色的位置，进而将包含蓝色脚部的蓝色半瓷砖移动到包含绿色脚部的黄色半瓷砖上。如果我们没有指出他的困境，你甚至可能没有注意到有什么不对劲。在将黄色半瓷砖与绿色半瓷砖粘合后，松了一口气（但仍略带绿色）的 Stickler 博士重新站在了一个全新且完整的瓷砖上，其在群映射下的图像对应着画面中所有的 Stickler。

## And pinching surfaces