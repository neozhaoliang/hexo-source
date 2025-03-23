---
title: "Coxeter element"
date: 2013-10-11
categories: [pywonderland 项目]
url: "coxeter-element"
---
\DeclareMathOperator{\span}{span}
\newcommand{\inn}[2]{\mathrm{numpy.dot} ( #1,#2 )}
\newcommand{\R}{\mathbb{R}}

如果你对 Lie 代数有所了解的话，相信很大概率你会见过下面的图案： ( 参考维基百科的 [Lie algebra 词条](https://en.wikipedia.org/wiki/Lie_algebra) )

<img style="margin:0px auto;display: block" src="/images/coxeter-element/e8.svg" width="350"/>

它展示的是 Lie 代数 $E_8$ 的根系图。$E_8$ 的根系由 8 维欧式空间 $\R^8$ 中的 240 个向量组成，将这 240 个向量投影到一个特殊的 2 维平面 ( 称作 Coxeter 平面 ) 上就会呈现出上图中旋转对称的图案。图中 240 个投影点分布在 8 个圆周上，每个圆周包含 30 个均匀分布的点，整个图案在角度为 $2\pi/30$ 的旋转下保持不变。$h=30$ 正是 $E_8$ 的 Coxeter 数。

本文目的是介绍 Coxeter 元的一些基础知识，然后教大家怎样在 Python 中编写一个程序绘制上面的投影图案。我主要参考了 [@Humphreys90] 和 [@CasselmanCoxeterElement]。虽然这里面涉及的数学并不复杂，但是真正动手编程实现的时候会有一些魔鬼藏在细节中，而这些细节是仅凭念书很难发现的。

本文的代码在 [Github 上](https://github.com/neozhaoliang/pywonderland/raw/master/src/misc/E8.py) 。David Madore 也有一个很棒的 [交互式网页](http://www.madore.org/~david/math/e8w.html) 可以绘制 $E_8$ 的多种不同风格的图案。

<!--more-->

# Coxeter 元

在介绍 Coxeter 元之前，我们先回顾一些基础概念。

设 $(W,S)$ 是一个有限且不可约的 Coxeter 系，$|S|=n$。$S$ 中的生成元满足辫关系：
$$(s_is_j)^{m_{ij}}=1,\quad \forall s_i,s_j\in S.$$
其中 $m_{ij}$ 是正整数，$m_{ii}=1$ 且 $m_{ij}\geq2\,(i\ne j)$。

取 $V$ 是 $n$ 维实向量空间，$\Delta=\{\alpha_1,\ldots,\alpha_n\}$ 是 $V$ 的一组基，$\Delta$ 叫做一组**单根系**，任何 $\alpha_i$ 叫做**单根**。定义 $V$ 上的内积 $\bullet$ 如下：
$$\alpha_i\bullet\alpha_j=-\cos\frac{\pi}{m_{ij}}.$$
在这个内积下，每个 $\alpha_i\in\Delta$ 都是单位向量：$\alpha_i\bullet\alpha_i=1$。

[@Humphreys90, section 6.2-6.4] 中证明了 $( W,S )$ 是有限群当且仅当 $\bullet$ 是正定的。

记 $A= ( \alpha_i\bullet\alpha_j )_{1\leq i,j\leq n}$ 是 $\bullet$ 在 $\Delta$ 这组基下的 Gram 矩阵，$A$ 叫做 Cartan 矩阵。

规定每个生成元 $s_i\in S$ 在 $V$ 上的作用为
$$s_i ( v ) = v - 2 ( v\bullet\alpha_i ) \alpha_i,\quad v\in V.$$
即 $s_i$ 是关于以 $\alpha_i$ 为法向量的超平面的反射。这个作用将 $W$ 同构地映射为 $O ( V )$ 的一个有限反射子群。

:::{.definition}
设 $\{i_1,i_2,\ldots,i_n\}$ 是集合 $\{1,2,\ldots,n\}$ 的一个置换，乘积 $s_{i_1}s_{i_2}\cdots s_{i_n}$ 叫做 **Coxeter 元**。
:::
换句话说，Coxeter 元就是把 $W$ 的生成元 $s_1,\ldots,s_n$ 按照任意顺序排列，然后相乘得到的群元素。

Coxeter 元的重要性质之一是：

:::{.theorem #coxeter-conjugate}
[@Humphreys90, section 3.16]

所有 Coxeter 元都是互相共轭的。
:::

由于 Coxeter 元都是共轭的，所以它们有相同的阶、特征多项式和特征值。任一 Coxeter 元的阶叫做 $W$ 的 **Coxeter 数**，记作 $h$。

设 $\gamma$ 是一个 Coxeter 元，由于 $\gamma$ 满足 $\gamma^h=1$，所以 $\gamma$ 的特征值必然都是 $h$ 次单位根，并且成对共轭出现：
$$\{\zeta^{m_1},\ldots,\zeta^{m_n},0\leq m_i<h\}.$$
其中 $\zeta$ 是本原 $h$ 次单位根。[@Humphreys90, sec. 3.16] 证明了 1 不可能是 $\gamma$ 的特征值，所以每个指数 $1\leq m_i\leq h-1$。此外，$\gamma$ 如果有实特征值的话只能是 $-1$( 对应 $\zeta^{h/2}$ ) 。

我们取一种特殊的 Coxeter 元如下：设 $(W,S)$ 的 Coxeter 图为 $\Gamma$，由于 $W$ 有限且不可约，$\Gamma$ 是一个树。任取 $\Gamma$ 的一个顶点作为 $s_n$，将 $\Gamma$ 的顶点按照与 $s_n$ 的图距离划分为两个不相交的集合 $\Gamma=I\sqcup J$：$I$ 包含所有与 $s_n$ 的距离为偶数的顶点（包括 $s_n$）；$J$ 包含所有与 $s_n$ 的距离为奇数的顶点。由于 $\Gamma$ 是树，顶点之间的距离是唯一确定的，因此 $I$ 中任何两个顶点不相邻，从而  $I$ 中的生成元两两交换。$J$ 也是如此。记
$$x=\prod_{i\in I}s_i,\quad y=\prod_{j\in J}s_j.$$
则 $\gamma=xy$ 是 Coxeter 元。下面对 $\gamma$ 进行分析。

# Coxeter 平面

设 $\{\omega_i\}_{i=1}^n$ 是 $\{\alpha_i\}_{i=1}^n$ 在内积 $\bullet$ 下的对偶基：
$$(\alpha_i\bullet\omega_j)=\delta_{ij}.$$
${\bf A}$ 是把每个 $\omega_i$ 映射为 $\alpha_i$ 的线性变换：
$${\bf A}\omega_i=\alpha_i,\quad \forall 1\leq i\leq n.$$
则 ${\bf A}$ 在 $\{\omega_i\}_{i=1}^n$ 这组基下的矩阵就是 Cartan 矩阵 $A$。由于 $A$ 是对称矩阵，所以 ${\bf A}$ 是可对角化的线性变换，其不同特征值对应的特征向量互相正交。

[@Humphreys90, section 2.6] 证明了矩阵 $A$ 的极小特征值 $c>0$ 的重数是 1，并且对应的特征向量 ${\bf c}=(c_1,\ldots,c_n)$ 的所有分量都是正的。我们将变换 ${\bf A}$ 的特征向量 $\sum_{i=1}^nc_i\omega_i$ 写成两个向量之和：
$$\sum_{i=1}^nc_i\omega_i=\sum_{i\in I} c_i\omega_i+\sum_{i\in J}c_i\omega_i=\lambda+\mu.$$
[@Humphreys90, section 3.17] 证明了如下事实：

+ $\lambda,\mu$ 张成一个二维子空间 $P$，$x$ 和 $y$ 限制在 $P$ 上分别是保持直线 $\mathbb{R}\mu$ 和 $\mathbb{R}\lambda$ 不动的反射，从而 $\gamma=xy$ 限制在 $P$ 上是一个旋转；
+ 这个旋转在 $P$ 上的阶与 $\gamma$ 在 $\R^8$ 上的阶相同，也是 $h$，从而旋转的角度等于 $2\pi/h$。

由于 $\gamma$ 置换根系 $\Phi$，所以如果我们把 $\Phi$ 投影到 $P$ 上，就会看到一个具有 $h$ 阶旋转对称性的图案。

不过直接使用上面 $\lambda,\mu$ 的定义来计算 $P$ 是很不方便的，因为其中涉及了对偶基 $\{\omega_i\}$。我们可以绕开对偶基的计算。[@Humphreys90, p. 78] 中提供了以下公式
$$\begin{aligned}
(c-1)\mu+\lambda &=\sum_{i\in I}c_i\alpha_i,\\
(c-1)\lambda+\mu &=\sum_{j\in J}c_j\alpha_j.
\end{aligned}$$

由于 $c\ne 1$（1 不是 Coxeter 元的特征值），这两个等式告诉我们
$$P=\span\{\lambda,\,\mu\}=\span\left\{\sum_{i\in I}c_i\alpha_i,\,\sum_{j\in J}c_j\alpha_j\right\}.\tag{$\ast$}\label{eq:alpha}$$
所以我们完全可以仅通过特征向量 ${\bf c}$ 和 $\Delta$ 得出 $P$ 的一组基。

# 进一步改进

如果你去看 [Github 代码](https://github.com/neozhaoliang/pywonderland/blob/master/src/misc/E8.py) 的话，会发现它并不是完全按上面的逻辑写的。这是怎么回事呢？

前面的计算还有个美中不足之处，就是我们需要显式地将 $S$ 的划分为两个不相交的子集 $S=I\sqcup J$，使得 $I,J$ 内部的生成元两两交换。下面的方式是我从 [@CasselmanCoxeterElement] 学到的，它使我们能够直接计算 Coxeter 平面，而无需进行 $S$ 的划分。

:::{.proposition}
[@CasselmanCoxeterElement, {lemma. 3.3}]

$2I + \gamma + \gamma^{-1}= ( 2I-A )^2$。
:::

根据这个结论，如果 $s=e^{i\theta}$ 和 $\bar{s}=e^{-i\theta}$ 是 $\gamma$ 的一对共轭的复特征值，$V_s,V_{\bar{s}}$ 分别是对应的特征子空间，记 $U=V_s\oplus V_{\bar{s}}$，则对任何 $u\in U$ 有
$$( 2I-A )^2 ( u ) = ( 2+e^{i\theta}+e^{-i\theta} ) u= 4\cos^2(\theta/2) u.$$
即 $U$ 是 $( 2I-A )^2$ 的特征值为 $4\cos^2(\theta/2)$ 的特征子空间。

我们想把这个结论中的平方去掉，即证明 $U$ 是 $2I-A$ 的特征值为 $\pm 2\cos(\theta/2)$ 的特征子空间的直和。

:::{.proposition #u-pm}
设 $U_{\pm}$ 是 $2I-A$ 的 $\pm2\cos(\theta/2)$ 特征子空间，则 $\dim U_+=\dim U_-$ 并且 $U=U_+\oplus U_-$。
:::

**证明**：显然 $U\supseteq U_+\oplus U_-$。下面证明反向包含。

显然 $U$ 是 $2I-A$ 的不变子空间。而 $2I-A$ 是可对角化的，所以 $2I-A$ 限制在 $U$ 上也可以对角化，即 $U$ 是 $2I-A$ 的特征子空间的直和。显然 $2I-A$ 在 $U$ 上的特征值只有可能是 $\pm 2\cos(\theta/2)$，从而 $U\subseteq U_+\oplus U_-$，即 $U=U_+\oplus U_-$。

为了说明 $\dim U_+=\dim U_-$，我们需要下面的引理，这个引理的证明并不是简单的线性代数，它要用到 Coxeter 图 $\Gamma$ 的不可约条件：

:::{.lemma #same-characteristic}
[@CasselmanCoxeterElement, {lemma. 3.5}]

$2I-A$ 和 $A-2I$ 有同样的特征多项式。
:::

这个引理告诉我们，若 $\lambda$ 是 $A-2I$ 的特征值，则 $-\lambda$ 也是，并且二者对应的特征子空间的维数相同（注意 $A-2I$ 是可对角化的）。于是 $\dim U_+=\dim U_-$。@Pre:u-pm 得证。$\blacksquare$

由于 $2I-A$ 的 $\pm2\cos(\theta/2)$ 特征子空间对应的是 $A$ 的 $2\mp2\cos(\theta/2)$ 特征子空间，所以我们得到了下面的推论：

:::{.corollary #eigenspace-pair}
$A$ 的不等于 2 的特征值成对出现，它们形如 $2\mp2\cos(\theta/2)$，并且对应的特征子空间 $U_{\pm}$ 的维数是相等的。$U_{\pm}$ 是 $\gamma$ 的共轭复特征值 $e^{\pm i\theta}$ 对应的特征子空间。
:::

一般来说 $U=U_+\oplus U_-$ 的维数未必是 2，所以 $U$ 不一定是平面。

设 $c_\min=2-2\cos(\theta_0/2)$ 是 $A$ 的极小特征值，则 $c_\max=2+2\cos(\theta_0/2)$ 是 $A$ 的极大特征值。我们知道 $c_\min$ 的重数是 1，根据 @Pre:eigenspace-pair，$c_\max$ 的重数也是 1，这时 $U$ 就是一个二维平面，并且 $\gamma$ 在 $U$ 上的作用是一个旋转。我们来说明这个旋转的阶等于 $\gamma$ 的阶 $h$，从而 $U$ 就是要找的 Coxeter 平面：

:::{.proposition}
设 $u,v$ 分别是 $c_\min,c_\max$ 对应的特征向量，$U=\span\{u,v\}$，则 $\gamma$ 作为 $U$ 上的旋转的阶等于 $\gamma$ 的阶 $h$。
:::

**证明**：设 $u=\sum_{i=1}^nc_i\omega_i$，$\gamma$ 限制在 $P$ 上的阶是 $k$。由于 $u\in P$，所以 $\gamma^k u=u$。

由于每个 $c_i>0$ [@Humphreys90, section 2.6]，所以 $(u\bullet\alpha_s)>0$ 对任何单根 $\alpha_s$ 成立，即 $u$ 属于 $W$ 在 $V$ 上作用的基本区域 $C$。然而根据 [@Humphreys90, section 1.12]，在 $W$ 中只有单位元 1 可以保持 $u\in C$ 不动，所以 $\gamma^k=1$，从而 $k=h$。$\blacksquare$

于是计算 $P$ 归结为计算 ${\bf A}$ 在 $\{\omega_i\}_{i=1}^n$ 这组基下极小/极大特征值对应的特征向量。设
$$u=\sum_{i=1}^nc_i\omega_i\quad\text{and}\quad v=\sum_{i=1}^nd_i\omega_i$$
分别是 ${\bf A}$ 对应 $c_\min,c_\max$ 的特征向量，它们构成 $P$ 的一组正交基。它们被 ${\bf A}$ 作用以后与自身相差一个常数倍，所以
$${\bf A}u=\sum_{i=1}^nc_i\alpha_i\quad\text{and}\quad {\bf A}v=\sum_{i=1}^nd_i\alpha_i$$
也构成 $P$ 的一组正交基。这样我们就找到了只用 Cartan 矩阵和单根系 $\Delta$ 计算 $P$ 的方法。

# $E_8$ 的例子

在这一节中，我们以 $E_8$​ 为例，应用上述理论进行实际计算。

$E_8$ 的 Coxeter 图如下：

![](/images/coxeter-element/e8-dynkin.svg){width=400 .fig}

我们第一步需要取 $\mathbb{R}^8$ 的一组基 $\Delta=\{\alpha_i\}_{1\leq i\leq 8}$ 作为单根系，并规定它们之间的内积 $\bullet$ 为
$$(\alpha_i\bullet\alpha_j)_{1\leq i,j\leq 8}=\begin{pmatrix}2&-1&0&0&0&0&0&0\\-1&2&-1&0&0&0&0&0\\0&-1&2&-1&0&0&0&0\\0&0&-1&2&-1&0&0&0\\0&0&0&-1&2&-1&0&-1\\0&0&0&0&-1&2&-1&0\\0&0&0&0&0&-1&2&0\\0&0&0&0&-1&0&0&2\end{pmatrix}.$$
注意这里每个单根 $\alpha_i\bullet\alpha_i=2$，并不是单位向量，这样主要是为了书写代码更方便。

由于 $\bullet$ 是正定的，所以我们可以适当选择单根系 $\Delta$ 使得在这组基下 $\bullet$ 就是标准的 Euclidean 内积。例如，取 $\alpha_i$ 为下面矩阵的第 $i$ 行：
$$\begin{bmatrix}1&-1&0&0&0&0&0&0\\0&1&-1&0&0&0&0&0\\0&0&1&-1&0&0&0&0\\0&0&0&1&-1&0&0&0\\0&0&0&0&1&-1&0&0\\0&0&0&0&0&1&1&0\\-\frac{1}{2}&-\frac{1}{2}&-\frac{1}{2}&-\frac{1}{2}&-\frac{1}{2}&-\frac{1}{2}&-\frac{1}{2}&-\frac{1}{2}\\0&0&0&0&0&1&-1&0\end{bmatrix}.$$

用代码来写的话，就是

```python
import numpy as np

# A set of simple roots listed by rows of 'delta'
delta = np.array([
    [1, -1, 0, 0, 0, 0, 0, 0],
    [0, 1, -1, 0, 0, 0, 0, 0],
    [0, 0, 1, -1, 0, 0, 0, 0],
    [0, 0, 0, 1, -1, 0, 0, 0],
    [0, 0, 0, 0, 1, -1, 0, 0],
    [0, 0, 0, 0, 0, 1, 1, 0],
    [-0.5, -0.5, -0.5, -0.5, -0.5, -0.5, -0.5, -0.5],
    [0, 0, 0, 0, 0, 1, -1, 0]
])

# The cartan matrix:
cartan = np.dot(delta, delta.transpose())
```

所有单反射 $\{s_i\}_{i=1}^8$ 生成的群 $W$ 叫做 $E_8$ 的 Weyl 群，这个群包含 696729600 个元素。单根系在 $W$ 作用下生成的集合 $\Phi = \{w\cdot\alpha\,|\, w\in W, \alpha\in\Delta\}$ 叫做 $E_8$ 的根系，$\Phi$ 中包含 240 个不同的向量，$W$ 置换 $\Phi$ 中的向量。

$\Phi$ 中的向量从形式上看分为两类：

1. 第一类包含 $(\pm1,\pm1,0,0,0,0,0,0)$ 的所有置换，即有两个分量是 $+1$ 或者 $-1$，其余６个分量都是 0 的向量。这样的向量有 112 个。
2. 第二类包含所有形如 $1/2\times(\pm1,\pm1,\cdots,\pm1)$ 的向量，其中 $-1$ 的个数是偶数。这样的向量有 128 个。

为了编程方便，我们可以把所有根都乘以 2，使得它们都是整数向量。于是生成根系 $\Phi$ 的代码可以这样写：

```python
import itertools

roots = []

# Roots of the form (+-1, +-1, 0, 0, 0, 0, 0, 0),
# signs can be chosen independently and the two non-zeros can be anywhere.
for i, j in combinations(range(8), 2):
    for x, y in product([-2, 2], repeat=2):
        v = np.zeros(8)
        v[i] = x
        v[j] = y
        roots.append(v)

# Roots of the form 1/2 * (+-1, +-1, ..., +-1), signs can be chosen
# indenpendently except that there must be an even numer of -1s.
for v in product([-1, 1], repeat=8):
    if sum(v) % 4 == 0:
        roots.append(v)
roots = np.array(roots).astype(int)

# Connect a root to its nearest neighbors,
# two roots are connected if and only if they form an angle of pi/3.
edges = []
for i, r in enumerate(roots):
    for j, s in enumerate(roots[i + 1 :], i + 1):
        if np.sum((r - s) ** 2) == 8:
            edges.append([i, j])
```

我们来计算 Coxeter 平面 $P$ 的一组基。

```python
eigenvals, eigenvecs = np.linalg.eigh(cartan)
u = eigenvecs[:, 0]
v = eigenvecs[:, -1]

u = np.dot(u, delta)
v = np.dot(v, delta)
```

其中 `eigenvals` 返回 Cartan 矩阵的特征值，按照从小到大排列；`eigenvecs` 的列向量是 Cartan 矩阵的特征向量，也是按照特征值递增的顺序排列，第一列 `u = eigenvecs[:, 0]` 和最后一列 `v = eigenvecs[:, -1]` 就是最小和最大特征值对应的特征向量。

把 `eigenvals` 中的特征值打印出来：

```python
[0.01095621 0.51371035 1.18652671 1.58417662 2.41582338 2.81347329 3.48628965 3.98904379]
```

可以看到最小的特征值
$$0.01095621 \approx 2-2\cos\frac{\theta_0}{2},\quad \theta_0\approx 2\arccos0.994521895\approx\frac{2\pi}{30}.$$
所以我们验证了 $\gamma$ 在 $P$ 上的作用是一个 30 阶的旋转，即 $W$ 的 Coxeter 数是 30。

根据上一节末尾的介绍，$\sum_{i=1}^8u_i\alpha_i$ 和 $\sum_{i=1}^8v_i\alpha_i$ 构成 $P$ 的一组正交基。把它们归一化为单位向量，然后计算根系 `roots` 到 $P$ 的投影：

```python
u /= np.linalg.norm(u)
v /= np.linalg.norm(v)

roots_2d = [(np.dot(u, x), np.dot(v, x)) for x in roots]
```

剩下的就是具体的绘图过程了，这里不再赘述。