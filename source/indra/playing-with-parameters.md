---
title: "Playing with parameters"
subtitle: "The vision of Felix Klein"
date: 2025-01-23
url: "playing-with-parameters"
---
\DeclareMathOperator{\tr}{Tr}
\newcommand{\fix}{\mathrm{Fix}\,}


:::{.simple}
I could spin a web if I tried.' said Wilbur, boasting. 'Ive just never tried.'

‘Let’s see you do it,’ said Charlotte…

‘OK.’ replied Wilhur. ‘You coach me and I’t’ spin one. It must be a lot of fun to spill a web. How do I start?


“要是我愿意，我也能织网。”威尔伯吹嘘道，“只是我从来没试过。”

“那你来织一个给我们看看吧。”夏洛特说。

“好啊。”威尔伯答道，“你来指导我，我就织一个。织网一定很好玩。我该怎么开始呢？”
:::


:::{.simple}
As any mathematician who has revealed his (or her) occupation to a neighbour on a plane flight has discovered, most people associate mathematics with something akin to the more agonizing forms of medieval torture. It seems indeed unlikely that mathematics would be done at all, were it not that a few people discover the play that lies at its heart. Most published mathematics appears long after the play is done, cloaked in lengthy technicalities which obscure the original fun. The book in hand is unfortunately scarcely an exception. Never mind; after a fairly detailed introduction to the art of creating tilings and fractal limit sets out of two very carefully chosen Möbius maps, we are finally set to embark on some serious mathematical play. The greatest rewards will be reaped by those who invest the time to set up their own programs and join us charting mathematical territory which is still only partially explored.
:::

正如任何一位曾在飞机上向邻座透露自己职业的数学家都会发现的那样，大多数人对数学的印象，似乎与某种中世纪酷刑的痛苦体验无异。倘若不是有少数人发现了数学的核心妙趣，数学恐怕早已无人问津。大多数已发表的数学成果，往往是在趣味探索结束许久之后才浮出水面的，而那些冗长繁复的技术细节，往往掩盖了最初的乐趣。遗憾的是，手头的这本书也未能完全例外。不过，别担心——在颇为详尽地介绍了如何用两个精心挑选的莫比乌斯变换来构造密铺图案和分形极限集之后，我们终于可以开始一场真正的数学探险了。那些愿意投入时间亲手编写程序、与我们一道探索这片尚未完全揭示的数学版图的读者，定将收获最丰厚的回报。

:::{.simple}
All the limit sets we have constructed thus far began from a special arrangement of four circles, the Schottky circles, grouped into two pairs. For each pair, we found a Möbius map which moved the inside of one circle to the outside of the other. Our initial tile was the region outside these four circles. By iterating, we produced a tiling which covered the the plane minus the limit set, near which the tiles shrank to minute size. Depending on how we chose the initial Schottky circles, the limit set was either fractal dust, a very crinkled fractal loop we called a quasicircle or, in certain very special cases, a true circle.
:::

迄今为止，我们构造的所有极限集都源自四个圆的独特排列，这些圆被称为肖特基圆，分为两对。对于每一对圆，我们找到一个莫比乌斯映射，将一个圆的内部映射到另一个圆的外部。我们的初始瓷砖是这四个圆外部的区域。通过不断迭代，我们生成了一种密铺，覆盖了平面上除了极限集以外的区域，在极限集附近，瓷砖逐渐缩小至微不可见的尺寸。根据我们选择的初始肖特基圆的不同，极限集可能呈现为分形尘埃，或者是我们称之为拟圆的极度扭曲的分形环，亦或在某些极其特殊的情况下，成为一个真正的圆。

:::{.simple}
The problem with this approach is that it is just too time-consuming to set up the circles and maps which pair them. Free-spirited play shouldn’t be ruined by too much preparation. Why not throw the Schottky circles away, take any pair of $2\times 2$ matrices for our generators $a$ and $b$, run our limit point plotting program, and see what we get?

Hold on though - how exactly will this work? The shrinking disks were so reassuring, and the limit set was so comfortably nestled within them, that it is hard to see why we won’t get chaos in their absence. No matter, the worst that is likely to happen is that the hard disk crashes, so why not give it a try? Luckily, on p. 182 ff. we already upgraded the DFS code to remove the calculation of Schottky disks from the branch termination procedure. All we need do is take the plunge and run the very same algorithm for any pair of transformations $a$ and $b$.
:::

这个方法的弊端在于，设置这些圆及其配对映射实在太耗时了。自由随性的探索不应该被繁杂的准备工作束缚住手脚。为什么不干脆抛开 Schottky 圆，随便挑一对 $2 \times 2$ 矩阵作为我们的生成元 $a$ 和 $b$，然后直接运行极限点绘图程序，看看会蹦出什么结果呢？

不过，先别急——这真的行得通吗？那些嵌套收缩的圆盘曾给予我们清晰的秩序感，极限集恰如其分地安居其中。若失去这种结构约束，系统难道不会陷入混沌？但没关系，最糟糕的结果不过是硬盘崩溃罢了，那为什么不试试看呢？

幸运的是，在第 182 页及后续章节中，我们已经对 DFS 算法进行改良，去掉了分支终止判定中对 Schottky 圆盘的计算。我们所需要的，只有一股冲劲——运行同样的算法，随便选一对变换 $a$ 和 $b$，放手一试就好。

:::{.simple}
The reward is the glorious Figure 8.1! See intricate dance of spirals of two loxodromic transformations. This is a quasifuchsian group very different from the circle groups we met in Chapter 6. As usual, once  a certain feature appears, the Mobius transformations in the group transport it around. Theoretical knowledge is one thing, but it wasn't until we got our programs up and running that the first ever pictures of exploding spirals brought the reality home. The authors, and later the participants in 1980  Thurston Theory Conference at Bowdoin College, could not suppress their awe at the eerie glowing image  of the limit curve snaking its way across an old Tektronix terminal.

There's one question here you may be asking: how did we choose $a$ and $b$? The answer is, we built a machine. When engineers design a new sports car, do you really think they first test it by creeping down 
the driveway carefully at 5 miles per hour, then 10 miles per hour, and so on? Of course not; they push it madly through its paces to see how it drives. In order to carry out our explorations, we needed an  easy-to-use program so we could quickly test out all sorts of possible matrices. In the next section, we shall explain a recipe which allows us to easily make as many variants of pictures like this as we please. The recipe depends on just two complex numbers, the traces of $a$ and $b$. These will be our parameters; just feed them in and let the program fly. 

Actually you may get even greater satisfaction by varying the parameters continuously and watching the limit set writhing in response. For that, you will have to write another small program which plots a sequence of frames of limit sets whose parameters are just slightly changed step-by-step. Several people have done this, but stills are the best we can offer in a book. Jeff Brock offers some films of crawling limit bugs on his web page www.math.uchicago.edu/~brock. For the Macintosh, we recommend a program by Masaaki Wada called *OPTi*, available at vivaldi.ics.nara-wu.ac.jp/~wada. 
:::

奖励是辉煌的 [图 8.1](#fig-8.1)！看看两个斜驶变换螺旋的复杂舞蹈。这是一个与我们在第 6 章遇到的圆群截然不同的拟 Fuchs 群。像往常一样，一旦某个特征出现，群中的 Möbius 变换便会将其传递开来。理论知识是一回事，但直到我们的程序启动并运行，第一张爆炸螺旋的图片才让人真正感受到其中的魅力。作者们，以及后来参加 1980 年鲍登学院 Thurston 理论会议的与会者，无法抑制对极限曲线在老式 Tektronix 显示器上蜿蜒而出的那张诡异发光图像的敬畏。

接下来，你可能会有一个问题：我们是如何选择 $a$ 和 $b$ 的？答案是，我们构建了一台机器。当工程师设计一辆新跑车时，你真的认为他们会先以每小时 5 英里的速度小心翼翼地沿着车道缓慢测试，然后是每小时 10 英里，依此类推吗？当然不是；他们会毫不犹豫地将它推向极限，以各种速度行驶，观察它的驾驶表现如何。为了进行我们的探索，我们需要一个易于使用的程序，能够快速测试各种可能的矩阵。在下一节中，我们将解释一种方法，让我们轻松地制作出任意数量的此类图片变体。这个方法仅依赖于两个复数—— $a$ 和 $b$ 的迹。它们将作为我们的参数；只需输入它们，启动程序即可。

实际上，通过连续变化这些参数，并观察极限集随之扭动的反应，你可能会获得更多的满足感。为此，你需要编写另一个小程序，绘制一系列极限集的帧，每帧的参数逐步发生微小变化。已有一些人完成了这项工作，但在书中我们只能提供静态图像。Jeff Brock 在他的网站 www.math.uchicago.edu/~brock 上提供了关于极限虫爬行的电影。对于 Macintosh 用户，我们推荐 Masaaki Wada 开发的名为 OPTi 的程序，可以在 vivaldi.ics.nara-wu.ac.jp/~wada 上获取。


![Figure 8.1. Mating snails? The limit set of a group generated by two maps $a$ and $b$ with complex conjugate traces $t_a=1.87+0.1i$ and $t_b=1.87-0.1i$. This group is quasifuchsian because its limit set is a continuous loop which never crosses or meets itself. Curves like this are called Jordan curves: the celebrated Jordan Curve Theorem innocently states that every Jordan curve divides the plane into two parts, an ‘inside’ (gray) and an ‘outside’ (white). The proof of this seemingly obvious result is not easy. and this picture gives some idea of just how complicated a Jordan curve can be. We had to devise a handerafted algorithm to colour the inside. \
图 8.1 交配的蜗牛？由两个映射 $a$ 和 $b$ 生成的群的极限集，这两个映射具有复共轭迹 $t_a = 1.87 + 0.1i$ 和 $t_b = 1.87 - 0.1i$。该群是拟 Fuchsian 的，因为它的极限集是一个从不交叉或自交的连续环。这样的曲线被称为 Jordan 曲线：著名的 Jordan 曲线定理简单地指出，每一条 Jordan 曲线都将平面分成两个部分，一个“内部”（灰色）和一个“外部”（白色）。这个看似显而易见的结果的证明并不容易，而这张图也给我们展示了 Jordan 曲线可以复杂到什么程度。为了为内部着色，我们不得不设计一个手工制作的算法。](/images/indra/fig-8.1.jpg){width=500 #fig-8.1}


# Grandma's recipe

:::{.simple}
To make pictures, we need two Möbius maps $a$ and $b$, given by matrices
$$
a = \begin{pmatrix} a_1 & a_2 \\ a_3 & a_4 \end{pmatrix} \quad \text{and} \quad b = \begin{pmatrix} b_1 & b_2 \\ b_3 & b_4 \end{pmatrix}.
$$
Numerical inputs to a device or program are often called parameters. On the face of it, two matrices means eight complex numbers which means sixteen real numbers: that's quite a few! To build our ‘easy-to-use’ program, we need reduce the parameters to a minimum. We can get the number down to six by assuming that each matrix has determinant 1. We can further reduce the number by remembering that the interesting thing is to study groups up to conjugation. In practice this means that after we have studied one particular group $G$, we no longer need study any of the conjugate groups $hGh^{-1}$ for any conjugating Möbius map $h$ (apart of course from the fun of getting a quite different ‘view’ of the limit set). A definite choice among all the conjugate groups $hGh^{-1}$ is called a normalization for $G$.
:::

为了绘制图形，我们需要两个由矩阵表示的莫比乌斯映射 $a$ 和 $b$，它们分别由以下矩阵给出：
$$
a = \begin{pmatrix} a_1 & a_2 \\ a_3 & a_4 \end{pmatrix} \quad \text{and} \quad b = \begin{pmatrix} b_1 & b_2 \\ b_3 & b_4 \end{pmatrix}.
$$
设备或程序的数值输入通常被称为参数。从表面上看，两个矩阵意味着八个复数，即十六个实数：这已经不少了！为了构建我们“易于使用”的程序，我们需要将参数数目缩减到最少。通过假设每个矩阵的行列式为 1，我们可以将参数数减少到六个。我们还可以通过记住，研究群的共轭类才是关键，进一步减少参数数量。实际上，这意味着一旦我们研究了某个特定的群 $G$，我们就不再需要研究任何共轭群 $hGh^{-1}$，其中 $h$ 是任何共轭的莫比乌斯映射（当然，除非你想体验一下从完全不同的角度观察极限集的乐趣）。在所有共轭群 $hGh^{-1}$ 中做出明确的选择被称为对 $G$ 的归一化。


:::{.simple}
Choosing a particular normalization allows you to eliminate three further parameters, because there is always exactly one Möbius map which carries any three points to any other three. This means that you can prespecify the position of three points; for example, you might specify that the attracting fixed points of $a$, $A$ and $b$ are $0$, $1$, and $\infty$ respectively. This is exactly what we did on p. 207 when we proved that, up to conjugation, the modular group is unique. The upshot is that up to conjugacy, we should be able to reduce the number of complex parameters necessary to describe a two-generator group from eight to just three. The question is, which three? From our experience in the last two chapters, a good guess might be the three traces $\tr{a}$, $\tr{b}$ and $\tr{ab}$. These numbers don't change when you conjugate, moreover we have already seen in some special cases that, up to conjugation, they completely determine the group.

Our upgraded algorithm is going to work by moving systematically round the boundary of the word tree, plotting limit points in order when it detects they are close. This means that for the program to work reasonably efficiently, it will be best if the limit set is still, at least roughly speaking, a connected loop. In the situation of pairing opposite Schottky circles this happens provided all four basic commutators are parabolic with traces equal $-2$. As we saw on p. 189, we can arrange this by choosing $\tr{ab}$ to satisfy the Markov identity
$$
(\tr{a})^2 + (\tr{b})^2 + (\tr{ab})^2 = \tr{a} \tr{b} \tr{ ab}.
$$
:::


:::{.simple}
So for most of this chapter, we shall insist that $\tr{abAB} = -2$, or equivalently that our three parameters $t_a$, $t_b$ and $t_{ab}$ satisfy the Markov equation. Give or take some trouble with square roots, this reduces our parameter count from 3 to 2, namely $t_a$ and $t_b$. We shall give the name **parabolic commutator groups** to those groups in which $\tr{abAB} = -2$. They are also sometimes known as **once-punctured torus groups**, because of the topological picture on p. 190.

In Box 21 we have revealed Grandma's treasured family recipe for the specially normalized two-parameter family which we used for most of our own explorations.^1 The matrix entries of the two generators $a$ and $b$ are written down entirely in terms of the parameters $t_a$ and $t_b$, which you can set equal to any two complex numbers you care to choose. As you can see, the recipe is designed so that these numbers are the traces of $a$ and $b$. Among all possible normalizations and hence many different possible recipes she might equally well have tried, Grandma selected this one mixed with some special spices to make the pictures come out really nice. If you put in real values for $t_a$ and $t_b$, you get the group which pairs Schottky circles arranged in the pattern in frame (vi) on p. 176. The same formula gave us the generators for the Apollonian gasket on p. 201. There are some hints on how to verify that just knowing $t_a$ and $t_b$ really does fix the group in Project 8.4.
:::


:::{.simple}
Gosh, it's so easy; why is there any need to explain? As you can see, in the second step of her recipe Grandma arranged that $t_{ab}$ satisfies the Markov identity, thereby ensuring that $\tr{abAB} = -2$. We had better check that multiplying $a$ and $b$ gives the formula we have written down for $ab$, and that the determinants of $a$ and $b$ are both 1. You may wish to resort to your favourite symbolic algebra program, or, for the traditionalists, we recommend beginning with a good pile of blank scratch paper, copying the two matrices $a$ and $b$ carefully, and multiplying them out very slowly indeed.

All the groups made using Grandma's recipe have a rather beautiful symmetry, which Grandma felt was a very flavourful ingredient in her groups. You may notice that the diagonal entries in both $a$ and $ab$ are the same. This has the consequence, immediately noticeable in all our pictures, that the limit set of any group made using her recipe is symmetrical under the 180° rotation about the origin $O$. How this works is explained in Note 8.1.

Lastly, what about that mysterious number $z_0$ in the off-diagonal entries of $a$ and $ab$? Grandma could just have left it out of her recipes altogether, and then $z_0$ would have been none other than the fixed point of the commutator $abAB$. By conjugating by a map that moves $z_0$ to 1, Grandma has added a little extra style to her pictures. To get the hang of her recipe, you may like to work through Projects 8.1 and 8.2. 

:::


# Let's play (gently at first) 

:::{.simple}
To ensure all is working smoothly and to gain familiarity with what to expect from Grandma's recipe, we are going start our play rather gently with groups in which the traces of the generators $a$ and $b$ are 
both real.

Figure 8.2 shows the outcome of our first experiment. We made it by running the program many times, keeping the two traces $t_a$ and $t_b$ equal and real-valued, sliding down from the initial value 3 to the final value 2. These groups can be made by pairing tangent circles, and we have shown the Schottky circles. In the first three frames, the limit set is just the unit circle and the group is Fuchsian. The arcs rotate as the traces decrease until they reach the symmetrical position in frame (iii). You may recognize this picture - it is exactly the group in frame (vi) on p. 176. As we move past the symmetric position, something dramatic happens. The limit set crinkles up and the group has become quasifuchsian. As we keep moving, the lowermost limit points (these are actually the fixed points 6,B) become corners with evermore pronounced angles, until finally they come together like a crab's pincers, chopping the region enclosed by the limit set into a myriad of tiny disks. This last frame should look familiar too - we have arrived at our old friend the Apollonian gasket from Chapter 7! 

What happens if we decrease the traces just a little bit further and try $t_a = t_b = 1.9$? *Warning, warning, danger, danger*! The Schottky circles will start to overlap, and it becomes not at all clear what to expect. You can see what we are worried about in Figure 8.3. In this picture, we chose a pretty large cut-off value `epsilon = 0.1` in comparison to the frame size, 2.2 by 2.2. In contrast to the previous pictures, you can actually see the line segments drawn by the DFS program. Some of them are actually much larger than epsilon. That is because no matter how far we go down the branch, limit points which are supposed to be neighbours never get truly close. The branch is terminated only by the built-in maximum depth levjnax. It is lucky we built in this safeguard; otherwise our program would be stuck running a never ending loop. The truth is, Figure 8.3 should be a solid black square. 


The groups in Figure 8.2 are actually conjugates of the groups made from our original circle pairing recipe on p.170 in Chapter 6. To seethis, let $x = u = t_a/2$. The connection between the two constructions is shown in Figure 8.4 which was drawn using Grandma's recipe for the quasifuchsian group with $t_a = t_b = 2.2$. Our original recipe gave roughly equal weight to each of the four generators $a$, $A$, $b$ and $B$. By contrast, Grandma's recipe emphasizes symmetry relative to the alternative generators $a$ and $ab$. The word tree comes out distorted so that words beginning with $a$ occupy half the picture, the other half being divided among words beginning with the other three letters $A$, $b$ and $B$. The basic tile in Figure 8.4 is the one which has one side of each colour. The red side is part of the circle $C_a$, the blue side of $C_b$, and so on. Its vertices are the fixed points of the four commutators $abAB$, $bABA$, $ABab$ and $BabA$. As you can see, the red part is exactly half the limit set. The other half can be obtained by reflecting through the origin, using the map $j : z \mapsto -z$. (This trick was in part the original motivation for Grandma's normalization: we had only to plot a quarter of the limit points, and by reflecting got the rest of the picture for free.) 
:::

# The fun begins: traces go complex 

Our play has been kept artificially gentle by restricting to examples in which $t_a$ and $t_b$ are both real. Such groups always come equipped with a chain of four tangent Schottky circles, so plotting their limit sets is really nothing new. The real fun starts when ta and tb go properly complex. Figure 8.5 shows the results of gingerly testing the waters. What were the Schottky circles appear to have gone haywire, but at least the limit sets are still loops.

The curling and twisting you can see in these limit sets is caused by tiny spiralling motions of loxodromic transformations. Transformations with non-real traces are always loxodromic, so as soon as we make $t_a$ and $t_b$ complex, we can expect curling to occur. The amount of curling of a transformation depends not so much on the imaginary part of its trace as on the tightness of the spiral motion near its fixed points. Referring back to Chapter 3, you will see the spiral is tightly coiled if the multiplier is near 1, so the trace is near 2, and if in addition the imaginary part is comparatively small. You can see this in evidence in 


and with different generators doing the pairings. Whether or not this is possible, we don't know. As you can see, all these groups are still quasifuchsian, meaning that the limit set is a connected curve which doesn't cross itself and which divides the plane into an inside' and 'outside'. These are the first  groups whose limit sets we genuinely could not have drawn using our old Schottky circle algorithm. It would be nice to explore the region inside the limit set, but since there are no Schottky circles to work with, it can become a very tricky problem to find suitable tiles. Undeterred, we blew up a small part of a nice limit set with $t_a = t_b= 1.91 + 0.05i$ and set Dr. Stickler lying flat on his back in red on the righthand side. You can see him in Figure 8.6 spinning around, carried into every nook 
and cranny, so that there is exactly one Dr. Stickler for every word in the group.

In Figure 8.7 we have actually found a tiling for a quasifuchsian group with $t_a = 2 + 0.1i, t_b = 3$. Notice that the tiles are no longer four- but six-sided. As ever, the different tiles are carried onto each other by the transformations in the group. They get exceedingly skinny in the middle: if we varied our parameters just a little bit each of these tiles would fall apart into two halves. We found this particular tiling by a completely different method explained briefly in the caption. 

The curling in the last two frames of Figure 8.5 piqued our interest, hinting at directions which might be interesting to explore. Just how much curling is possible? The interest seems to centre on traces near 2, but ever so slightly complex. To investigate, we shall run an experiment in which we fix the trace $t_b$ safely equal 3, and then let $t_a$ run through values $x + 0.05i$, where $x$ is a real number which starts at 3 and slowly decreases to some dangerous transitional value, as yet unknown.  Figure 8.8 shows the preliminary results. The first frame is just a slightly wobbly circle. The second and third frames show some bumps forming, with the first hints of spiralling in the third frame at $x = 2$. From the chaotic fourth frame we deduce that somewhere between $x = 2.0$ and $x = 1.9$, we stepped over the boundary. The live version of the last frame is more interesting: the DFS algorithm frantically criss-crosses the picture trying to draw a solid black square. To locate the transition point more exactly, in Figure 8.9 we decrease $x$ by finer increments from 2.0 to 1.9. From 1.97 to 1.94 to 1.91, you can see the bumps on the limit set developing into pronounced and ever more tightly whirling spirals. We know from our earlier probe that the boundary lies above $x = 1.90$; when we ever-so-carefully stepped to 1.905, the DFS plot tried to fake sanity for a while, until its turbulent 
behaviour at last manifested and we terminated the program, allowing us at least to see some of the spirals that are still evident. We have pinned down the transition to madness somewhere between $x = 1.91$ and 1.905. 


# Transition to madness 


We have now three times bumped into places where our limit set plot has gone wild. What is going on? As we warned at the outset, there is no reason to expect that our limit set plot, bereft of the Schottky
circles, will produce anything reasonable at all. The greater miracle, perhaps, is that it ever does!
What is happening here is this. If you multiply a large number of matrices together, then you would expect that the resulting matrix product would automatically get 'large'. In the groups which produce
reasonable limit sets this is certainly the case. What is going wrong when the limit set goes haywire is that a word in the group which is a long matrix product of many generators unexpectedly turns out to be
actually very 'small'. The matrices cancel in a mysterious way, so the manner in which this particular group element moves points around in the plane is not at all what you might expect. Of course, not all entries can be near 0 because the determinant of any matrix in our group is always to equal to 1. So what we mean by saying that a matrix is 'small' is that it is very near the identity matrix $I$. From this point of view, $I$ is the 'smallest' matrix and we measure how large a matrix is by measuring the distance of its entries from those of $\begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}$. Groups for which large products stay away from $I$ are called discrete.

You can look for discreteness in our plots by seeing how close $M(z)$ can get to $z$, for any point $z$ in the plane. In the groups we have studied so far, you can always find tiles which cover all of the ordinary set, that is, all parts of the plane not occupied by the limit set itself. If you sit at a point $z$ in the middle of one tile, no points in any other tile can be too close, because no point can be nearer to you than the edges of your tile. But if $M$ was very near to $I$, then $M(z)$ would be very near to $I(z) = z$. This shows that very nasty cancellations can never occur as long as there are some 'limit set free' regions in the plane which can be covered by tiles.

It turns out that there is yet another layer of complication because there are groups for which there is no ordinary set at all but which are still discrete. We will look at these in Chapter 10 where we shall be meeting some amazing pictures of groups which are discrete in the strict sense that they contain no matrices too close to $I$, but for which the limit set plot fills out the whole plane, in a magically organised and yet extremely complicated way. For now, though, looking at whether or not the computer plot goes wild and seems to be filling up the page will not lead you far wrong. If you can find a tiling, then it shows you visually that the group is discrete, and if there is no tiling, you had
better watch out!
