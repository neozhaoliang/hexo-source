---
title: "Playing with parameters"
subtitle: "The vision of Felix Klein"
date: 2025-01-23
url: "playing-with-parameters"
---

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