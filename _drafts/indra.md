**David W.'s story**. This is a book of a thousand beginnings and for a long time apparently no end. For me, though, the first beginning was in 1979 when my friend and fellow grad student at Harvard Mike Stillman told me about a problem that his teacher David Mumford had described to him: Take two very simple transformations of the plane and apply all possible combinations of these transformations to a point in the plane. What does the resulting collection of points look like?

**David Wright 的故事**。这是一本拥有千个开端且长久以来似乎没有结局的书。然而，对我来说，第一个开端是在 1979 年，当时我在哈佛的朋友兼研究生同学迈克·斯蒂尔曼向我讲述了他的老师大卫·芒福德向他描述的一个问题：取平面的两个非常简单的变换，并将这些变换的所有可能组合应用于平面上的一个点。由此产生的点集看起来像什么？

Of course, the thing was not just to think about the shapes but to actually draw them with the computer. Mike knew I was interested in discrete groups, and we shared a common interest in programming. Also, thanks to another friend and grad student Max Benson, I was alerted to a very nice C library for drawing on the classic Tektronix 4014 graphics terminal. The only missing ingredient was happily filled by a curious feature of a Harvard education: I had passed my qualifying exams, and then I had nothing else to do except write my doctoral thesis. I have a very distinct memory of feeling like I had a lot of time on my hands. As time has passed, I have been astonished to discover that that was the last time I felt that way.

当然，关键不仅在于思考这些形状，还要用计算机实际绘制出来。Mike 知道我对离散群感兴趣，而且我们在编程方面有着共同的兴趣。此外，多亏了另一位朋友兼研究生 Max Benson，我得知了一个非常棒的 C 语言库，用于在经典的 Tektronix 4014 图形终端上绘图。唯一缺失的元素，幸运地被哈佛教育的一个奇特特点所填补：我已经通过了资格考试，除了撰写博士论文外，别无他事可做。我清晰地记得当时感觉自己手头有很多时间。随着时间的流逝，我惊讶地发现，那是我最后一次有那种感觉。

Anyway, as a complete lark, I tagged along with David M. while he built a laboratory of computer programs to visualize Kleinian groups. It was a mathematical joy-ride. As it so happened, in the summer of 1980 , there was a great opportunity to share the results of these computer explorations with the world at the historic Bowdoin College conference in which Thurston presented his revolutionary results in three-dimensional topology and hyperbolic geometry. We arranged for a Tektronix terminal to be set up in Maine, and together with an acoustically coupled modem at the blazing speed of 300 bits per second displayed several limit sets. The reaction to the limit curves wiggling their way across the screen was very positive, and several mathematicians there also undertook the construction of various computer programs to study different aspects of Kleinian groups.

无论如何，作为一个完全随意的举动，我跟随 David M.一起，在他构建一个用于可视化 Kleinian 群的计算机程序实验室时参与其中。这是一次数学的欢乐之旅。碰巧的是，在 1980 年夏天，有一个绝佳的机会在历史性的鲍登学院会议上与全世界分享这些计算机探索的成果，当时 Thurston 在会上展示了他关于三维拓扑和双曲几何的革命性发现。我们安排了一台 Tektronix 终端在缅因州设立，并通过一个以每秒 300 比特的惊人速度工作的声耦合调制解调器，展示了几个极限集。屏幕上蠕动的极限曲线引起了非常积极的反应，在场的几位数学家也开始构建各种计算机程序来研究 Kleinian 群的不同方面。

That left us with the task of writing an explanation of our algorithms and computations. However, at that point it was certainly past time for me to complete my thesis. Around 1981, I had the very good fortune of chatting with a new grad student at Harvard by the name of Curt McMullen who had intimate knowledge of the computer systems at the Thomas J. Watson Research Center of IBM, thanks to summer positions there. After roping Curt in, and at the invitation and encouragement of Benoit Mandelbrot, Curt and David M. made a set of extremely high quality and beautiful black-and-white graphics of limit sets. I would like to express my gratitude for Curt’s efforts of that time and his friendship over the years; he has had a deep influence on my own efforts on the project.

这给我们留下了编写算法和计算解释的任务。然而，那时对我来说，完成论文的时间显然已经过了。大约在 1981 年，我有幸与哈佛大学一位名叫 Curt McMullen 的新研究生聊天。McMullen 对 IBM 托马斯·J·沃森研究中心的计算机系统有着深入的了解，这得益于他在那里担任的暑期职位。在 Curt 加入后，并在 Benoit Mandelbrot 的邀请和鼓励下，Curt 和 David M.制作了一系列极其高质量且美丽的黑白极限集图形。我想对 Curt 当时的努力以及多年来的友谊表示感激；他对我在该项目上的努力产生了深远的影响。

Unfortunately, as we moved on to new and separate institutions, with varying computing facilities, it was difficult to maintain the programs and energy to pursue this project. I would like to acknowledge the encouragement I received from many people including my friend Bill Goldman while we were at M.I.T., Peter Tatian and James Russell, who worked with me while they were undergraduates at M.I.T., Al Marden and the staff of the Geometry Center, Charles Matthews, who worked with me at Oklahoma State, and many other mathematicians in the Kleinian groups community. I would also like to thank Jim Cogdell and the Southwestern Bell Foundation for some financial support in the final stages. The serious and final beginning of this book took place when Caroline agreed to contribute her own substantial research work in this area and her expository gifts, and also step into the middle between the first and third authors to at least moderate their tendency to keep programming during our sporadic meetings to find the next cool picture. At last, we actually wrote some text.

遗憾的是，随着我们各自进入新的、不同的机构，计算设施各异，维持项目进展的程序和动力变得困难重重。我要感谢许多人的鼓励，包括我在麻省理工学院（M.I.T.）时的朋友比尔·戈德曼，以及彼得·塔蒂安和詹姆斯·拉塞尔，他们在 M.I.T.本科期间与我共事，还有阿尔·马登和几何中心的工作人员，查尔斯·马修斯，他在俄克拉荷马州立大学与我合作，以及克莱因群研究领域的众多数学家。我还要感谢吉姆·科格德尔和西南贝尔基金会在项目最后阶段提供的部分资金支持。这本书真正且最终的开端，是在卡罗琳同意贡献她在此领域的重大研究成果及她的阐述才能，并介入第一作者与第三作者之间，至少在我们零星的会议中调和了他们持续编程以寻找下一幅酷炫图片的倾向之后。终于，我们实际撰写了一些文字。

We have witnessed a revolution in computing and graphics during the years of this project, and it has been difficult to keep pace. I would also like to thank the community of programmers around the world for creating such wonderful free software such as TEX, Gnu Emacs, X Windows and Linux, without which it would have been impossible to bring this project to its current end.

在这个项目的几年里，我们见证了计算和图形领域的革命，跟上步伐一直很困难。我还要感谢世界各地的程序员社区，他们创造了如此出色的免费软件，如 TEX、Gnu Emacs、X Windows 和 Linux，没有这些软件，我们不可能将这个项目推进到目前的终点。

During the years of this project, the most momentous endings and beginnings of my life have happened, including the loss of my mother Elizabeth, my father William, and my grandmother and family’s matriarch Elizabeth, as well as the birth of my daughters Julie and Alexandra. I offer my part in these pictures and text in the hope of new beginnings for those who share our enjoyment of the human mind’s beautiful capacity to puzzle through things. Programming these ideas is both vexing and immensely fun. Every little twiddle brings something fascinating to think about. But for now I’ll end.

在这个项目的岁月里，我生命中最重大的结束与开始相继发生，包括失去了我的母亲伊丽莎白、父亲威廉，以及祖母兼家族女家长伊丽莎白，同时迎来了女儿朱莉和亚历山德拉的诞生。我以这些图片和文字献上我的部分，寄望于那些同样享受人类心智美丽解谜能力的人们能迎来新的开始。编程这些想法既令人烦恼又充满无穷乐趣。每一次小小的调整都带来引人入胜的思考。但此刻，我将暂且搁笔。

**Caroline’s story**. I first saw some of David M. and David W.'s pictures in the mid-80s, purloined by my colleague David Epstein on one of his periodic visits to the Geometry Center in Minneapolis. I was struck by how pretty they were - they reminded me of the kind of lace work called tatting, which in another lifetime I would have liked to make myself.


**Caroline 的故事**。我第一次看到 David·M 和 David·W 的一些照片是在 80 年代中期，是我的同事大卫·爱泼斯在定期访问明尼阿波利斯的几何中心时，某次顺手牵羊得来的。我被它们的美丽所震撼——它们让我想起了一种叫做梭织花边的手工艺品，在另一个生命里，我本希望自己能亲手制作。

:::{.note}
The shape of the boundary of the Teichmüller space of oncepunctured tori in Maskit’s embedding, Unpublished preprint.

在 Maskit 嵌入中，一次穿孔环面的 Teichmüller 空间边界的形状，未发表的预印本。
:::

I presumed that everyone else understood all about the pictures, and didn’t pay too much attention, until a little while later Linda Keen and I were looking round for a new project. I had spent many years working on Fuchsian groups (see Chapter 6), and was wanting something which would lead me in to the Kleinian realm where at that time it was all go, developing Thurston’s wonderful new ideas about three-dimensional non-Euclidean geometry (see Chapter 12). By that time, I had somehow got hold of Dave W.'s preprint
which described the explorations reported in Chapter 9. I suggested to Linda that it might fit the bill.

我原以为其他人都对这些图片了如指掌，所以没有太在意，直到不久后琳达·基恩和我正在寻找一个新项目。我多年来一直致力于研究 Fuchsian 群（见第 6 章），并渴望找到能引领我进入 Kleinian 领域的东西，那时那里正蓬勃发展，发展着瑟斯顿关于三维非欧几何的精彩新思想（见第 12 章）。那时，我不知怎么拿到了戴夫·W. 的预印本
，其中描述了第 9 章中报告的探索。我向琳达建议，这可能正合我们的需求。

The first year was one of frustration, staring at pictures like the ones in Chapter 9 without being able to get any real handle on what was going on. Then one morning one of us woke up with an idea. We tried a few hand calculations and it seemed promising, so we asked Dave W. to draw us a picture of what we called the ‘real trace rays’. What came back was a rudimentary version of the last picture in this book the one we have called ‘The end of the rainbow’. For me it was more like ‘The beginning of the rainbow’, one of the defining moments of my mathematical life. Here we were, having made a total shot in the dark, having no idea what the rays could mean, but knowing they had absolutely no right to be arranged in such a nice way. It was obvious we had stumbled on something important, and from that moment, I was hooked.

第一年是充满挫败感的一年，我们盯着像第 9 章中的那些图片，却无法真正理解其中的含义。然后有一天早上，我们中的一个人醒来时有了一个想法。我们尝试了一些手工计算，结果看起来很有希望，于是我们请戴夫·W.为我们绘制了一张我们称之为“真实轨迹射线”的图片。结果得到的是本书最后一张图片的初步版本，我们称之为“彩虹的尽头”。对我来说，这更像是“彩虹的开始”，是我数学生涯中的一个决定性时刻。我们当时完全是在黑暗中摸索，不知道这些射线可能意味着什么，但知道它们绝对没有理由以如此美妙的方式排列。显然，我们偶然发现了一些重要的东西，从那一刻起，我就被深深吸引住了。

For another year we struggled to fit the rays into the one mathematical straight-jacket we could think of, but it just didn’t quite work. One day, I ran into Curt McMullen and mentioned to him what we were playing with. ‘Real trace’, he pondered, ‘That’s the convex hull boundary’.’ And with that clue, we were off. What Curt had told us was that to understand the two dimensional pictures we had to look in threedimensional non-Euclidean space, real Thurston stuff, as you might say. Finally we were able to verify at least most of the two Dave’s conjectures theoretically.

又一年，我们努力将光线纳入我们所能想到的单一数学框架中，但效果并不理想。一天，我偶遇了 Curt McMullen，并向他提及了我们正在研究的内容。“实迹”，他沉思道，“那就是凸包的边界”。有了这一线索，我们豁然开朗。Curt 告诉我们，要理解这些二维图像，必须从三维非欧空间的角度去审视，可以说是真正的 Thurston 理论。最终，我们至少从理论上验证了两位 Dave 的大部分猜想。

When the 19th century mathematician Mary Somerville received a letter inviting her to make a translation, with commentary, of Laplace’s great book Mécanique Céléste, she was so surprised she almost returned the letter thinking there must have been some mistake. I suppose I wasn’t quite so surprised to get a letter from David M. asking me to help them write about their pictures, but it wasn’t quite an everyday occurrence either. Although I may perhaps write another book, I am unlikely ever again to have the chance to work on one which will be so much trouble and so much fun.

当 19 世纪的数学家玛丽·萨默维尔收到一封信，邀请她翻译并评论拉普拉斯的巨著《天体力学》时，她惊讶得几乎要退回信件，认为一定是出了什么差错。我想，收到大卫·M.的来信，请我帮忙撰写关于他们图片的文章时，我并没有那么惊讶，但这也不是日常之事。同样不太可能再发生了。尽管我或许还会再写一本书，但我不太可能再有这样的机会，去写一本如此麻烦又如此有趣的书了。

And don’t think this book is the end of the story. If you flick through you will see cartoons of a rather portly character gluing up pieces of rubber into things like doughnuts. In fact all our present tale revolves about ‘one-holed doughnuts with a puncture’. For the last few years, I have been trying to understand what happens when the doughnuts acquire more holes. The main thing I can report is - it’s a lot more complicated! But the same wonderful structures, yet more intricate and inviting, are out there waiting to be tamed.

别以为这本书就是故事的终点。如果你快速翻阅，会看到一个相当圆胖的角色正在将橡胶片粘合成类似甜甜圈的东西。实际上，我们目前的故事都围绕着“带有一个洞且被刺穿的甜甜圈”展开。过去几年里，我一直在试图理解当甜甜圈获得更多洞时会发生什么。我能报告的主要发现是——事情变得复杂多了！但同样奇妙的结构，更加错综复杂且引人入胜，正等待着被驯服。

I would like to thank the EPSRC for the generous support of a Senior Research Fellowship, which has recently allowed me to devote much time to both the mathematical and literary aspects of this challenging project.

我要感谢 EPSRC 对高级研究奖学金的慷慨支持，这使我最近能够投入大量时间于这一挑战性项目的数学与文学方面。

## 读者指南

This is a book which can be read on many levels. Like most mathematics books, it builds up in sequence, but the best way to read it may be skipping around, first skimming through to look at the pictures, then dipping in to the text to get the gist and finally a return to understand some of the details. We have tried to make the first part of each chapter relatively simple, giving the essence of the ideas and postponing the technicalities until later. The more technical parts of the discussion have been relegated to the Notes and can be skipped as desired. Material important for later reference is displayed in Boxes.

这是一本可以在多个层面上阅读的书籍。与大多数数学书籍一样，它按顺序构建内容，但最佳的阅读方式可能是跳跃式阅读，先快速浏览以查看图片，然后深入文本获取大意，最后再回头理解一些细节。我们努力使每章的第一部分相对简单，呈现思想的核心，而将技术细节延后讨论。讨论中较为技术性的部分被移至注释中，可根据需要跳过。对后续参考重要的材料则以方框形式展示。

The first two chapters, on Euclidean symmetries and complex numbers respectively, contain material which may be partially familiar to many readers. We have aimed to present it in a form suited to our viewpoint, at the same time introducing as clearly as possible and with complementary graphics the mathematical terminology which will be used throughout the book. Chapter 3 introduces the basic double spiral maps, called Möbius symmetries, on which all of our later constructions rest. From then on, we build up ever more complicated ways in which a pair of Möbius maps can interact, generating more and more convoluted and intricate fractals, until in Chapters 10 and 11 we actually reach the frontiers of current research. The entire development is summarised in the Road Map on the final page.

前两章分别讨论了欧几里得对称性和复数，其中包含的内容可能对许多读者来说部分熟悉。我们旨在以适合我们视角的形式呈现这些内容，同时尽可能清晰地介绍并辅以补充图形，这些数学术语将在整本书中使用。第三章介绍了基本的双螺旋映射，称为莫比乌斯对称性，这是我们后续所有构造的基础。从那时起，我们构建了越来越复杂的方式，使得一对莫比乌斯映射可以相互作用，生成越来越复杂和精细的分形，直到在第 10 章和第 11 章中，我们实际上触及了当前研究的前沿。整个发展过程在最后一页的路线图中进行了总结。

:::{.note}
For readers with mathematical training the best introduction may still be Lester Ford’s 1923 Automorphic Functions, Chelsea reprint, 1951.

对于有数学背景的读者来说，最好的入门书可能仍然是莱斯特·福特（Lester Ford）1923 年所著的《自守函数》（Automorphic Functions），1951 年切尔西出版社重印版。
:::

Words which have a precise mathematical meaning are in bold face the first time they appear. We have not always spelled out the intricacies of the precise mathematical definition, but we have also tried not to say anything which is mathematically incorrect. We have used a small amount of our own terminology, but in so far as possible have stuck to standard usage. Non-professional readers will therefore have to forgive us such terms as quasifuchsian and modular group, while readers with a mathematical training should be able to follow what we mean.

具有精确数学含义的词语在首次出现时以粗体显示。我们并未总是详细阐述精确数学定义的复杂性，但也尽量避免了说任何在数学上不正确的话。我们使用了一些自己的术语，但尽可能遵循了标准用法。因此，非专业读者需要原谅我们使用诸如“拟富克斯”和“模群”这样的术语，而受过数学训练的读者应该能够理解我们的意思。

The book is written as a guide to actually coding the algorithms which we have used to generate the figures. A vast set of further explorations is possible for those readers who invest the time to program. This is prime hacking country! Because we hope for a wide variety of readers with many different platforms at their disposal, we have sketched each step in ‘pseudo-code’, the universal programming pidgin.

本书作为实际编写算法的指南，这些算法用于生成图表。对于那些投入时间编程的读者来说，还有大量进一步的探索空间。这是黑客的乐园！因为我们希望拥有各种不同平台的广大读者能够理解，我们以“伪代码”这一通用编程简化语言概述了每一步。

Inevitably we have suppressed a good deal of relevant mathematics and anyone wishing to pursue these ideas seriously will doubtless sooner or later have to resort to more technical works. Actually there are no very accessible books about Kleinian group limit sets’, but there are plenty of texts which discuss the basics of symmetry and complex numbers. Some complex analysis books touch on Möbius maps and there is more in modern books on two-dimensional hyperbolic geometry. In the later part of the book we have cited a rather random collection of recent research papers which have important bearing on our work. These are absolutely not meant to be exhaustive, but should serve to help professional readers find their way round the literature.

不可避免地，我们省略了大量相关的数学内容，任何希望深入研究这些想法的人无疑迟早都需要参考更专业的著作。实际上，关于克莱因群极限集的可读性强的书籍并不多，但有许多讨论对称性和复数基础的教材。一些复分析书籍会涉及莫比乌斯映射，而在现代关于二维双曲几何的书籍中则有更多相关内容。在本书的后续部分，我们引用了一些与我们的工作密切相关的近期研究论文，这些引用并非详尽无遗，但应能帮助专业读者在文献中找到方向。

Finally our Projects need some comment. They can be ignored: we aren’t going to grade them or supply answers! Rather, we intend them as ‘explorations’ to tempt you if you enjoy the material and want to take it further. Some are fairly straightforward extensions or elucidations of material in the text and some involve open-ended questions for which there is no definite answer. A few are definitely research problems. Others again explain details which are needed for full understanding or verification of the more technical points in our story. We have to leave it to the reader to pick and choose which ones suit their taste and mathematical experience.

最后，我们的项目需要一些评论。它们可以被忽略：我们不打算对它们进行评分或提供答案！相反，我们打算将它们作为“探索”，如果你喜欢这些材料并想进一步研究，它们会吸引你。有些是文本中材料的相当直接的扩展或阐述，有些涉及开放式问题，没有明确的答案。少数肯定是研究问题。还有一些再次解释了理解或验证我们故事中更技术性细节所需的细节。我们必须让读者自行选择哪些适合他们的口味和数学经验。

## 致谢

We thank especially our cartoonist Larry Gonick for his uncanny ability to translate a complicated three-dimensional manipulation into an immediately evident cartoon. For historical background we are indebted to the St. Andrews History of Maths web site, tempered with many erudite details and healthy doses of scholarly scepticism from our friends David Fowler and Paddy Patterson. (All remaining errors, are, of course, our own.) Klein’s own book Entwicklung der Mathematikim 19. Jahrhundert has also been an important source. We have read the Hua-Yen Sutra in the translation The Flower Ornament Scripture by Thomas Cleary, Shambhala Publications, 1993, and quotations are reproduced here with thanks. We should like to thank the Mathematics Departments of Brown, Oklahoma State, Warwick, Harvard and Minnesota for their hospitality. We should like to thank the NSF through its grant to the Geometry Center and EPSRC from their Public Understanding of Science budget for financial support. Finally we should like to thank our publisher David Tranah of Cambridge University Press, without whose constant prodding and encouragement this book would almost certainly never have seen the light of day.


我们特别感谢我们的漫画家拉里·戈尼克（Larry Gonick），他拥有将复杂的三维操作转化为一目了然的漫画的神奇能力。对于历史背景，我们受益于圣安德鲁斯数学史网站，并结合了我们的朋友大卫·福勒（David Fowler）和帕迪·帕特森（Paddy Patterson）提供的许多博学细节和健康的学术怀疑态度。（当然，所有剩余的错误都是我们自己的。）克莱因（Klein）的著作《数学的发展》也是一个重要的来源。我们阅读了托马斯·克利里翻译的《华严经》（《花饰经》，香巴拉出版社，1993 年），并在此感谢其引用的再现。我们要感谢布朗大学、俄克拉荷马州立大学、华威大学、哈佛大学和明尼苏达大学的数学系给予的热情接待。我们还要感谢美国国家科学基金会（NSF）通过其对几何中心的资助，以及英国工程与自然科学研究理事会（EPSRC）从其公众理解科学预算中提供的资金支持。最后，我们要感谢剑桥大学出版社的出版人大卫·特拉纳，没有他不断的督促和鼓励，这本书几乎肯定无法问世。

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