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
图 7.1. 阿波罗尼奥斯垫片。两幅图中的蕾丝网状结构是相同的：左边是在复平面上绘制的，右边是在球面上绘制的。你可能已经猜到，许多人都曾尝试计算该垫片的豪斯多夫维数。柯特·麦克马伦（Curt McMullen）给出了目前最精确的估计值，约为 1.305688。](/images/indra/fig-7.1.jpg){width=600 .fig #fig-7.1}

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
图 7.2. 激活垫片。左上图中，标出的三个最大圆盘以蓝色呈现，正是它们激活了垫片。其中一个圆盘显示为环绕整幅图像的外部蓝色区域，这是因为它包含了点 $\infty$，即黎曼球面上的北极点。右上图中，其中两个圆盘在 $\infty$ 处相切，因此在图中呈现为两条平行的蓝色带状区域。当我们移除这些蓝色圆盘后，图中便显现出两个红色的理想三角形。每个理想三角形内部都嵌有一个黄色内切圆。下方图示进一步展示了更深层次的内切圆结构。](/images/indra/fig-7.2.jpg){width=600 .fig #fig-7.2}

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

当你不断迭代配对变换 $a$ 和 $b$ 时，额外的切点会迅速增殖，呈现出一种指数增长的趋势。几何上，这表现为：在每个圆盘 $D$ 内部，都会涌现出三个新的肖特基子圆盘——它们不仅与 $D$ 相切，而且两两之间也彼此相切。在我们的可视化方案中，圆盘根据迭代的层级依次着色——最底层从红色起步，逐步过渡到黄色、绿色、蓝色。随着黄色和蓝色的小圆盘层层堆叠，极限集被一圈神秘的光晕所笼罩，愈发清晰而引人入胜。

:::{.simple}
In this chapter, we shall be exploring various features of the gasket. Notwithstanding the extra tangency, it turns out that each limit point is still associated to exactly one or two infinite words in the generators $a,b,A$ and $B$. You will be able to make your own version of the glowing gasket by running our DFS algorithm for the group generated by the transformations $a$ and $b$. The algorithm draws this complicated lacework as a continuous curve, which is hard to imagine until you see it in progress on a computer screen. The curve snakes its way through the gasket, apparently leaving one region for quite a while until finally weaving its way back. Animation is the true reward of successfully implementing the program we have been learning to build.
:::

在本章中，我们将深入探索垫片结构的各种特性。尽管存在额外的相切关系，但事实证明，每个极限点仍然对应于生成元 $a, b, A, B$ 所构成的一至两个无限字。通过运行我们为变换群 $\langle a,b\rangle$ 特别设计的深度优先搜索（DFS）算法，你将能够制作出自己专属的发光垫片。该算法将这种复杂的镂空结构绘制成一条连续的曲线——这种奇妙的生成过程，唯有在计算机屏幕上亲眼目睹，方能真正感受到其变幻莫测之美。曲线如同灵蛇般在 gasket 中蜿蜒穿梭，仿佛要彻底离开某个区域，却又在某个时刻悄然折返。成功实现我们精心构建的程序后，最令人欣喜的收获正是这些跃然屏上的动态演绎。

## Generating the gasket 生成垫片

:::{.simple}
The configuration of tangent circles which produced the gasket is shown in the right frame of Figure 7.4. The picture has been arranged so that $C_a$ goes through $\infty$, hence it appears in the figure as a straight line. In addition, $C_A$ and $C_a$ are tangent at 0 and $C_B$ and $C_b$ are tangent at $-i$. You can see how this picture is made by creating extra tangencies among a kissing chain of four circles by comparing with the nearby arrangement of four circles in the left hand frame.
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

关于这两个特定的矩阵，我们稍后会详细解释它们的推导过程。值得注意的是，由于 $\tr{a}=\tr{b}=2$，因此 $a$ 和 $b$ 都是抛物型变换。观察 [图 7.4](#fig-7.4) 中 Schottky 圆的排列，可以发现 $a$ 的不动点是原点 0，即圆 $C_a$ 和 $C_A$ 的切点。在 [图 7.3](#fig-7.3) 中，你可以看到两条相切的圆链从上下两侧分别向 0 点逐渐嵌套收缩。相同的现象也出现在 $-i$ 处，这既是圆 $C_b$ 和 $C_B$ 的切点，也是变换 $b$ 的不动点。尽管存在额外的切点，生成元 $a$ 和 $b$ 依然将初始的相切链 $C_a,C_b,C_A,C_B$ 中的圆配对。这意味着要实现圆链的无穷嵌套，我们仍需满足交换子条件 $\tr{abAB}=2$，而这一迹值条件并不难验证。

:::{.simple}
We have been speaking as if there is only one Apollonian gasket, but could we not get different gaskets by starting with different tangent chains? Not really, because it turns out that any chain of three tangent circles can be conjugated to any other three. As you can work out in Project 7.1, this stems from the fact that there is always a Möbius map carrying any three points to any other three. Since the gasket is activated by its initial ideal triangle, and since the procedure at each step consists in adding incircles, a Möbius map which conjugates one ideal triangle to another carries the whole gasket along in its wake.

This explains why it makes sense to talk about the Apollonian gasket, because up to conjugation by Möbius maps there is really only one.
:::

我们此前的讨论似乎一直都默认了阿波罗尼奥斯垫片是独一无二的，但如果我们从不同的初始相切圆链出发，难道不会得到不同的垫片吗？答案是否定的。事实上，任何由三个相切圆组成的链，都可以通过某个莫比乌斯变换转化为另一组（事先给定的）相切圆链。如 [项目 7.1](#proj-7.1) 中的推导所示，这一结论的根本原因在于：在复平面上，任意三个不同点总能通过某个莫比乌斯变换映射到任意其它三点。由于垫片的构造源于其初始理想三角形，而每一步的操作都是添加内切圆，因此将一个理想三角形共轭到另一个理想三角形的莫比乌斯变换，会将整个垫片一同带动并映射过去。

这就解释了为什么谈论“阿波罗尼奥斯垫片”是有意义的，因为在莫比乌斯变换的共轭意义下，归根结底，阿波罗尼奥斯垫片只有一个。

![Figure 7.5. The strip gasket. This shows the gasket as it appears when we conjugate so that the extra tangency point of $C_b$ and $C_B$ is at $\infty$. Any parabolic with a fixed point at $\infty$ is a Euclidean translation, in this case $b(z)=z+2$, which explains the translational symmetry along the infinite strip. \
图 7.5. 带状垫片。图中展示了当我们进行共轭变换，使得 $C_b$ 和 $C_B$ 的额外切点位于 $\infty$ 处时，垫片的样貌。任何以 $\infty$ 为不动点的抛物型变换都是欧几里得平移，在本例中为 $b(z)=z+2$，这解释了沿着无限带的平移对称性。](/images/indra/fig-7.5.jpg){width=600 #fig-7.5}

另一个著名的垫片版本可以在 [图 7.5](#fig-7.5) 中看到。为了得到这个，我们进行了共轭，使得 $C_a$ 和 $C_A$ 在 0 处相切，因此它们是垂直线。映射 $a$ 和 $b$ 现在在 $0$ 处有一个固定点。该群的生成元为：

$$a=\begin{pmatrix}2&-i\\-i&0\end{pmatrix}\quad\text{and}\quad b=\begin{pmatrix}1&2\\0&1\end{pmatrix}.$$

## Pinching tiles

![Figure 7.6. Dr. Stickler meets Apollonius. Placing Dr. Stickler in the Apollonian gasket, we let the group of symmetries carry him around. He appears exactly in those disks which were pink in Figure 7.4. If we had started him off in a white one, his images would fill the white disks instead. The symmetry $a$ is parabolic and on both sides of its fixed point 0, circles of Sticklers are streaming out. A startling feature is the circle of Sticklers streaming out from and into 1. Every alternate Stickler is standing on his head! The upright Sticklers are just powers of $abAB$
(which fixes 1) applied to the Stickler standing on the right hand horizontal axis, while the upside down ones are the images of this same Stickler under $(abAB)^nA$. \
图 7.6. Stickler 博士邂逅阿波罗尼奥斯分形。我们将 Stickler 博士置于阿波罗尼奥斯垫片中，然后让对称群带他四处转转。结果，他恰好出现在 [图 7.4](#fig-7.4) 里那些粉红色的圆盘中。若是他最初出现在某个白色圆盘中，那么他的身影就会填满所有的白色圆盘。对称 $a$ 是抛物型的，在它的不动点 0 的两侧，成群的 Stickler 博士正沿着圆圈向外扩散。最令人惊奇的是，在坐标 1 附近，竟然出现了一圈 Stickler 博士首尾相连、双向流动的奇妙图案。更绝的是，相邻的 Stickler 博士还头朝上、头朝下交替出现。那些站得笔直的 Stickler 博士，是通过不断对右侧水平轴上那位 Stickler 施加变换 $(abAB)^n$（该变换以 1 为不动点）得到的。而那些倒立的 Stickler 博士，则是这位 Stickler 在变换 $(abAB)^nA$ 作用下的映射结果。](/images/indra/fig-7.6.jpg){width=600 #fig-7.6}

:::{.simple}
Figure 7.6 is a wonderful picture of what happened when we introduced Dr. Stickler to Apollonius! It is a pretty intricate arrangement, so let’s take a bit of time understanding what has happened to the tiles. To get a grasp on the situation, look back at the three pictures in Figure 7.4, and watch the progression across the three frames. On the left the limit set is a loop or quasicircle, so the ordinary set - what is left when you take away the limit set - has two parts, a pink inside and a white outside. In the central picture, the pink part has collapsed into a myriad of tangent disks, and the red Schottky circles $C_a$ and $C_A$ touch at 0. On the right, the gasket group, the ‘horns’ of the pink region have also come together, causing the white outside to fracture into disks as well. Notice how the memory of which was inside and which was outside still persists, because what were the ‘inside’ disks are pink while the ‘outside’ ones are white.
:::

[图 7.6](#fig-7.6) 是一幅精彩的画面，生动展现了当我们邀请 Stickler 博士探索阿波罗尼奥斯分形时所发生的奇妙事情！图中的结构相当复杂，因此我们不妨花些时间，仔细剖析图案的变化。要理解这一过程，不妨回顾 [图 7.4](#fig-7.4) 的三幅子图，并观察这三帧之间的演变：左图中的极限集是一个回路或拟圆，因此普通集（即去掉极限集后剩下的部分）分为粉色的内部和白色的外部。中间的图中，粉色区域已收缩成无数相切的圆盘，而红色的肖特基圆 $C_a$ 和 $C_A$ 在 0 处相切。右图则展示了垫片群，其中粉色区域的“触角”也汇聚在一起，使得白色外部区域也裂解成圆盘。令人惊奇的是，尽管整体结构支离破碎，内外区域仍清晰保留着原始的记忆——曾经“内部”的圆盘依旧是粉色，而“外部”的圆盘依旧是白色。

:::{.simple}
In each picture, the initial Schottky circles are blue and red. Watch them to follow the fate of the tiles. On the left, as usual for a kissing Schottky group, they surround the central inner four sided tile. If we transported this tile around by the group, we would see a tessellation　of the pink region similar to the one in Figure 6.6. (There is also an outer tile, the region outside the four Schottky circles, which as usual you can see more clearly by imagining it on the Riemann sphere.) The inner and outer parts of the ordinary set are invariant under the group, so if you apply any transformation of the group to any tile in the pink region ‘inside’ the limit set, you get another tile which is also ‘inside’.
:::

在每幅图中，最初的 Schottky 圆分别是蓝色和红色。仔细观察它们的变化，有助于追踪瓷砖的去向。在左图中，和典型的“亲吻” Schottky 群一样，这些圆环绕着中央的四边形瓷砖。如果我们将这块瓷砖沿着群的变换移动开来，就会在粉色区域中形成类似于 [图 6.6](#fig-6.6) 的镶嵌图案（此外，还有一个外部瓷砖，即位于四个 Schottky 圆之外的区域，通常，通过在黎曼球面上想象它的位置，可以更清楚地看到它的轮廓）。普通集的内部和外部在群作用下各自保持不变，因此，如果对极限集“内部”粉色区域中的某块瓷砖施加群中的某个变换，得到的仍会是另一块位于“内部”的瓷砖。

:::{.simple}
In the central picture, where $a$ has become parabolic, the inner tile has been pinched into two halves. Each half-tile is an ideal triangle, with two red sides and one blue. You should think of this pair of triangles as one composite two-part tile. Moved around by the group, the composite tile will cover all the pink circles. There is an outer tile in this picture too, which (on the Riemann sphere) remains in one piece.

On the right, in the gasket group, both $a$ and $b$ have been pinched so that now $C_b$ and $C_B$ also tuch at $-i$. Now there are four basic half-tiles. The two pink ones will produce a tiling of the pink circles and the white ones will make a tiling of the white circles. In the glowing gasket picture, these four tiles are black. The upper two ‘horizontal’ ideal triangles are the remnants of the inner Schottky tile, while the lower ‘vertical’ triangle is a remnant of the outer one. If you look carefully, you can just see its twin peeping out in the bottom centre of the page.
:::

在中央的图片中，$a$ 已变成了抛物型，内部的瓷砖被挤压成了两半。每个半瓷砖都是一个理想三角形，带有两条红边和一条蓝边。你可以把这对三角形视作一个由两部分组成的复合瓷砖。通过群的作用，这个复合瓷砖将覆盖所有的粉色圆盘。图中还有一个外部瓷砖，它在黎曼球面上依然保持完整。

在右侧的垫片图中，$a$ 和 $b$ 都被挤压变形，使得 $C_b$ 和 $C_B$ 现在也在 $-i$ 处相切。此时出现了四个基本的半瓷砖。两块粉色的会铺满粉色圆盘，而两块白色的则会铺满白色圆盘。在那幅发光的垫片图中，这四块瓷砖都呈现为黑色。上方的两个“水平”理想三角形是内部 Schottky 瓷砖的残迹，而下方的“垂直”三角形则是外部瓷砖的残迹。仔细观察，你会在页面底部中央隐约发现它的孪生兄弟正悄悄探出头来。

:::{.simple}
Now we can go back to the picture of Dr. Stickler meeting Apollonius. The party is taking place in the remnants of the ‘pink’ circles. If you compare with the half-tiles in Figure 7.4, something rather odd has happened to Dr. Stickler - when the original tile split in two, his head ended up in the green half-tile and his feet in the blue one. Fortunately, there is a transformation of the group (namely $B$) which carries the blue Stickler to the green one, moving the blue half-tile containing the blue feet to the yellow half-tile containing the green feet. Had we not pointed out his difficulties you might not even have noticed that anything was wrong. After gluing the yellow half-tile to the green halftile, the relieved (but still slightly greenish) Dr. Stickler stands reunited in a new and complete tile whose images under the group map to all the Sticklers in the picture.
:::

现在我们可以回到 Stickler 博士与阿波罗尼奥斯相遇的画面。聚会正在“粉色”圆圈的残迹中举行。对照 [图 7.4](#fig-7.4) 中的半瓷砖，你会发现 Stickler 博士身上发生了一件相当奇怪的事——当原始瓷砖裂成两半时，原始瓷砖裂成两半时，他的头跑到了绿色半瓷砖里，而他的脚却留在了蓝色半瓷砖上。幸好，群中有一个变换（即 $B$）可以将蓝色的 Stickler 带到绿色 Stickler 的位置，把装着蓝色脚丫的蓝色半瓷砖挪到装着绿色脚丫的黄色半瓷砖上。要不是我们特意指出这种窘况，你可能根本没发现哪里不对劲。等到黄色半瓷砖和绿色半瓷砖粘合完毕，那位如释重负（却仍然带着一丝“绿意”）的 Stickler 博士终于又完整地站在了一块崭新的瓷砖上。通过群的映射，这块瓷砖的影像铺展开来，构成了画面中所有 Stickler 博士的身影

## And pinching surfaces

:::{.simple}
What happened to the tiles in the last section, has, of course, also an interpretation in terms of surfaces. Looking back to the picture on p. 190 which showed how tiles were glued up in a kissing Schottky group, we can work out what happens when we bring the four circles together to make the gasket. It takes a bit of stretching and squeezing to do this, which we have illustrated in Figure 7.7.

The result, shown in the last panel, is our old friend the pretzel with three circles pinched to points or cusps: the waist as in the last chapter and, in addition, loops around the top and bottom tori. Both top and bottom are now ‘spheres’ with three cusps or punctures each. One pair of cusps on each sphere are joined together like ‘horns’, and these two ‘horned spheres’ are themselves joined together at the last two cusps.
:::

上一节中瓷砖的变化，当然也可以从曲面的角度来理解。回顾第 190 页的图片，我们看到在一个接吻 Schottky 群中，瓷砖是如何拼接在一起的。现在，如果我们将四个圆逐渐拉进，直至它们组成一个垫片，就能揭晓瓷砖在这一过程中经历了什么。这个过程需要对图形进行一定的拉伸和压缩，我们在 [图 7.7](#fig-7.7) 中对此做了直观的展示。

最终的结果出现在最后一幅图中，那正是我们熟悉的三叶椒盐脆饼造型——三个圆被“捏”成了点，或者说尖点：一个位于“腰部”，正如上一章所描述的；此外，还有两个环绕在顶部和底部的圆环。现在，顶部和底部都变成了带有三个尖点或穿孔的“球面”。每个球面上的一对尖点彼此连接，宛如长出了一对“犄角”，而这两个“带角的球面”又通过它们各自的最后一对尖点互相连接。


## Tiling the inner disks

:::{.simple}
Figure 7.6 is made up of lots of disks full of Dr. Sticklers, each tiled by ideal triangles shown in grey. These disks are the remnants of the pink region in Figure 7.4. For most of the rest of this chapter, we shall be occupied with the tiling of just one of these disks. The same tiling fills out the insides of each of the glowing circles in Figure 7.3. The group of symmetries which goes with this very special disk tessellation is called the modular group and has been the well-spring of a huge body of mathematics.
:::

[图 7.6](#fig-7.6) 由无数布满 Sticklers 博士身影的圆盘构成，每个圆盘都被灰色的理想三角形所镶嵌。这些圆盘正是 [图 7.4](#fig-7.4) 中粉色区域的遗迹。在本章接下来的大部分篇幅里，我们将专注于研究其中一个圆盘的密铺结构。同样的密铺图案也出现在 [图 7.3](#fig-7.3) 中每个发光圆圈的内部。这种独特的圆盘镶嵌的对称群称为模群，它一直是众多数学成果的源泉。


:::{.simple}
Since the tiling in each disk is the same, we may as well focus on the large disk through -1 and 0, shown in yellow in Figure 7.8. To understand how these ideal triangle tiles cover the yellow disk we need to find the subgroup of all the transformations in the gasket group which map the inside of this disk to itself. This subgroup (which is of course also a group in its own right), or any of its conjugates, is what we call the modular group. The basic tile is made up of two ideal triangles, the ones coloured green and yellow in Figure 7.6. The two triangles together form one of our familiar four-sided pinched-off tiles with four circular arc sides. Moved around by the modular group, they tile the whole yellow disk.
:::

由于每个圆盘中的密铺方式相同，我们可以将注意力集中在通过 -1 和 0 的大圆盘上，这在 [图 7.8](#fig-7.8) 中以黄色部分表示。为了理解这些理想三角形如何覆盖黄色圆盘，我们需要找出垫片群中所有将圆盘内部映射到自身的变换子群。这个子群（显然，它本身也是一个群），或者它的任何共轭子群，便是我们所称的模群。基本的瓷砖由两个理想三角形组成，即 [图 7.6](#fig-7.6) 中绿色和黄色的三角形。这两个三角形合在一起，构成了我们熟悉的四边弧形瓷砖。通过模群的作用，它们密铺了整个黄色圆盘。

![Figure 7.8. The set-up of tangent circles for the modular subgroup. The left frame is just to get oriented. The red circles $C_A$ and $C_a$, together with the level 2 green circles $B(C_a)=C_{Ba}$ and $B(C_A)=C_{BA}$ form the boundary of the new four-sided tile. The arrows show how $a$ pairs $C_A$ to $C_a$ and $b$ pairs $C_B$ to $C_b$. The boundary of the yellow disk is the limit set of the modular group generated by $a$ and $BAb$. \
图 7.8. 模群的切线圆配置。左侧的框架仅用于帮助定位。红色圆圈 $C_A$ 和 $C_a$，以及二级绿色圆圈 $B(C_a)=C_{Ba}$ 和 $B(C_A)=C_{BA}$ 共同构成了新四边形瓷砖的边界。箭头指示了变换 $a$ 如何将 $C_A$ 和 $C_a$ 配对，变换 $b$ 如何将 $C_B$ 和 $C_b$ 配对。黄色圆盘的边界是由 $a$ 和 $BAb$ 生成的模群的极限集。](/images/indra/fig-7.8.jpg){width=600 #fig-7.8}


:::{.simple}
We worked out the labels of the boundary circles $C_a, C_A, C_{BA}$ and $C_{Ba}$ in Figure 7.8 of the four-sided tile by going to part of the level-two Schottky chain for the gasket group. (You may find it easiest to check the arrangement in a picture like the left frame of Figure 7.4 without all the extra gasket tangencies first.) Notice the four tangency points of these circles are all on the boundary of the yellow disk. As you can see, the four circles form a new chain of tangent circles. As usual, $a$ pairs $C_A$ to $C_a$. In addition, $BAb$ pairs $C_{Ba}$ to $C_{BA}$ because:

$$BAb\left(C_{Ba}\right) = BAb\left(B\left(C_a\right)\right) = BA\left(C_a\right) = B\left(C_A\right) = C_{BA}.$$
:::

我们通过研究垫片群的二级 Schottky 链的一部分，成功确定了 [图 7.8](#fig-7.8) 中四边形瓷砖的边界圆 $C_a,C_A,C_{BA}$ 和 $C_{Ba}$ 的标签。（你可能会发现，首先在像 [图 7.4](#fig-7.4) 左侧的子图中检查这些圆的排列，暂时忽略所有额外的垫片切点，会更容易理解）。值得注意的是，这些圆的四个切点都恰好位于黄色圆盘的边界上。正如你所见，这四个圆形成了一个新的切圆链。和往常一样，变换 $a$ 将圆 $C_A$ 和 $C_a$ 配对。此外，变换 $BAb$ 将圆 $C_{Ba}$ 和 $C_{BA}$ 配对，原因如下：
$$BAb\left(C_{Ba}\right) = BAb\left(B\left(C_a\right)\right) = BA\left(C_a\right) = B\left(C_A\right) = C_{BA}.$$

:::{.simple}
Inside the gasket group we have found another mini-chain of four tangent circles, together with a pair of transformations which match them together in pairs!

This construction shows that the modular group is a new kind of ‘necklace group’, made by disregarding all the rest of the gasket and looking only at the disks produced by acting with $a$ and $BAb$ on the four circles which bound the new tile. The new group is generated by the transformations $a$ and $BAb$. Indeed in Figure 7.3, you can actually pick out chains of image disks nicely shrinking down onto the glowing limit circle through -1 and 0 . The only difference from the kissing Schottky groups we met in the last chapter is that the two generators pair not opposite circles but adjacent ones. As we shall explain in more detail on p. 213 ff., the image circles shrink because $a,BAb$ and their product $aBAb$ are all parabolic.
:::

在垫片群中，我们发现了一个由四个相切圆组成的迷你链，以及一对将它们成对匹配的变换！

这一构造表明，模群是一种新型的“项链群”，它是通过忽略垫片的其余部分，仅关注由变换 $a$ 和 $BAb$ 作用于新瓷砖边界的四个圆所产生的圆盘而形成的。这个新群由变换 $a$ 和 $BAb$ 生成。实际上，在 [图 7.3](#fig-7.3) 中，你可以清晰地看到一串映像圆盘，它们逐渐缩小并收敛到通过点 -1 和 0 的发光极限圆上。与我们在上一章中遇到的亲吻 Schottky 群唯一的区别是，这两个生成元配对的不是相对的圆，而是相邻的圆。正如我们将在第 213 页及以后章节中详细解释的那样，这些映像圆之所以缩小，是因为 $a,BAb$ 以及它们的乘积 $aBAb$ 都是抛物型变换。


:::{.simple}
The same pattern of pairing circles is repeated all over the gasket. Every pink disk is the image of the yellow one under some element in the gasket group, which conjugates our modular group to another ‘modular group’ acting in the new disk. The white disks are different from the pink ones, because you can never get from pink to white using transformations in the gasket group. However you can still find a chain of four tangent circles matched in the same pattern, as described in [Project 7.4](#proj-7.4).
:::

垫片上重复着相同的圆配对模式。每一个粉色圆盘都是黄色圆盘在垫片群作用下的像，变换元素将我们的模群共轭成另一个“模群”，作用于新的圆盘上。白色圆盘与粉色圆盘不同，因为你无法通过垫片群中的变换从粉色圆盘转到白色圆盘。然而，你仍然可以找到一个按相同模式配对的四个相切圆的链，就如项目 7.4 中所描述的那样。

:::{.note}
**Note 7.1: Uniqueness of the modular group** \

**注 7.1：模群的唯一性**
:::


## The modular group of arithmetic

:::{.simple}
The result just discussed shows that the modular group is conjugate to a very famous group of great importance in number theory. It is made by arranging the four Schottky circles with their tangency points at $-1,0,1$ and $\infty$. You can see these, coloured red and green, in the left frame of Figure 7.9. Since one of the tangency points is the point at infinity, two of the circles show up as green vertical lines. These green lines are paired by $b=\begin{pmatrix}1&2\\0&1\end{pmatrix}$, while the two red circles tangent at 0 are paired by $a=\begin{pmatrix}1&0\\-2&1\end{pmatrix}$. Notice how $a$ and $b$ match adjacent circles in the chain in exactly the pattern of the red and green arrows in Figure 7.8. In fact, as you can easily calculate, $ab$ is the parabolic transformation $\begin{pmatrix}1&2\\-2&-3\end{pmatrix}$.
:::

刚刚讨论的结果表明，模群与一个在数论中极为著名且重要的群是共轭的。这个群是通过排列四个肖特基圆生成的，其切点分别位于 $-1, 0, 1$ 和 $\infty$。在 [图 7.9](#fig-7.9) 左侧的图中，你可以看到这些圆，它们分别被涂上了红色和绿色。由于其中一个切点是无穷远点，因此有两个圆在图中呈现为绿色的垂直直线。这些绿色直线由变换 $b=\begin{pmatrix}1&2\\0&1\end{pmatrix}$ 配对，而在原点 0 处相切的两个红色圆则通过变换 $a=\begin{pmatrix}1&0\\-2&1\end{pmatrix}$ 配对。请注意，变换 $a$ 和 $b$ 如何精确地按照 [图 7.8](#fig-7.8) 中红绿箭头所示的模式，将相邻的圆进行配对。事实上，通过简单的计算，你会发现 $ab$ 是一个抛物型变换 $\begin{pmatrix}1&2\\-2&-3\end{pmatrix}$。


![Figure 7.9. The modular tessellation of the upper half plane. The left frame shows the tiling or tessellation of the upper half plane by ideal triangles belonging to the smaller modular group coming from pairing tangent circles, while the right frame shows the richer tessellation associated to the full modular group with its added symmetries. Each tile on the left is subdivided into twelve tiles on the right. \
图 7.9. 上半平面的模群镶嵌。左图展示了通过配对相切圆生成的较小模块群所产生的理想三角形对上半平面进行的密铺或镶嵌；右图则展示了与完整模群相关的更加丰富的镶嵌及其附加对称性。左侧的每个瓦片在右侧被细分为十二个小瓦片。](/images/indra/fig-7.9.jpg){width=600 #fig-7.9}

:::{.simple}
It is no coincidence that the entries of these three matrices are integers. The right frame of Figure 7.9 is a more complicated picture which shows all the symmetries of the tiling on the left. Each ideal triangle has been subdivided into three hatched and three unhatched sub-triangles. (The sub-triangles are not quite ideal, because only one of their angles is 0 .) The group of symmetries of this more complicated tiling is, from the point of view of Möbius maps, the simplest group of all: just the set of all $2\times 2$ matrices $\begin{pmatrix}p&q\\r&s\end{pmatrix}$ with integer entries $p,q,r$ and $s$ and determinant $ps-qr$ equal to 1. To distinguish from the group of the left frame, we sometimes call it the full modular group. The matrices in the (smaller) modular group of the left picture are just those matrices with integer entries for which $q$ and $r$ are even and $p$ and $s$ are odd. 
:::

这三个矩阵的元素都是整数，这绝非巧合。[图 7.9](#fig-7.9) 的右边展示了一个更为复杂的画面，展现了左侧镶嵌图案的所有对称性。每个理想三角形都被细分为三个带阴影和三个不带阴影的子三角形。（这些子三角形并不完全是理想的，因为它们只有一个角为 0。）从莫比乌斯变换的角度来看，这个更复杂的镶嵌的对称群是所有对称群中最简单的：也就是所有元素为整数且行列式 $ps-qr$ 等于 1 的 $2\times2$ 矩阵 $\begin{pmatrix}p&q\\r&s\end{pmatrix}$ 的集合。为了与左边图的群区分开来，我们有时称其为全模群。左侧图中（较小的）模群的矩阵仅指那些元素为整数且 $q$ 和 $r$ 为偶数、$p$ 和 $s$ 为奇数的矩阵。

:::{.simple}
There is a very beautiful connection between the modular tessellation and fractions: the points where the ideal triangles meet the real axis are exactly the rational numbers. Although it is something of a digression here, we want to take the time to explain the pattern, which turns out to be indispensible when we come to map making in Chapter 9.
:::

模镶嵌与有理数之间有着极为精妙的联系：理想三角形与实轴交点恰恰是有理数。虽然这一内容在此略显偏离主题，但我们希望花些时间来阐明这个规律，因为它在第 9 章的制图过程中将变得至关重要。

![Figure 7.10. The modular tiling from our ancestral home. The tessellation generated by the full modular group, conjugated over to the unit disk. This beautiful rendition is Figure 35 in Vol. 1 of Vorlesungen äber elliptischen Modulfunctionen by Klein and Fricke. \
图 7.10. 来自我们祖居的模密铺。由完整模群生成的镶嵌图案，经共轭映射到单位圆盘上。这幅美丽的图像是克莱因和弗里克所著《椭圆模函数讲义》第一卷中的图 35。](/images/indra/fig-7.10.jpg){width=600 #fig-7.10}

![Figure 7.11. The largest ideal triangle tiles in the modular tessellation and their vertices. The word immediately above (i. e. just outside) a Schottky circle is its label. For example, from left to right the level 2 circles shown are $C_{nb}, C_{aB}, C_{au}, C_{AA}, C_{Ab}, C_{AB}$ and $C_{ba}$. For more discussion of the labelling, see the next section. \
图 7.11. 模式镶嵌中最大的理想三角形瓦片及其顶点。紧挨在 Schottky 圆外侧的文字表示该圆的标签。例如，从左至右，第 2 级圆依次为 $C_{nb}, C_{aB}, C_{au}, C_{AA}, C_{Ab}, C_{AB}$ 和 $C_{ba}$。关于标签的详细讨论，请参见下一节。](/images/indra/fig-7.11.jpg){width=600 #fig-7.11}


:::{.simple}
Figure 7.11 shows the first few levels in the modular tessellation. The basic tile is the four-sided region, called an ideal quadrilateral, which was bounded by the coloured lines in Figure 7.9. Images of this ideal quadrilateral are shown bounded by solid arcs. The dotted arcs divide them into the two ideal triangles which we saw, half hatched and half white, on the left in Figure 7.9. As the group acts on the basic tile, we get more and more smaller and smaller tiles nesting down to the real axis. The vertices of all these tiles meet the real axis in points which are all fractions. Several things can be read off from a careful examination of this intricate pattern:

+ All vertices of the tiles are rational numbers $p/q$.
+ If $r/s$ and $p/q$ are two vertices of the same tile, then $ps - rq = \pm 1$.
+ If $r/s < p/q$ are the outer two vertices of a tile, then the third vertex between them is $(r + p)/(s + q)$.

Check this out! For instance, between $2/3$ and $1/2$, we get $(2 + 1)/(3 + 2)$, that is $3/5$. 
:::

[图 7.11](#fig-7.11) 展示了模镶嵌的前几层。基本瓷砖是一个四边形，称为理想四边形，它由 [图 7.9](#fig-7.9) 中的彩色线条所界定。这个理想四边形的图像通过实线弧显示，而虚线弧则将其分割成两个理想三角形，这两个三角形在 [图 7.9](#fig-7.9) 左侧展示，一半带阴影，一半为空白。随着群作用于基本瓷砖，越来越多、更小的瓷砖不断嵌套，直到它们沿着实轴延伸。所有这些瓷砖的顶点都与实轴相交，这些交点全是分数。仔细观察这个复杂的图案，我们可以得出以下几个结论：

+ 所有瓦片的顶点都是有理数 $p/q$。
+ 如果 $r/s$ 和 $p/q$ 是同一瓦片的两个顶点，则 $ps - rq = \pm 1$。
+ 如果 $r/s < p/q$ 是瓷砖的两个外顶点，那么它们之间的第三个顶点是 $(r + p)/(s + q)$。

看看这个！例如，在 $2/3$ 和 $1/2$ 之间，我们得到 $(2 + 1)/(3 + 2)$，即 $3/5$。

:::{.simple}
It's easy to see why this happens. As we have seen, a typical matrix in the modular group will look like

$$M = \begin{pmatrix} p & q \\ r & s \end{pmatrix}$$

where $p, q, r$ and $s$ are integers and $ps - rq = 1$. If $M$ acts on the vertices of the initial triangle with vertices $0 = 0/1, 1 = 1/1$ and $\infty = 1/0$, then we get the new triangle with vertices $M(0) = r/s, M(\infty) = p/q$ and $M(1) = (p + r)/(q + s)$. Assuming all four entries are positive, we have $r/s < (p + r)/(q + s) < p/q$ (you can see this by multiplying out). This is just what we found in Figure 7.11. If $p, q, r, s$ are not all positive, there are half a dozen other cases in which the order of the points $M(0), M(1)$ and $M(\infty)$ is different but we get the same result. The same thing happens if we start from the other triangle $M(-1), M(0), M(\infty)$.
:::

这背后的原因很容易理解。正如我们所见，模群中的一个典型矩阵的形式为
$$M = \begin{pmatrix} p & q \\ r & s \end{pmatrix},$$
其中 $p, q, r$ 和 $s$ 是整数，且满足 $ps - rq = 1$。如果矩阵 $M$ 作用于初始三角形的顶点，初始三角形的顶点分别是 $0 = 0/1, 1 = 1/1$ 和 $\infty = 1/0$，那么变换后的新三角形的顶点将为 $M(0) = r/s, M(\infty) = p/q$ 和 $M(1) = (p + r)/(q + s)$。假设这四个数值都是正数，我们可以得到不等式 $r/s < (p + r)/(q + s) < p/q$（通过乘法可以验证这一点）。这正是我们在 [图 7.11](#fig-7.11) 中看到的情况。如果 $p, q, r, s$ 并非全为正数，仍然有几种不同的情况，其中 $M(0), M(1)$ 和 $M(\infty)$ 的顺序会不同，但结果依然相同。如果我们从另一个三角形 $M(-1), M(0), M(\infty)$ 开始，同样的现象也会发生。

:::{.simple}
Any two fractions $r/s$ and $p/q$ such that $ps - qr = \pm 1$ are called neighbours. Thus any two vertices of an ideal triangle in the modular tessellation are neighbours. If $p/q$ is a fraction, then, as we explain in Project 7.5, the process of finding its neighbours is essentially Euclid’s two thousand year old algorithm for finding the highest common factor of two numbers, surely one of the most useful and clever algorithms of all time. The rule for finding the ‘next’ point $\frac{p+r}{q+s}$ between two neighbours is every student’s dream of what addition of fractions should be. This simple form of fraction ‘addition’ is sometimes called Farey addition’, which one might want to symbolise with a funny symbol like:

$$
\frac{p}{q} \oplus \frac{r}{s} = \frac{p + r}{q + s}
$$

Farey addition gives a neat way of organising the rational numbers. Instead of the usual way of arranging them in increasing order (which is difficult, because you never know which one should come ‘next’), fractions can be described by a sequence of left or right moves, reflecting the choice at each stage of whether we choose the new pair of neighbours to the right, or the pair of neighbours to the left.
:::

任何两个分数 $r/s$ 和 $p/q$，若满足 $ps - qr = \pm 1$，则称它们为邻居。因此，模镶嵌中的理想三角形的任意两个顶点都是邻居。如果 $p/q$ 是一个分数，那么正如我们在项目 7.5 中所解释的那样，寻找其邻居的过程本质上就是欧几里得两千年前发明的用于求解两个数最大公约数的算法，这无疑是有史以来最有用且最巧妙的算法之一。计算两个邻居之间“下一个”点 $\frac{p+r}{q+s}$ 的规则，正是每个学生心目中理想的分数加法方式。这种简单的分数“加法”有时被称为“法雷加法”，人们可能会用一个有趣的符号来表示它，比如：
$$
\frac{p}{q} \oplus \frac{r}{s} = \frac{p + r}{q + s}
$$
法雷加法提供了一种巧妙的方式来组织有理数。与通常按递增顺序排列它们（这很困难，因为你永远不知道下一个应该是哪一个）不同，分数可以通过一系列左移或右移的操作来描述，这反映了我们在每一步中选择将新的邻居对放置在左边还是右边的决定。

:::{.simple}
For positive fractions, the starting point are the two fractions $0/1$ and $1/0$, which we can regard as special honourary neighbours because they are connected by a side of our initial triangle, the vertical imaginary axis. Farey addition gives the in-between fraction $0/1\oplus 1/0=1/1$.

Now we have a choice: go to the 'left' and look in the interval between 0 and 1, or go to the 'right' and look in the interval between 1 and $\infty$. Suppose we are aiming for the fraction $3/5$. Then we turn to the left and apply the Farey addition $0/1 \oplus 1/1 = 1/2$. At the next stage, we choose the right interval and Farey add to get $1/2 \oplus 1/1 = 2/3$. Finally, we choose the left interval and Farey add $1/2 \oplus 2/3 = 3/5$. An exactly similar procedure could be applied to home in on any fraction $p/q$. Our choice of left-right turns is a driving map: $3/5$ is given by the instructions 'left, right, left'. This arrangement of fractions and sequence of right-left moves is closely related to a way of writing fractions as what are called continued fractions, explained in Note 7.2.
:::

对于正分数，起点是两个分数 $0/1$ 和 $1/0$，我们可以把它们看作特殊的荣誉邻居，因为它们通过初始三角形的一条边——垂直的虚轴连接在一起。Farey 加法在它们之间给出了分数 $0/1 \oplus 1/0 = 1/1$。

现在我们面临选择：向左走，查看 0 到 1 之间的区间，还是向右走，查看 1 到 $\infty$ 之间的区间。假设我们目标是分数 $3/5$。于是我们向左转，应用 Farey 加法 $0/1 \oplus 1/1 = 1/2$。在下一步，我们选择右边的区间，通过 Farey 加法得到 $1/2 \oplus 1/1 = 2/3$。最后，我们再选择左边的区间，并使用 Farey 加法 $1/2 \oplus 2/3 = 3/5$。一个完全相同的过程可以用来逼近任何分数 $p/q$。我们选择的左右转向组成了一个驱动图：$3/5$ 是由“左、右、左”的指令给出的。这种分数的排列以及左右转向的序列与将分数表示为连分数的方式密切相关，这在注释 7.2 中有详细解释。


## The pairing pattern of the modular group

:::{.simple}
The modular group is a new kind of ‘necklace group’. It is still made by pairing four tangent circles, and the only difference from the kissing Schottky groups we met in the last chapter is that the generators pair not opposite circles but adjacent ones. Whenever we have an arrangement of paired tangent circles like this, something like the necklace condition on p. 168 must still be true, but because we are pairing the circles in a different pattern, we can expect that different elements must be parabolic to cause the image circles to shrink.
:::

模群是一种新型的“项链群”。它依然由四个相切的圆配对而成，与我们在上一章遇到的亲吻 Schottky 群的唯一区别在于，这次生成元配对的不是相对的圆，而是相邻的圆。每当我们遇到这样的相切圆配对排列时，类似于第 168 页上提到的“项链条件”仍然必须成立。不过，由于这次圆的配对模式不同，我们可以预期，只有某些不同的元素变成抛物型时，映像圆才会缩小。

:::{.simple}
With the notation of the figure beside Box 20, we have $a(P) = R$ and $b(R) = P$, so that the four tangency points of the circles are $S = \text{Fix}(a)$, $Q = \text{Fix}(b)$, $P = \text{Fix}(ba)$, and $R = \text{Fix}(ab)$. By similar reasoning to that in Chapter 6, in order for the image circles near $S$ and $Q$ to shrink, the generators $a$ and $b$ must be parabolic. Moreover, $ba$ must also be parabolic, to make the circles shrink at $P$. Notice that $ab$ and $ba$ are conjugate (since $b(ab)b^{-1} = ba$), so saying that $ab$ or $ba$ must be parabolic is really one and the same thing. The wonderful thing is, that as we proved in Note 7.1, all groups with these three elements parabolic are automatically conjugate. This is so important to us that we summarize it in Box 20.

Because the pattern of pairing circles is different, so is the arrangement in which the labelled circles are laid down in the plane. The Schottky circles in Figure 7.11 are labelled according to our usual rules, so for example, $C_{ba}$ still means the image of circle $C_a$ under the map $b$. However, if you look carefully, you will see that the order of the circles along the line is not the same as our original order round the boundary.
:::

根据图 20 旁边的图示，我们有 $a(P) = R$ 和 $b(R) = P$，因此圆的四个切点分别为 $S = \text{Fix}(a)$, $Q = \text{Fix}(b)$, $P = \text{Fix}(ba)$ 和 $R = \text{Fix}(ab)$。类似于第 6 章的推理，为了使靠近 $S$ 和 $Q$ 的像圆收缩，生成元 $a$ 和 $b$ 必须是抛物型的。此外，$ba$ 也必须是抛物型的，以确保圆在 $P$ 处收缩。注意到 $ab$ 和 $ba$ 是共轭的（因为 $b(ab)b^{-1} = ba$），所以说 $ab$ 或 $ba$ 必须是抛物型的实际上是同一回事。美妙之处在于，正如我们在注释 7.1 中证明的那样，所有这三个元素为抛物型的群自动共轭。这对我们来说非常重要，因此我们在图 20 中总结了这一点。

由于配对圆的模式不同，标记圆在平面上的排列方式也随之不同。图 7.11 中的 Schottky 圆按照我们通常的规则进行标记，例如，$C_{ba}$ 仍然表示圆 $C_a$ 在映射 $b$ 下的像。然而，如果你仔细观察，你会发现沿着这条线的圆的顺序与我们最初在边界上的顺序有所不同。