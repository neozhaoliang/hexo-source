---
title: Binary polyhedral groups
date: 2014-05-11
categories: [代数]
tags:
  - Binary polyhedral groups
  - Platonic solids
  - Group extension
  - Quaternions
url: binary-polyhedral-groups
---

\newcommand{\H}{\mathbb{H}}
\newcommand{\so}{\mathrm{SO}(3)}
\newcommand{\ztwo}{\{\pm1\}}
\newcommand{\sl}{\mathrm{SL}_2(\mathbb{F}_5)}
\newcommand{\gl}{\mathrm{GL}_2(\mathbb{F}_5)}

在抽象代数课程中，你肯定学过，$n$ 元交错群 $A_n$ 对任何 $n\geq5$ 都是单群。特别地 $A_5$ 是 60 阶单群，而且它还是正十二面体和正二十面体的旋转对称群。

有 3 个 120 阶群与 $A_5$ 是密切相关的。哦不，我应该说，有 4 个 120 阶群与 $A_5$ 是密切相关的，不过其中有两个是同构的。这 4 个群非常容易搞混。

<!--more-->

第一个群你应该毫不意外，当然是置换群 $S_5$，我相信你已经很熟悉它了。它可以由 $A_5$ 和任何一个对换，比如 $(12)$ 生成。而且 $A_5$ 是 $S_n$ 的指数为 2 的正规子群：
$$S_n/A_n\cong \ztwo.$$

第二个群是 $A_5$ 和 $\ztwo$ 的直积 $A_5\times\ztwo$。它是正十二面体和正二十面体的完整对称群：它除了包含 $A_5$ 中的 60 个旋转对称，还包含 60 个反射对称。注意正十二面体和正二十面体都是中心对称的，如果你把它们的几何中心放在原点，那么变换 $x\to -x$ 给出多面体的一个反射对称。这个变换的矩阵是 $-I$，当然与 $A_5$ 中的任何旋转都交换。

你可以很容易看出来为什么 $S_5$ 和 $A_5\times\ztwo$ 是不同构的，前者没有非平凡的中心，而后者以 $\ztwo$ 为中心。

第三个群是我们今天的主角。它来自球面 $S^3$ 是三维空间的旋转群 $\so$ 的双重覆盖 (double cover) 这一事实。回忆四元数 $\H$ 是 $\mathbb{R}$ 上的四维可除代数，一组基为 $\{1,i,j,k\}$，满足
$$i^2=j^2=k^2=ijk=-1.$$
任何 $q\in\H$ 形如
$$q=a+bi+cj+dk,\quad a,b,c,d\in\mathbb{R}.$$
$q$ 的范数定义为 $|q|=a^2+b^2+c^2+d^2$。所有满足 $|q|=1$ 的四元数构成 $\H$ 的一个**乘法子群**，即三维球面
$$S^3=\{(a,b,c,d)\mid a^2+b^2+c^2+d^2=1\}.$$

我们可以把 $\mathbb{R}^3$ 等同于虚四元数 $\{xi+yj+zk\mid (x,y,z)\in\mathbb{R}^3\}$。设 $q\in S^3$ 是一个单位四元数，则
$$L(q)(xi+yj+zk) = q(xi+yj+zk)q^{-1}.$$
给出了一个 $\mathbb{R}^3$ 上的旋转，并且 $\mathbb{R}^3$ 中的任何旋转都可以这样得到，于是 $q\to L(q)$ 是一个从 $S^3$ 到 $\so$ 的满射群同态，并且 $q$ 和 $q'$ 给出同样的旋转当且仅当 $q=\pm q'$，所以同态 $L$ 的核是 $\ztwo$，从而我们有
$$S^3/\ztwo\cong \so.$$
这个式子很显然说明了为什么 $S^3$ 叫做 $\so$ 的双重覆盖。

既然 $A_5\subset \so$ 是旋转群，所以我们可以取它在 $L$ 下的逆像，这个逆像是 $S^3$ 的子群，并且包含 120 个元素，叫做 binary icosahedral group，记作 $2I$。这样我们有了第三个和 $A_5$ 有关的 120 阶群。

记住怎样区分这几个 120 阶群的最好办法是用群扩张的正合列：

:::{.definition .unnumbered}
假设我们有一个群同态的 [短正合列](https://en.wikipedia.org/wiki/Exact_sequence#Short_exact_sequence)：
$$1\xrightarrow{} N \xrightarrow{i} G \xrightarrow{\pi} H \xrightarrow{} 1.$$

其中 $G,N,H$ 都是群，$i:N\to G$ 和 $\pi:G\to H$ 是群同态。这时我们就称 $G$ 是 $H$ 通过 $N$ 的扩张。
:::

根据短正合列的定义，映射 $i$ 将 $N$ 嵌入 $G$ 中成为 $G$ 的正规子群，但 $H$ 未必是 $G$ 的子群。

当 $G=S_5$ 或者 $G=A_5\times\ztwo$ 时，都有
$$1\xrightarrow{} A_5 \xrightarrow{} G \xrightarrow{} \ztwo \xrightarrow{} 1.$$
$A_5$ 和 $\ztwo$ 都是 $G$ 的子群，它们的区别在于 $A_5$ 和 $\ztwo$ 是否交换，即 $S_5$ 是半直积，$A_5\times\ztwo$ 是直积。

然而当 $G=2I$ 时 $A_5$ 和 $\ztwo$ 的位置要互换过来：
$$1\xrightarrow{} \ztwo \xrightarrow{} 2I\xrightarrow{} A_5 \xrightarrow{} 1.$$
而且 $A_5$ 不是 $2I$ 的子群，因为 $2I$ 中阶等于 2 的旋转只有 $-1$，但 $A_5$ 里面有很多 2 阶元。

第四个 120 阶群是 $\sl$，即 5 元有限域 $\mathbb{F}_5$ 上所有行列式为 1 的 2x2 矩阵构成的群。我们来验证一下它确实是 120 阶群：首先 $\mathbb{F}_5$ 上的 2x2 可逆矩阵组成的群 $\gl$ 的阶是 $|\gl|=480$。这是因为 $\mathbb{F}_5$ 上的二维向量总共有 $5^2=25$ 个，其中 24 个是非零向量。我们可以取任何一个非零向量 $u$ 作为矩阵的第一列，与 $u$ 共线的向量有 5 个，所以第二列就只能在剩下的 20 个向量里面选。所以 $|\gl|=24\cdot 20=480$。注意到取行列式
$$\det: \gl\to F_5^\ast$$
是满同态，核正是 $\sl$，所以
$$|\sl| = |\gl| / 4 = 120.$$
