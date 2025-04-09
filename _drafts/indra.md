# 引言

:::{.simple}
I have discovered things so wonderful that I was astounded … Out of nothing I have created a strange new world.

   --János Bolyai

我发现了一些如此奇妙的东西，令我震惊不已……我从无到有创造了一个奇异的新世界。
:::

With these words the young Hungarian mathematical prodigy Janos Bolyai, reputedly the best swordsman and dancer in the Austrian Imperial Army, wrote home about his discovery of non-Euclidean geometry in 1823. Bolyai’s discovery indeed marked a turning point in history, and as the century progressed mathematics finally freed itself from the lingering sense that it must describe only the patterns in the ‘real’ world. Some of the doors which these discoveries flung open led directly to new worlds whose full exploration has only become possible with the advent of high speed computing in the last twenty years.

年轻的匈牙利数学天才亚诺什·波约伊，据称是奥地利帝国军队中最出色的剑客和舞者，在 1823 年用这些话向家中写信，讲述了他对非欧几何的发现。波约伊的发现确实标志着历史上的一个转折点，随着世纪的推进，数学终于摆脱了必须仅描述“真实”世界模式的残余观念。这些发现所敞开的某些大门直接通向新世界，而对这些新世界的全面探索，直到近二十年来高速计算技术的出现才成为可能。

Paralleling the industrial revolution, mathematics grew explosively in the nineteenth century. As yet, there was no real separation between pure and applied mathematics. One of the main themes was the discovery and exploration of the many special functions (sines, cosines, Bessel functions and so on) with which one could describe physical phenomena like waves, heat and electricity. Not only were these functions useful, but viewed as more abstract entities they took on a life of their own, displaying patterns whose study intrigued many people. Much of this had to do with understanding what happened when ordinary ‘real’ numbers were replaced by ‘complex’ ones, to be described in Chapter 2.

与工业革命并行，数学在十九世纪经历了爆炸性的增长。当时，纯数学与应用数学之间尚未有真正的分野。其中一个主要主题是发现并探索众多特殊函数（如正弦、余弦、贝塞尔函数等），这些函数能够描述诸如波动、热和电等物理现象。这些函数不仅实用，而且作为更抽象的实体，它们自成一体，展现出许多令人着迷的模式。这些研究很大程度上与理解当普通的“实数”被“复数”取代时会发生什么有关，这将在第二章中详述。

A second major theme was the study of symmetry. From Mayan friezes to Celtic knotwork, repeating figures making symmetrical patterns are as ancient as civilization itself. The Taj Mahal reflects in its pool, floors are tiled with hexagons. Symmetry abounds in nature: butterfly wings make perfect reflections and we describe the tile pattern as a honeycomb. The ancients already understood the geometry of symmetry: Euclid tells us how to recognise by measurement when two triangles are congruent or ‘the same’ and the Alhambra displays all mathematically possible ways of covering a wall with repeating tiles.

第二个主要主题是对称性的研究。从玛雅浮雕到凯尔特结饰，构成对称图案的重复图形与文明本身一样古老。泰姬陵倒映在池水中，地面铺着六边形瓷砖。自然界中对称无处不在：蝴蝶翅膀呈现出完美的镜像，我们将瓷砖图案描述为蜂窝状。古人早已理解对称的几何学：欧几里得告诉我们如何通过测量识别两个三角形是否全等或“相同”，而阿尔罕布拉宫展示了所有数学上可能的用重复瓷砖覆盖墙壁的方式。

The nineteenth century saw huge extensions of the idea of symmetry and congruence, drawing analogies between the familiar Euclidean world and others like Bolyai’s new non-Euclidean universe. Around the middle of the century, the German mathematician and astronomer August Möbius had the idea that things did not have to be the same shape to identified: they could be compared as long as there was a definite verwandschaft or ‘relationship’ between every part of one figure and every part of the other. One particular new relationship studied by Möbius was inspired by cartography: figures could be considered ‘the same’ if they only differed by the kind of distortions you have to make to project figures from the round earth to the flat plane. As Möbius pointed out (and as we shall study in Chapter 3), these special relationships, now called Möbius maps, could be manipulated using simple arithmetic with complex numbers. His constructs made beautifully visible the geometry of the complex plane.

十九世纪见证了对称和全等概念的巨大扩展，将熟悉的欧几里得世界与鲍耶的新非欧几里得宇宙等世界进行了类比。
大约在世纪中叶，德国数学家和天文学家奥古斯特·莫比乌斯提出了一种观点，即物体不必形状相同才能被识别：只要一个图形的每一部分与另一个图形的每一部分之间存在明确的“关系”（verwandschaft），它们就可以进行比较。莫比乌斯研究的一种特殊新关系受到制图学的启发：如果图形仅因将圆形地球投影到平面时所需的扭曲而有所不同，则可以被视为“相同”。正如莫比乌斯所指出的（我们将在第 3 章中研究），这些特殊关系，现在称为莫比乌斯映射，可以通过复数的简单算术来操作。他的构造使复平面的几何学变得极为直观。

Towards the end of the century, Felix Klein, one of the great mathematicians his age and the hero of our book, presented in a famous lecture at Erlangen University a unified conception of geometry which incorporated both Bolyai’s brave new world and Möbius’ relationships into a wider conception of symmetry than had ever been formulated before. Further work showed that his symmetries could be used to understand many of the special functions which had proved so powerful in unravelling the physical properties of the world (see Chapter 12 for an example). He was led to the discovery of symmetrical patterns in which more and more distortions cause shrinking so rapid that an infinite number of tiles can be fitted into an enclosed finite area, clustering together as they shrink down to infinite depth.

在本世纪末，那个时代的伟大数学家之一，也是我们书中的英雄，费利克斯·克莱因，在埃尔朗根大学的一次著名演讲中提出了一个统一的几何概念，这一概念不仅融入了鲍耶的勇敢新世界和莫比乌斯的关系，还将对称性的概念扩展到了前所未有的广度。进一步的研究表明，他的对称性理论可以用来理解许多特殊函数，这些函数在揭示世界物理特性方面已被证明极为强大（参见第 12 章的例子）。他由此发现了对称模式，其中越来越多的扭曲导致收缩如此迅速，以至于无限数量的瓷砖可以嵌入到一个封闭的有限区域内，随着它们收缩到无限深度而聚集在一起。

It was a remarkable synthesis, in which ideas from the most diverse areas of mathematics revealed startling connections. Moreover the work had other ramifications which were not to be understood for almost another century. Klein’s books (written with his former student Robert Fricke) contain many beautiful illustrations, all laboriously calculated and drafted by hand. These pictures set the highest standard, occasionally still illustrating mathematical articles even today. However many of the objects they imagined were so intricate that Klein could only say:

这是一次非凡的综合，其中来自数学最不同领域的想法揭示了惊人的联系。此外，这项工作还有其他分支，这些分支在近一个世纪后才被理解。克莱因的书籍（与他的前学生罗伯特·弗里克合著）包含许多精美的插图，所有这些插图都是经过艰苦计算并手工绘制的。这些图片设定了最高标准，甚至今天偶尔仍用于数学文章的插图。然而，他们想象的许多对象如此复杂，以至于克莱因只能说：

> The question is … what will be the position of the limiting points. There is no difficulty in answering these questions by purely logical reasoning; but the imagination seems to fail utterly when we try to form a mental image of the result.
>
> 问题是……极限点的位置将会在哪里。通过纯逻辑推理来回答这些问题并不困难；但当我们试图在脑海中形成结果的图像时，想象力似乎完全失效了。

The wider ramifications of Klein’s ideas did not become apparent until two vital new and intimately linked developments occurred in the 1970 's. The first was the growing power and accessibility of high speed computers and computer graphics. The second was the dawning realization that chaotic phenomena, observed previously in isolated situations (such as theories of planetary motion and some electronic circuits), were ubiquitous, and moreover provided better models for many physical phenomena than the classical special functions. Now one of the hallmarks of chaotic phenomena is that structures which are seen in the large repeat themselves indefinitely on smaller and smaller scales. This is called self-similarity. Many schools of mathematics came together in working out this new vision but, arguably, the computer was the sine qua non of the advance, making possible as it did computations on a previously inconceivable scale. For those who knew Klein’s theory, the possibility of using modern computer graphics to actually see his ‘utterly unimaginable’ tilings was irresistible.

克莱因思想的更广泛影响直到 20 世纪 70 年代两个至关重要且紧密相连的新发展出现后才变得明显。首先是高速计算机和计算机图形学的日益强大和普及。其次，人们逐渐认识到，先前在孤立情况下观察到的混沌现象（如行星运动理论和某些电子电路）无处不在，而且为许多物理现象提供了比经典特殊函数更好的模型。如今，混沌现象的一个标志是，在大尺度上观察到的结构会在越来越小的尺度上无限重复自身，这被称为自相似性。许多数学流派在探索这一新视野时汇聚一堂，但可以说，计算机是这一进步不可或缺的条件，它使得在以前难以想象的规模上进行计算成为可能。对于那些了解克莱因理论的人来说，利用现代计算机图形学亲眼目睹他那“完全无法想象”的镶嵌图案，这种可能性是无法抗拒的。

Our frontispiece is a modern rendering of one of Klein’s new symmetrical worlds. In another guise, it becomes the The Glowing Limit shown overleaf. Peering within the bubbles, you can see circles within circles, evoking an elusive sense of symmetry alongside the self-similarity characteristic of chaos. Without the right mathematical language, though, it is hard to put one’s finger on exactly what this symmetry is. The sizes and positions of the circles in the two pictures are not the same: the precise verwandschaft between them results from the distortion allowed by a Möbius map.

我们的扉页是对克莱因新对称世界之一的现代诠释。换一种形式，它便成了对页所示的《发光界限》。窥视这些气泡内部，你可以看到圈中有圈，既唤起了难以捉摸的对称感，又体现了混沌特有的自相似性。然而，若缺乏恰当的数学语言，很难确切指出这种对称性究竟是什么。两幅图中圆圈的大小和位置并不相同：它们之间精确的关联源自莫比乌斯映射所允许的变形。

Klein’s tilings were now seen to have intimate connections with modern ideas about self-similar scaling behaviour, ideas which had their origin in statistical mechanics, phase transitions and the study of turbulence. There, the self-similarity involved random perturbations, but in Klein’s work, one finds self-similarity obeying precise and simple laws.

克莱因的镶嵌图案如今被视为与现代自相似缩放行为的概念密切相关，这些概念起源于统计力学、相变和湍流研究。在那里，自相似性涉及随机扰动，但在克莱因的工作中，人们发现自相似性遵循精确而简单的规律。