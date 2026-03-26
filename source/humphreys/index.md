---
title: "Humphreys《反射群与 Coxeter 群》笔记"
categories: [代数]
date: 2023-12-10
url: "humphreys-coxeter-notes"
---
\newcommand{\vol}{\mathrm{Vol}}
\newcommand{\GL}{\mathrm{GL}}
\newcommand{\L}{\mathcal{L}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\neg}{\mathrm{Neg}}
\newcommand{\rad}{\mathrm{rad}}
\newcommand{\ht}{\mathrm{ht}}
\newcommand{\ev}{\mathrm{ev}}
\newcommand{\jac}[2]{\frac{\partial #1}{\partial #2}}

本文是我学习 @Humphreys90 时的一些笔记。

<!--more-->


# 1.5 Generation by simple reflections

这一节证明了整个反射群 $W$ 可以由单反射 $\{s_\alpha\mid\alpha\in\Delta\}$ 生成。

:::{.theorem #thm-1.5}
**定理 1.5**

$W$ 可以由 $\{s_\alpha\mid\alpha\in\Delta\}$ 生成。
:::

**证明概要**：设 $W'$ 是 $\{s_\alpha\mid\alpha\in\Delta\}$ 生成的群。目标是证明 $W'=W$。我们来一步步推理：

1. 由于 $W$ 是由关于整个根系的镜面反射 $\{s_\beta\mid \beta\in\Phi\}$ 生成的，所以只要证明每个生成元 $s_\beta\in W'$ 即可。
2. 要证明 1，只要证明任何 $\beta\in\Phi$ 可以写成 $\beta=w'\alpha$ 的形式，其中 $w'\in W',\,\alpha\in\Pi$。这样 $s_\beta=w's_\alpha w'^{-1}\in W'$。
3. 要证明 2，只需要分析 $\beta$ 是正根且不是单根的情形，因为 $-\beta = w's_\alpha\alpha$。
4. 如果 $\beta>0$ 但不是单根，设 $\beta=\sum c_s\alpha_s$，那么 $0<(\beta,\beta)=\sum c_s(\beta, \alpha_s)$，这说明一定存在单根 $\alpha_s$ 满足 $(\beta,\alpha_s)>0$。考察 $\gamma=s\beta$。
5. $\gamma$ 仍然是正根，并且 $\ht(\gamma) < \ht(\beta)$。如果 $\gamma$ 不是单根，那就一直重复此步骤直到 $\gamma$ 变成单根为止。这个操作一定会在有限次后终止，否则我们会得到一个无穷的、高度严格降低、从而互不相同的正根序列，这与根系是有限集矛盾。
6. 设 $\gamma=s_1\cdots s_r\beta\in\Delta$ 是最终得到的单根，则 $\beta\in W'\Delta$，结论成立。$\blacksquare$

# 1.6 The length function

这一节证明了函数 $n(w)$ 满足的递推关系。

设 $\neg(w)$ 是那些被 $w$ 变成负根的正根的集合：
$$\neg(w)=\{\lambda>0,\lambda\in\Phi\mid w\lambda<0\}.$$
并记 $n(w)=|\neg(w)|$。

:::{.lemma #lem-1.6}
**引理 1.6**
函数 $n(w)$ 满足如下的递推关系：
$$
n(ws_\alpha)=\begin{cases}n(w)+1 & w\alpha>0,\\
n(w)-1 & w\alpha<0.\end{cases}
$$
:::

:::{.note}
在后面 5.4 节中，针对一般的 Coxeter 群证明了长度函数 $l(w)$ 也满足同样的递推关系，从而 $l(w)=n(w)$。但是那里的证明要复杂一些。
:::

**证明**：首先注意到任何单根 $\alpha\in\Delta$ 必然恰好属于 $\neg(w)$ 或者 $\neg(ws_\alpha)$ 之一，这取决于 $w\alpha$ 是正根还是负根：

+ $w\alpha<0\Rightarrow \alpha\in\neg(w)$。
+ $w\alpha>0\Rightarrow ws_\alpha\alpha<0\Rightarrow \alpha\in \neg(ws_\alpha)$。

另一方面对任何正根 $\gamma\ne\alpha$，$s_\alpha\gamma$ 仍然是正根。从恒等式
$$(ws_\alpha)\gamma < 0\Longleftrightarrow w(s_\alpha\gamma)<0$$
可见 $\gamma\in\neg(ws_\alpha)$ 当且仅当 $\gamma\in\neg(w)$，所 $\gamma\leftrightarrow s_\alpha\gamma$ 给出了 $\neg(ws_\alpha)$ 和 $\neg(w)$ 中除 $\alpha$ 之外的正根的一一对应，所以

$$
n(ws_\alpha)=\begin{cases}n(w)+1 & \alpha\in \neg(ws_\alpha),\\
n(w)-1 & \alpha\in \neg(w).\end{cases}
$$

$\blacksquare$

# 1.7 Deletion and Exchange Conditions

这一节证明了有限反射群必然满足 deletion 和 exchange 条件。开头的定理乍看起来非常不直观，包含了一大堆下标。我来解释下背后的几何直观。

设 $w=s_1\cdots s_r$ 是 $W$ 的任一元素。从基本区域 $C$ 出发，我们有一个 gallery，即一列两两相邻的房间

$$C,\, s_1C,\, s_1s_2C,\, \ldots,\, s_1\cdots s_rC.$$

可以这样理解：记 $w_i=s_1\cdots s_i$，则 $w_{i-1}$ 将相邻的两个房间 $C$ 和 $s_iC$ 映射为另外两个相邻的房间 $w_{i-1}C$ 和 $w_iC$。

不仅如此，由于 $C$ 和 $s_iC$ 之间的墙壁是超平面 $H_i = H_{s_i}$，它在 $w_{i-1}$ 作用下被映射为超平面 $w_{i-1}H_i$，所以 $w_{i-1}C$ 和 $w_iC$ 之间的墙壁是 $w_{i-1} H_i$。即

$$C\stackrel{H_1}{\bigl\lvert} s_1C \stackrel{s_1H_2}{\bigl\lvert} s_1s_2C\stackrel{\quad}{\bigl\lvert}\cdots\stackrel{w_{r-1}H_r}{\bigl\lvert} w_{r}C.$$

:::{.lemma .unnumbered}
表达式 $w=s_1s_2\cdots s_r$ 是既约的，当且仅当上述镜面集合
$$\{H_1,s_1H_2,\ldots,s_1\cdots s_{r-1}H_r\}$$
互不相同。
:::

这个引理的含义是，任何既约单词对应的 gallery 不能两次跨越同一个超平面。

这个引理的证明见 4.5 小节 simple transitivity。那里仿射的情形和这里的证明是一样的。

我们来问问自己，如果一个镜子在上面的集合中出现两次会发生什么？设 $1\leq i<j\leq r$ 使得
$$s_1\cdots s_{i-1}H_i = s_1\cdots s_{j-1}H_j.$$
两边消去 $s_1\cdots s_{i-1}$ 得到
$$H_i = s_i\cdots s_{j-1}H_j.$$
即
$$s_i = (s_i\cdots s_{j-1})s_j(s_{j-1}\cdots s_i)=(s_i\cdots s_{j})(s_{j-1}\cdots s_i).$$
把右边的 $s_{j-1}\cdots s_i$ 挪到左边来得到
$$s_{i+1}\cdots s_{j-1} = s_i\cdots s_j.$$
这意味着 $s_i\cdots s_j$ 这一段可以用更短的 $s_{i+1}\cdots s_{j-1}$ 来代替，这就是书中定理 1.7 中的 (c)。

# 1.9 Generators and relations

这是比较难读的一节。这一节证明了满足 deletion 条件的有限反射群一定是 Coxeter 群。

:::{.theorem .unnumbered #thm-1.9}

**定理 1.9**

设 $\Delta$ 是某 Euclidean 的一组基，$S=\{s_\alpha\mid \alpha\in\Delta\}$ 是一组单反射，$W$ 是 $S$ 生成的群，并且 $W$ 满足 deletion 条件。则 $W$ 具有表现
$$(s_\alpha s_\beta)^{m_{\alpha,\beta}}=1.$$
其中 $m_{\alpha,\beta}\geq1\in\mathbb{Z}$。
:::
注意 $m_{\alpha,\alpha}=1$。

**证明**：我们要说明生成元之间的任何关系
$$s_1s_2\cdots s_r=1$$
都可以通过形如 $(s_\alpha s_\beta)^{m_{\alpha,\beta}}=1$ 这样的关系推导出来。

若不然，设
$$s_1s_2\cdots s_r=1,\quad r=2q$$
是一个长度最短的反例。这里 $r$ 必须是偶数，因为每个 $\det s_i=-1$。

我们将证明有 $s_1=s_3=\cdots$ 以及 $s_2=s_4=\cdots$ 成立，从而上述关系可以写成 $(s_1s_2)^q=1$，得出矛盾。

+ 我们只要证明 $s_1=s_3$ 即可。然后将结论用在 $s_2s_3\cdots s_rs_1=1$ 上得到 $s_2=s_4$；再进一步用在 $s_3s_4\cdots s_rs_2s_1=1$ 上得到 $s_3=s_5$，等等。

+ 为此我们只要证明如下两个等式：

  (I).  $s_1s_2\cdots s_q=s_2s_3\cdots s_{q+1}$.

  (II).  $s_3s_2\cdots s_q=s_2s_3\cdots s_{q+1}$.

  这两个式子几乎是一样的，第一个最左边是 $s_1$，第二个最左边是 $s_3$，所以如果它们都成立的话就有 $s_1=s_3$。

+ 为了证明 I，我们把 $s_1\cdots s_r=1$ 改写为
  $$s_1\cdots s_{q+1} = s_r\cdots s_{q+2}.$$
  左边是 $q+1$ 项的乘积，右边是 $q-1$ 项的乘积，所以 $l(s_1\cdots s_{q+1})\leq q-1$。根据 deletion 条件，存在 $1\leq i<j\leq q+1$ 使得有
  $$s_i\cdots s_j = s_{i+1}\cdots s_{j-1}. \tag{$\ast$}$$
  我们来论证 $i=1,j=q+1$，也就是 I 成立。若不然，$(\ast)$ 式至多包含 $2q-2=r-2$ 项，从而由假设可以由 Coxeter 关系 $\{(s_\alpha s_\beta)^{m_{\alpha,\beta}}=1\mid \alpha,\beta\in\Delta\}$ 推导出来。然而 $(\ast)$ 式等价于
  $$s_1\cdots s_r = s_1\cdots\hat{s_i}\cdots\hat{s_j}\cdots s_r.$$
  此外我们已知 $s_1\cdots s_r=1$，所以
  $$s_1\cdots\hat{s_i}\cdots\hat{s_j}\cdots s_r=1.$$
  根据 $r$ 的选取，$s_1\cdots\hat{s_i}\cdots\hat{s_j}\cdots s_r=1$ 可以由 Coxeter 关系推导得到，从而 $s_1\cdots s_r=1$ 也可以，这导致了矛盾，于是 I 得证。

+ 为了证明 II，将 $s_1\cdots s_r =1$ 改写为 $s_2\cdots s_rs_1=1$，仿照 I 的证明，我们可以得到
  $$s_2\cdots s_{q+1} = s_3(s_4\cdots s_{q+2}).$$
  把 $s_3$ 挪到左边的前面，把 $s_4\cdots s_{q+2}$ 挪到左边的后面，得到
  $$s_3s_2\cdots s_{q+1}s_{q+2}\cdots s_4 = 1.$$
  仍然和 I 的证明同理，我们可以得到
  $$s_3s_2\cdots s_q = s_2\cdots s_{q+1}.$$
  这就是 II 中的等式。

$\blacksquare$

# 1.16 An alternating sum formula

设超平面 $H_1,\dots,H_r$ 把 $V=\mathbb R^n$ 切成很多胞腔。一个胞腔就是某个非空交集
$$K=\bigcap_i H_i^{\varepsilon_i},\quad \varepsilon_i\in\{0,+,-\}.$$

定义 $L$ 为 $K$ 的线性张成，等价于把定义 $K$ 时那些选了 $0$ 的超平面都交起来：
$$  L=\bigcap_{\varepsilon_i=0} H_i^0.$$
$K$ 是 $L$ 的开子集。

现在再加一条新超平面 $H$。新的复形里只在一种情况下会出现新面：$H$ 真正切进了某个旧的面 $K$ 的内部，也就是 $H\cap K\neq \varnothing$ 但 $K\not\subset H$。

取 $x\in H\cap K$。因为 $K$ 是 $L$ 里的开集，因此一定能找到一个 $L$ 里的小开球 $U$ 满足
$$x\in U\subset K.$$

把 $L$ 想成 $\mathbb R^i$。在合适坐标下，可以取 $x$ 为原点，把 $H$ 写成 $x_1=0$ 这个超平面。那么：

* $H^+\cap L$ 对应 $\{x\in\mathbb R^i\mid x_1>0\}$
* $H^-\cap L$ 对应 $\{x\in\mathbb R^i\mid x_1<0\}$

$U$ 作为 $\mathbb R^i$ 中包含原点的开球必然同时包含 $x_1>0$ 的点和 $x_1<0$ 的点。所以 $U$ 必然同时“碰到”两边：

$$U\cap H^+\neq\varnothing,\qquad U\cap H^-\neq\varnothing.$$

因为 $U\subset K$，所以
$$K\cap H^+\neq\varnothing,\qquad
K\cap H^-\neq\varnothing.$$

加入新超平面 $H$ 后，$K$ 在新复形里会被细分成三块：

* $K^+ := H^+\cap K$。
* $K^- := H^-\cap K$。
* $K^0 := H^0\cap K$。

而且维数是：

* $K^+$ 和 $K^-$ 都还是 $L$ 里的开集，所以 $\dim = i$（和原来 $K$ 一样）
* $K^0$ 落在 $H\cap L$ 里，而 $H\cap L$ 是 $i-1$ 维，所以 $K^0$ 的维数是 $i-1$

所以原来有 1 个 $i$ 维面 $K$，现在变成 2 个 $i$ 维面 $K^+,K^-$ 加 1 个 $i-1$ 维面 $K^0$，交错和不变。

:::{.proposition}
设 $(W,S)$ 的标准反射表示作用在实内积空间 $V$（$\dim V=n$）上，$C$ 为对应的 Coxeter complex。对每个 $I\subseteq S$，记 $f_I(w)$ 为在 $C$ 中被 $w$ **逐点固定**的 $I$-型面（facet/face）的个数。则对任意 $w\in W$，
$$
\sum_{I\subseteq S}(-1)^{|I|}\,f_I(w)=\det(w).
$$
:::
**证明**：固定 $w$。令 $V'=\{v\in V:\; wv=v\}$ 为 $w$ 的不动点子空间（$1$-特征子空间），并记 $c=\dim V'$。

一个面 $F\subseteq C$ 被 $w$ 逐点固定当且仅当 $F\subseteq V'$。因此，对每个维数 $i$，令 $n_i$ 为被 $w$ 固定的 $i$ 维面数，则 $n_i$ 也等于落在 $V'$ 内的 $i$ 维面数。

将 Coxeter arrangement 限制到 $V'$，得到在 $V'$ 中的一组超平面，并由此得到一个由这些超平面切分出的复形 $\mathcal K$（其元素为相应半空间/超平面的非空交）。由构造，$\mathcal K$ 的 $i$ 维元素个数正是上面的 $n_i$。由本节前面的引理可得
$$\sum_i (-1)^i n_i = (-1)^c. \tag{1}$$
另一方面显然
$$
n_i=\sum_{|I|=n-i} f_I(w). \tag{2}
$$
将 (2) 代入 (1)，并用 $i=n-|I|$ 重新索引：
$$\sum_i (-1)^i\sum_{|I|=n-i} f_I(w)
=\sum_{I\subseteq S} (-1)^{\,n-|I|} f_I(w)
=(-1)^c.$$
于是
$$
(-1)^n\sum_{I\subseteq S} (-1)^{|I|} f_I(w)=(-1)^c,
$$
即
$$
\sum_{I\subseteq S} (-1)^{|I|} f_I(w)=(-1)^{n-c}. \tag{3}
$$
$w$ 是正交变换。其复特征值由以下三类组成：

- $1$，其重数为 $c$；
- 若干对共轭复数 $e^{i\theta},e^{-i\theta}$（模长为 $1$），设共有 $b$ 对；
- $-1$，其重数为 $n-c-2b$。

因此
$$
\det(w)=1^c\cdot\prod_{j=1}^b \bigl(e^{i\theta_j}e^{-i\theta_j}\bigr)\cdot(-1)^{n-c-2b}
=(-1)^{n-c}. \tag{4}
$$

由 (3) 与 (4) 即得结论。


# 2.6 Subgraphs

在本节中，$\Gamma$ 是一个不可约 Coxeter 图，内积 $(\alpha_s,\alpha_t)=-\cos\frac{\pi}{m_{s,t}}$ 是半正定的，但不是正定的。

记 $N=\{v\in V\mid (v,v)=0\}$ 以及
$$\rad(V)=\{v\in V\mid (v, u)=0 \text{ for all } u \in V\}.$$
显然 $\rad(V)$ 总是 $V$ 的子空间并且 $\rad(V)\subset N$，但是一般来说 $N$ 并不是 $V$ 的子空间。

但是在内积半正定时，我们有如下的结论：

:::{.lemma .unnumbered}
若内积半正定，则 $N=\rad(V)$。
:::
**证明**：只要证 $N\subset\rad(V)$ 即可，即若 $u\in V$ 满足 $(u,u)=0$，则对任何 $v\in V$ 都有 $(u,v)=0$。若不然，设 $v$ 满足 $(u,v)\ne0$，给 $v$ 乘以适当实数使得 $(u,v)=1$。考虑向量 $z=ku +v\,(k\in\R)$：
$$(z,z)=(ku+v,ku+v) = (v,v) + 2k.$$
所以只要选择 $k$ 满足 $2k < -(v,v)$ 就有 $(z,z)<0$，这与内积的半正定性矛盾。$\blacksquare$

这一节的主要结论是：

:::{.proposition .unnumbered}

**命题 2.6**

1. $\rad(V)$ 是一维的，由一个向量 $\delta=\sum_{s\in S}c_s\alpha_s$ 生成，并且每个系数 $c_s$ 都大于 0。
2. 若 $\Gamma$ 连通且半正定，则 $\Gamma$ 的任意真子图是正定的。（真子图是指删掉某些顶点。或者将某些边的标号调小）
:::

1 的证明：

设 $u=\sum_{s\in S}c_s\alpha_s\in\rad(V)$ 是一个非零向量，记
$$I_+=\{s\in S\mid c_s>0\},\quad I_-=\{s\in S\mid c_s<0\},\quad I_0=\{s\in S\mid c_s=0\}.$$
$$u_+=\sum_{s\in I_+}c_s\alpha_s,\quad u_-=\sum_{s\in I_-}c_s\alpha_s.$$
则 $u=u_++u_-$，并且
$$(u_+,u_-)=\sum_{c\in I_+}\sum_{t\in I_-}\underbrace{c_sc_t}_{<0}\,\underbrace{\alpha_s\alpha_t}_{\leq0}\geq0.$$

由于 $u\in\rad(V)$ 所以 $(u,u)=0$，即
$$(u,u)=(u_+,u_+)+(u_-,u_-)+2(u_+,u_-)=0.$$
根据半正定性和上面的分析，上式的三项都是非负的，所以只能是
$$(u_+,u_+)=(u_-,u_-)=(u_+,u_-)=0.$$

此外 $I_+$ 和 $I_-$ 中至少有一个非空，不妨设 $I_+\ne\emptyset$，我们来证明 $I_-$ 和 $I_0$ 必须都是空集。

若不然，$I_-\cup I_0$ 非空，任取 $t\in I_-\cup I_0$，设 $\delta$ 是正数，考虑向量 $z=u_+ +\delta\alpha_t$。我们有

$$(z,z)=\delta^2+2\delta(u_+,\alpha_t)=\delta^2+2\delta\sum_{s\in I_+}\underbrace{c_s}_{>0}\underbrace{(\alpha_s,\alpha_t)}_{\leq0}.$$
注意到每一项 $c_s(\alpha_s,\alpha_t)\leq0$，所以 $\sum_{s\in I_+}c_s(\alpha_s,\alpha_t)\leq0$，并且如果存在 $s\in I_+$ 使得 $s$ 与 $t$ 之间有边相连的话则 $\sum_{s\in I_+}c_s(\alpha_s,\alpha_t)$ 严格小于 0。这时取 $\delta$ 足够小可以使得 $(z,z)<0$，这与内积 $(,)$ 是半正定的矛盾。所以必须是对每个 $s\in I_+$ 有 $(\alpha_s,\alpha_t)=0$。由 $t$ 的任意性可得 $I_-\cup I_0$ 与 $I_+$ 互不连通，但这又与 $\Gamma$ 不可约矛盾。

总之我们证明了 $\rad(V)$ 中非零向量的系数必须同时为正或者同时为负。

如果 $\rad(V)$ 包含两个线性无关的向量 $u,v$，根据上面的证明，我们可以不妨设 $u,v$ 的各项系数都是正数。适当缩放以后我们可以让 $u,v$ 的 $\alpha_1$ 项系数都是 1。于是 $u-v$ 也在 $\rad(V)$ 中，并且其 $\alpha_1$ 项系数是 0，这就导致了矛盾。

2 的证明：

设 $\Gamma'$ 是 $\Gamma$ 的一个真子图，对应的 Cartan 矩阵是 $A'=(a'_{ij})$，大小为 $k\times k\,(k\le n)$。

注意到对每个 $i\leq k$ 有 $a'_{ii}=a_{ii}=1$ 和 $-1\le a_{ij}\leq a'_{ij}\le 0$。

用反证法，假设 $A'$ 不是正定，则存在某个非零向量 $x\in\mathbb R^k$ 使得
$$x^TA'x\le 0. \label{ineq:sub1}\tag{1}$$
令 $y=(|x_1|,\dots,|x_k|,0,\dots,0)\in\mathbb R^n$，由于 $A$ 正半定，
$$0\le y^TAy= \sum_{i,j\le k} a_{ij}|x_i||x_j|. \label{ineq:sub2}\tag{2}$$
由 $a_{ij}\le a'_{ij}$，且 $|x_i||x_j|\ge0$，逐项相乘并求和得到
$$\sum_{i,j\le k} a_{ij}|x_i||x_j|\le\sum_{i,j\le k} a'_{ij}|x_i||x_j|. \label{ineq:sub3}\tag{3}$$

我们还需要最后一个不等式：

+ 注意对 $i\neq j$，$a'_{ij}\le 0$。而对任意实数，
$$x_ix_j\le |x_i||x_j|.$$
把这个不等式乘上一个非正的数 $a'_{ij}$ 会反向，因此
$$a'_{ij}|x_i||x_j|\le a'_{ij}x_ix_j\quad (i\neq j).$$
+ $i=j$ 时两边相等，都是 $a'_{ii}x_i^2=x_i^2$。

因此整体求和：
$$\sum_{i,j\le k} a'_{ij}|x_i||x_j|\le\sum_{i,j\le k} a'_{ij}x_ix_j = x^TA'x. \label{ineq:sub4}\tag{4}$$
综合 $\ref{ineq:sub1},\ref{ineq:sub2},\ref{ineq:sub3},\ref{ineq:sub4}$ 就是
$$0\le y^TAy=\sum_{i,j\le k} a_{ij}|x_i||x_j|\le\sum_{i,j\le k} a'_{ij}|x_i||x_j|\le \sum_{i,j\le k} a'_{ij}x_ix_j= x^TA'x\le 0.$$
于是所有不等号都是等号。从而 $y\in \rad(A)$。而我们已经知道 $\rad(A)$ 中的非零向量必须所有分量都同号，这只能是 $k=n$，并且所有 $x_i$ 都非零。这进一步导致对所有 $a_{ij}=a'_{ij}$。这与 $\Gamma'$ 是真子图矛盾。$\blacksquare$


# 3.2 Finite generation

:::{.proposition}
设 $S=\bigoplus_{d\ge 0}S_d$ 为一个分次 $K$-代数，$W$ 为有限群作用在 $S$ 上并保持分次，$R=S^W$ 为不变子环，$R^+=\bigoplus_{d>0}R_d$。令
$$
I:=S\cdot R^+
$$
为由正次数不变式生成的 $S$- 理想。设 $f_1,\dots,f_r\in R^+$ 为齐次元，并且它们生成理想 $I$。则 $R$ 作为 $K$- 代数由 $1,f_1,\dots,f_r$ 生成。
:::

**证明**：由于 $S$ 是 Noether 环，因此 $I$ 作为理想也是有限生成的：$I=\langle f_1,\cdots,f_r\rangle$。实际上这些 $f_i$ 都可以取自 $R^+$（若不然，把 $f_i$ 写成 $g_i \in R^+$ 的 $S$- 线性组合，并用这些 $g_i$ 替换），而且都可以取为齐次多项式（若不然，就用齐次分量替换）

现在我们断言 $R$ 作为代数由 $1,f_1,\dots,f_r$ 生成。为此只要对 $f\in R$ 且 $f$ 是齐次多项式证明即可。

对 $\deg f$ 归纳：如果 $\deg f=0$ 那么 $f$ 是常数多项式，无所可证。

现假设 $\deg f>0$ 且 $R$ 中任何次数小于 $\deg f$ 的齐次多项式都属于 $K[f_1.\cdots,f_r]$，由于 $f$ 是正次数的齐次多项式因此 $f\in R^+\subset I$，于是存在 $p_1,\cdots,p_r\in S$ 使得

$$f=p_1f_1+\cdots+p_rf_r.$$

这里的 $p_1,\cdots,p_m$ 仍然可以取为齐次多项式，次数为 $\deg p_i=\deg f-\deg f_i$（$p_i$ 中其它次数的单项式互相抵消，实际上不起作用）。两边同时用 Reynolds 算子作用：

$$f = p_1^\sharp f_1+\cdots+p_r^\sharp f_r.$$

每个 $p_i^\sharp$ 都是齐次不变多项式，且次数不超过 $p_i$，根据归纳假设它们都是 $f_1,\cdots,f_r$ 的多项式，于是 $f$ 自然也是 $f_1,\cdots,f_r$ 的多项式。$\blacksquare$


# 3.4 The key lemma

记 $R=S^W$ 是不变多项式环。$I=R^+ S$ 是正次数不变多项式生成的理想。

:::{.lemma}
设 $f_1,\ldots,f_r\in R$ 且 $f_1\notin\langle f_2,\ldots,f_r\rangle R$。如果 $S$ 中的齐次多项式 $g_1,\ldots, g_r$ 满足
$$f_1g_1 +\cdots + f_rg_r=0.$$
则 $g_1\in I$。
:::

首先我们证明 $f_1\notin \langle f_2,\ldots,f_r\rangle S$。即 $f_1$ 也不属于 $\{f_1,\ldots,f_r\}$ 在 $S$ 中生成的理想。若不然，设
$$f_1 = \sum_{i=2}^r f_ih_i,\quad h_i\in S.$$
两边用 Reynold 算子作用，得到
$$f_1 = \sum_{i=2}^r f_ih_i^\sharp.$$
右边是一个 $\langle f_2,\ldots,f_r\rangle R$ 中的元素，与已知矛盾。所以确实有 $f_1\notin \langle f_2,\ldots,f_r\rangle S$。

然后我们证明 $g_1\in I$，如果 $g_1=c$ 是常数，那么 $c=0$ 的话自然有 $g_1\in I$，$c\ne 0$ 的话会导致 $f_1\in \langle f_2,\ldots,f_r\rangle S$，不可能。所以只要考虑 $\deg g_1>0$。

任取反射 $s$，设线性式 $l$ 满足 $sg_i - g_i = lh_i$。则 $\deg h_i < \deg g_i$。然后在 $\sum f_ig_i=0$ 两边用 $s$ 作用，利用 $f_i$ 是 $W$- 不变的，得到
$$\sum f_i (s\cdot g_i)=0\Rightarrow \sum f_i (s\cdot g_i - g_i)=0\Rightarrow \sum f_i h_i=0.$$
可以对 $\deg h_1<\deg g_1$ 使用归纳假设得到 $h_1\in I$。于是
$$sg_1 - g_1 = lh_i\in I.$$
由 $s$ 任意性，对任何 $w\in W$ 有
$$wg_1\equiv g_1\pmod I.$$
进一步
$$g_1^\sharp\equiv g_1\pmod I.$$
但是 $g_1^\sharp$ 也是齐次多项式，要么具有正次数，要么是 0，从而 $g_1^\sharp\in I$，于是 $g_1\in I$。$\blacksquare$


# 3.5 Chevalley's theorem

:::{.theorem}
$R=S^W$ 是一个多项式代数，由 $n$ 个代数无关的齐次多项式 $f_1,\ldots,f_n$ 生成。
:::

我们已经知道理想 $I=R^+S$ 的一组齐次生成元就是 $R$ 的一组代数生成元。所以只要再证明 $f_1,\ldots,f_r$ 是代数无关的即可，这样由 $S:R$ 是代数扩张即得 $r=n$。 

证明还是用经典的反证法，取一个次数最低的、非平凡的代数关系 $h(y_1,\ldots,h_r)$ 使得
$$h(f_1,\ldots,f_r)=0.$$
我们来由此推导一个次数更低的、同样非平凡的代数关系，从而得出矛盾。

设 $y_1^{e_1}\cdots y_r^{e_r}$ 是 $h$ 中出现的任何一个单项式，代入 $f_1,\ldots,f_r$ 以后并展开，得到的结果关于 $x_1,\ldots,x_n$ 的次数是
$$d = \sum_{i=1}^r d_ie_i,\quad d_i=\deg f_i.$$
所有满足上述等式的单项式会抵消掉。所以我们不妨假设 $h$ 中的单项式都满足上述等式。即 $h$ 虽然未必关于 $y_1,\ldots,y_r$ 齐次，但是代入 $f_1,\ldots,f_r$ 以后关于 $x_1,\ldots,x_n$ 是齐次的，并且次数是 $d$。

固定 $k$，我们在
$$h(f_1,\ldots,f_r) = 0.$$
两边关于 $x_k$ 求偏导数。注意，上式左边已经是关于 $x_1,\ldots,x_n$ 的次数为 $d$ 的齐次多项式。由链式法则，有
$$\sum_{i=1}^r\frac{\partial h}{\partial y_i}(f_1,\ldots,f_r)\cdot \frac{\partial f_i}{\partial x_k}=\sum_{i=1}^r h_i \frac{\partial f_i}{\partial x_k} = 0.\quad h_i = \frac{\partial h}{\partial y_i}(f_1,\ldots,f_r).$$
$h_i$ 是次数为 $d-d_i$ 的齐次多项式。不妨设 $h_1,\ldots,h_m$ 是理想 $\langle h_1,\ldots,h_r\rangle R$ 的最小生成集。于是 $h_{m+1},\ldots,h_r$ 中的每一个都可以写成 $h_1,\ldots,h_m$ 的 $R$- 线性组合。对每个 $i>m$，设
$$h_i=\sum_{j=1}^m g_{ij}h_j,\quad g_{ij}\in R.$$
由于每个 $h_i$ 是次数为 $d-d_i$ 的齐次多项式，因此抛弃不必要的单项式以后我们可以假定 $g_{ij}$ 是次数为 $d_j-d_i$ 的齐次多项式。代入前面的求和整理得到
$$\sum_{i=1}^mh_i\left(\frac{\partial f_i}{\partial x_k}+\sum_{j=m+1}^r g_{ji}\frac{\partial f_j}{\partial x_k}\right)=0.$$
我们把括号里的多项式简记作 $p_i$，则 $p_i$ 是关于 $x_1,\cdots,x_r$ 次数为 $d_i-1$ 的齐次多项式，总之我们可以用 section 3.4 的关键引理得到 $p_1\in I$。
$$\frac{\partial f_1}{\partial x_k}+\sum_{j=m+1}^rg_{j1}\frac{\partial f_j}{\partial x_k}=\sum_{i=1}^r f_iq_i.$$
其中 $q_i\in S$。给这个式子乘以 $x_k$ 再对所有 $k$ 求和，就可以用 Euler 公式得到
$$d_1f_1+\sum_{j=m+1}^r d_jg_{j1}f_j=\sum_{i=1}^r f_ir_i.$$
这里每个 $\deg r_i>0$ 都是齐次多项式。这个式子左边是次数为 $d_1$ 的齐次多项式，所以右边也是。如果 $r_1\ne 0$ 的话，则 $\deg f_1r_1>\deg f_1$，从而 $f_1r_1$ 的每一项都与右边后面的项抵消掉，从而 $f_1$ 属于 $f_2,\ldots,f_r$ 生成的理想，矛盾！

# 3.7 Uniqueness of the degrees

这一节介绍了不变多项式环 $S^G$ 的任何一组齐次生成元的次数 $d_1,d_2,\ldots,d_n$ 是唯一确定的。证明不难，但是采用的方法很典型，以后会反复用到。

:::{.lemma .unnumbered}
设 $f_1,\ldots,f_n\in K[x_1,\ldots,x_n]$ 是一组齐次、代数无关的多项式；其次数分别为 $d_1,\ldots,d_n$；$g_1,\ldots,g_n$ 是另一组齐次、代数无关的多项式，次数分别为 $e_1,\ldots,e_n$，并且每个 $g_i$ 可以写成 $f_1,\ldots,f_n$ 的多项式，则适当重排以后有 $e_i\geq d_i$。
:::

证明：利用链式法则对导可得
$$\jac{g_i}{x_k} = \sum_{j=1}^n \jac{g_i}{f_j}\jac{f_j}{x_k}.$$

由于 $g_1,\ldots,g_n$ 代数无关，根据 Jacobian 判定左边的矩阵 $\left(\jac{g_i}{x_k}\right)$ 可逆，从而右边的矩阵 $\left(\jac{g_i}{f_j}\right)$ 也可逆，其行列式非零，于是存在置换 $\pi$ 使得
$$\prod_{i=1}^n\jac{g_i}{f_{\pi(i)}}\ne0.$$
适当重排 $g_1,\ldots,g_n$ 以后可以不妨设 $\pi$ 是恒等置换，即
$$\prod_{i=1}^n\jac{g_i}{f_{i}}\ne0.$$
这说明每个 $\jac{g_i}{f_i}\ne0$，即当把 $g_i$ 写成 $f_1,\ldots, f_n$ 的多项式时，$f_i$ 一定出现在其中。于是至少存在一个形如
$$f_1^{k_1}\cdots f_n^{k_n},\quad k_i\geq 1$$
的单项式，它出现在 $g_i$ 的表达式中，并且不会被抵消掉。从而 $e_i=\sum k_id_i\geq d_i$。$\blacksquare$

:::{.corollary .unnumbered #unique-degrees}
$S^G$ 的任何一组齐次、代数无关生成元的次数是唯一却定的。
:::

# 3.10 Jacobian criterion for algebraic independence


:::{.theorem}
设 $f_1,\cdots,f_n\in F[x_1,\ldots,x_n]$，其中 $F$ 是特征为 0 的域。定义 Jacobi 矩阵
$$J=\left( \frac{\partial f_i}{\partial x_j}\right)_{n\times n}.$$
则 $f_1,\cdots,f_n$ 代数相关的充要条件是 $\det J\equiv0$。
:::

**证明**：如果 $\det J$ 不恒为 0，我们来证明 $f_1,\cdots,f_n$ 是代数无关的。若不然则存在非常数的多项式 $p(y_1,\cdots,y_n)$ 使得
$$p(f_1,\cdots,f_n)=0.$$
我们可以假设 $p$ 是所有这样的多项式中次数最低的。对每个 $x_j$ 求导得到 $n$ 个方程
$$\sum_{i=1}^n\frac{\partial p }{\partial y_i}(f_1,\cdots,f_n)\cdot\frac{\partial f_i}{\partial x_j}=0,\quad j=1,2,\ldots,n.$$

这是一个有理函数域 $F(x_1,\cdots,x_n)$ 上的齐次线性方程组，系数矩阵为 $J$，$n$ 个 未知量为
$$\frac{\partial p}{\partial y_i}(f_1,\cdots,f_n),\quad i=1,\ldots,n.$$

由于 $\det J\ne0$，因此这个方程组只有零解，但是所有的 $\partial p/\partial{y_i}$ 不全为 0（因为 $p$ 不是常数），不妨设 $\partial p/\partial y_1\ne0$，则它的次数小于 $p$ 且满足
$$\frac{\partial p}{\partial y_1}(f_1,\cdots,f_n)=0.$$
这与 $p$ 的选取矛盾！

反过来，若 $f_1,\cdots,f_n$ 是代数无关的，由于 $n$ 变元有理多项式域的超越次数是 $n$，因此对任何 $i$，$\{x_i,f_1,\cdots,f_n\}$ 都是代数相关的。设 $h_i(y_0,y_1,\cdots,y_n)$ 为极小正次数多项式使得

$$h_i(x_i,f_1,\ldots,f_n)=0.$$

在上式中对 $x_k$ 求偏导得到

$$\sum_{j=1}^n \frac{\partial h_i}{\partial y_j}(x_i,f_1,\cdots,f_n)\frac{\partial f_j}{\partial x_k}+\frac{\partial h_i}{\partial y_0}(x_i,f_1,\cdots,f_n)\delta_{ik}=0.$$

写成矩形形式就是

$$\left(\frac{\partial h_i}{\partial y_j}(x_i,f_1,\cdots,f_n)\right)\cdot J=\left(-\delta_{ij}\frac{\partial h_i}{\partial y_0}(x_i,f_1,\cdots,f_n)\right).$$

由于这些 $f_j$ 是代数无关的，$h_i$ 关于 $y_0$ 必然是正次数，因此 $\partial h_i/\partial y_0$ 的次数严格小于 $h_i$，从而它在 $(x_i,f_1,\cdots,f_n)$ 处的值不为 0（否则与 $h_i$ 的选取矛盾）。所以上式右边是一个行列式不为 0 的对角矩阵， 所以 $\det J$ 也不等于 0。

 


# 3.16 Coxeter elements

我们来证明任何两个 Coxeter 元都是共轭的。我们只要取一个特殊的 Coxeter 元，并证明其它 Coxeter 元都和这个特殊元共轭即可。

首先，取 Coxeter 图 $\Gamma$ 的一个叶节点，将其记作 $s_n$。从 $\Gamma$ 中移走 $s_n$ 以后，剩下的部分 $\Gamma_1=\Gamma-\{s_n\}$ 仍然是一个树，于是我们又可以取其叶节点，记作 $s_{n-1}$。$\Gamma_1-\{s_{n-1}\}$ 仍然是树，又可以取其一个叶节点 $s_{n-2}$，以此类推。即我们将生成元排列为 $s_1,\ldots,s_n$，使得对每个 $1\leq i\leq n$，$s_1,\ldots,s_i$ 构成 $\Gamma$ 的一个子树，并且 $s_i$ 是这个树的叶节点。

首先我们注意到任何 Coxeter 元都可以通过循环移位共轭于某个以 $s_n$ 结尾的 Coxeter 元 $s_{i_1}\cdots s_{i_{n-1}}s_n$，我们来证明这样的元素都共轭于 $s_1s_2\cdots s_n$。

:::{.lemma .unnumbered}
任何形如 $s_{i_1}\cdots s_{i_{n-2}}{\color{blue}s_{i_{n-1}}}s_n$ 的 Coxeter 元共轭于
$${\color{blue}s_{i_{n-1}}}s_{i_1}\cdots s_{i_{n-2}}s_n.$$
:::

**证明**：如果 $s_{i_{n-1}}$ 与 $s_n$ 交换，那么
$$s_{i_1}\cdots s_{i_{n-2}}\textcolor{blue}{s_{i_{n-1}}}s_n\to s_{i_1}\cdots s_{i_{n-2}}s_n\textcolor{blue}{s_{i_{n-1}}}\to \textcolor{blue}{s_{i_{n-1}}}s_{i_1}\cdots s_{i_{n-2}}s_n.$$
结论成立。否则 $s_n$ 唯一的边是与 $s_{i_{n-1}}$ 连接，从而 $s_n$ 与 $\{s_{i_1},\ldots,s_{i_{n-2}}\}$ 都交换，所以
$$\begin{aligned}
s_{i_1}\cdots s_{i_{n-2}}\textcolor{blue}{s_{i_{n-1}}}\textcolor{red}{s_n}&\to\textcolor{red}{s_n}s_{i_1}\cdots s_{i_{n-2}}\textcolor{blue}{s_{i_{n-1}}}
\to s_{i_1}\textcolor{red}{s_n}\cdots s_{i_{n-2}}\textcolor{blue}{s_{i_{n-1}}}\\
&\to s_{i_1}\cdots s_{i_{n-2}}\textcolor{red}{s_n}\textcolor{blue}{s_{i_{n-1}}}\\
&\to\textcolor{blue}{s_{i_{n-1}}}s_{i_1}\cdots s_{i_{n-2}}\textcolor{red}{s_n}.
\end{aligned}$$
结论同样成立。$\blacksquare$

:::{.lemma .unnumbered}
设 $k\geq1$，任何形如 $s_{i_1}\cdots\textcolor{blue}{s_{i_{n-k}}} s_{n-k+1}\cdots s_n$ 的 Coxeter 元都共轭于
$$\textcolor{blue}{s_{i_{n-k}}} s_{i_1}\cdots s_{i_{n-k-1}}s_{n-k+1}\cdots s_n.$$
:::

**证明**：$k=1$ 的情形在前一个的引理中已经证明了。对 $k\geq2$ 用归纳法，假设结论对小于 $k$ 的情形成立。

如果 $s_{i_{n-k}}$ 和 $s_{n-k+1}$ 交换，那么
$$s_{i_1}\cdots \textcolor{blue}{s_{i_{n-k}}} s_{n-k+1}\cdots s_n\to s_{i_1}\cdots s_{n-k+1}\textcolor{blue}{s_{i_{n-k}}}\cdots s_n.$$

然而对 $k-1$ 的情形应用归纳假设，上面右边共轭于
$$\textcolor{blue}{s_{i_{n-k}}} s_{i_1}\cdots s_{n-k+1}\cdots s_n.$$
于是结论成立。

如果 $s_{i_{n-k}}$ 和 $s_{n-k+1}$ 不交换，那么 $s_{n-k+1}$ 和所有 $s_{i_1}\sim s_{i_{n-k-1}}$ 都交换，于是直接用归纳假设有
$$s_{i_1}\cdots\textcolor{blue}{s_{i_{n-k}}}\textcolor{red}{s_{n-k+1}}\cdots s_n\to
\textcolor{red}{s_{n-k+1}}s_{i_1}\cdots\textcolor{blue}{s_{i_{n-k}}}\cdots s_n\to s_{i_1}\cdots\textcolor{red}{s_{n-k+1}}\textcolor{blue}{s_{i_{n-k}}}\cdots s_n.$$
再一次应用归纳假设，上面右边共轭于
$$\textcolor{blue}{s_{i_{n-k}}}s_{i_1}\cdots\textcolor{red}{s_{n-k+1}}\cdots s_n.$$
结论同样成立。$\blacksquare$

这样一来，下面的结论就是显然的了：

:::{.theorem .unnumbered}
任何 Coxeter 元都共轭于 $s_1\cdots s_n$。
:::

# 3.17 Acting on a plane

设 $A=(a_{ij})_{1\leq i,j\leq n}=((\alpha_i,\alpha_j))$ 是 Cartan 矩阵，$\{\omega_i\}_{i=1}^n$ 是关于 $\Delta=\{\alpha_i\}_{i=1}^n$ 的对偶基。$A$ 正是 $V$ 上线性变换 $\bf A$ 在基 $\{\omega_i\}$ 下的矩阵：
$$a_{ij}=(\alpha_i,\alpha_j)=({\bf A}\omega_i,\alpha_j).$$
我们知道矩阵 $A$ 有一个特征值 $c$，它对应的特征向量 $(c_1,\ldots, c_n)$ 的分量 $c_i$ 都是大于 0 的，于是 $\sum_{i=1}^nc_i\omega_i$ 是变换 ${\bf A}$ 的特征向量：
$${\bf A}\sum_{i=1}^nc_i\omega_i = \sum_{i=1}^ncc_i\omega_i.$$
另一方面 ${\bf A}\sum_{i=1}^nc_i\omega_i=\sum_{i=1}^nc_i\alpha_i$，所以
$$\sum_{i=1}^nc_i\alpha_i = \sum_{i=1}^ncc_i\omega_i.$$
两边用某个 $\alpha_j,\,(j\in J)$ 作内积，并注意到 $\alpha_j$ 与 $J$ 中除自己之外其它 $J$ 中的 $\alpha_i$ 正交，得到
$$cc_j=\sum_{i=1}^nc_i(\alpha_i,\alpha_j)=c_j + \sum_{i\in I}c_ia_{ij}.$$
即
$$(c-1)c_j = \sum_{i\in I}c_ia_{ij}.$$
两边乘以 $\omega_j$ 并对 $j\in J$ 求和，然后交换和号得到
$$\begin{aligned}
(c-1)\sum_{j\in J}c_j\omega_j &= \sum_{j\in J}\left(\sum_{i\in I}c_ia_{ij}\right)\omega_j\\
&=\sum_{i\in I}c_i\left(\sum_{j\in J}a_{ij}\omega_j\right)\\
&=\sum_{i\in I}c_i\left(\sum_{j=1}^n a_{ij}\omega_j- \sum_{j\in I}a_{ij}\omega_j\right)\\
&=\sum_{i\in I}c_i\left(\alpha_i- \sum_{j\in I}a_{ij}\omega_j\right)\\
&=\sum_{i\in I}c_i\left(\alpha_i- \omega_i-\sum_{j\in I,\,j\ne i}\underbrace{a_{ij}}_{=0}\omega_j\right)\\
&=\sum_{i\in I}c_i\left(\alpha_i- \omega_i\right)\\
&=\sum_{i\in I}c_i\alpha_i- \mu.\\
\end{aligned}$$
即 $(c-1)\nu + \mu = \sum_{i\in I}c_i\alpha_i$。注意到 $\sum_{i\in I}c_i\alpha_i$ 被 $x=\prod_{i\in I}s_i$ 映射为它的负 $-\sum_{i\in I}c_i\alpha_i$。此外 $x$ 保持 $\nu$ 不动，所以 $x$ 保持 $\mu,\nu$ 生成的二维子空间 $P$ 不变。$x$ 作为 $P$ 上的正交变换保持直线 $\nu$ 上的点不动，所以 $x$ 限制在 $P$ 上是一个反射。同理 $y$ 也是如此。所以 $w^t=xy$ 在 $P$ 上的作用是一个旋转。设这个旋转角度是 $2\pi/h$，则 $w^t$ 在 $P$ 上的阶是 $h$。

又因为 $\mu+\nu$ 严格属于 $C\cap P$，所以它在 $w^t$ 作用下一定在 $V$ 中有 $k$ 个不同的像，即 $P$ 上的阶等于它在 $V$ 上的阶。

# 3.18 The Coxeter number

这一节证明了如下结论：对一个有限 Coxeter 群，正根的个数 $N=|\Phi^+|$，Coxeter 数 $h$，单根的个数 $n=|\Delta|$ 满足
$$N = \frac{nh}{2}.$$

回忆 $y=s_1\cdots s_r,z=s_{r+1}\cdots s_n$ 在 $P$ 上的作用都是反射，它们在 $P$ 上生成的群是二面体群 $I_2(h)$，这个群包含 $h$ 个反射和 $h$ 个旋转。记 $I_2(h)$ 中的 $h$ 个反射对应的超平面在 $P$ 上的截线分别是 $L_1,\ldots,L_h$，这些 $L_i$ 是 $I_2(h)$ 作用在直线 $L=\mathbb{R}\lambda$ 和 $M=\mathbb{R}\mu$ 上得到的。设 $\beta\in\Phi$，我们来分析 $\beta$ 对应的超平面 $H_\beta$ 在 $P$ 上的截线是什么。

:::{.lemma .unnumbered}
对任何 $\beta\in\Phi$，$H_\beta\cap P\in \{L_1,\ldots,L_h\}$。
:::

证明：首先注意到 $P$ 不可能包含在 $H_\beta$ 中。因为 $P$ 和基本区域
$$C=\{v\in V\mid (\alpha, v)>0 \text { for all }\alpha\in\Delta\}$$
的交是
$$P\cap C=\{a\lambda + b\mu\mid a>0,b>0\}.$$
它当然是非空的，而 $H_\beta$ 不可能包含 $C$ 中的点，所以 $H_\beta\cap P$ 是 $P$ 的一条截线。

其次如果这条截线不是上述 $\{L_i\}$ 任何之一，那么我们可以用 $y,z$ 的某个组合将其变换到 $P\cap C$ 中，这相当于用某个 $w\in I_2(h)$ 使得 $\gamma=w\beta$ 的超平面 $H_\gamma$ 与 $P$ 的交线穿过 $P\cap C$，这与任何根的镜面与 $C$ 之交为空集矛盾。$\blacksquare$

我们只要讨论哪些 $H_\beta$ 满足 $H_\beta\cap P =L$ 或者 $H_\beta\cap P =M$ 即可。其它的 $L_i$ 由于形如 $L_i=wL$ 或者 $L_i=wM$，这里 $w\in I_2(h)$，所以对应的是 $wH_\beta$。

如果 $H_\beta\cap P = L$，则反射 $s_\beta$ 保持 $L$ 不动。这时 $(\beta,\lambda=0)$。设 $\beta=\sum\limits_{i=1}^n a_i\alpha_i (a_i\geq 0)$，由于 $\lambda=\sum_{i\in I}c_i\omega_i$，所以
$$(\beta,\lambda) = \sum_{i\in I} a_ic_i= 0.$$
由于 $c_i(1\leq i\leq n)$ 都是正的，所以必须对每个 $i\in I$ 有 $a_i=0$，即 $\beta$ 是 $\{\alpha_j,j\in J\}$ 的线性组合，从而 $\beta$ 属于标准椭圆子群 $J$ 的根系 $\Phi_J$。但是 $J$ 中的生成元两两交换，$\Phi_J$ 中的正根只有 $\{\alpha_j,j\in J\}$，所以满足 $H_\beta\cap P=L$ 的正根 $\beta$ 有 $|J|=n-r$ 个。

同样的分析可得满足 $H_\beta\cap P=M$ 的正根 $\beta$ 有 $|I|=r$ 个。

当 $h$ 是偶数时，$I_2(h)$ 在 $\{L_1,\ldots,L_h\}$ 上的作用分成两个长度同为 $h/2$ 的轨道，分别由 $L$ 和 $M$ 生成，$L$ 所在的轨道每个超平面来自 $n-r$ 个正根，$M$ 所在的轨道每个超平面来自 $r$ 个正根，所以一共是 $h(n-r)/2 + hr/2 = nh/2=N$ 个正根。

当 $h$ 是奇数时，$I_2(h)$ 传递地作用在 $\{L_1,\ldots,L_h\}$ 上，所以 $L$ 和 $M$ 来自同样数目的正根，即 $r=n-r$，所以 $r=n/2$。同样地 $N=nh/2$。

这里需要对 $h$ 的奇偶性分别讨论是因为在二面体群中，奇数时两个生成元是共轭的，偶数时则不共轭。


# 3.19 Eigenvalues of Coxeter elements

设 $u,v$ 是 Coxeter 平面 $P$ 的一组正交基，则 $z=u+iv$ 是 $w$ 在 $V_{\mathbb{C}}$ 上的特征向量，特征值为 $e^{2\pi i/h}$。对任何 $\beta\in\Phi^+$，$(\beta,z)=(\beta,u) + (\beta,v)i\ne 0$，否则会导致 $P\in H_\beta$，与 $P\cap C$ 非空矛盾。

设 $\{v_i\}$ 是 $V$ 的一组基，$\{x_i\}\in V^\ast$ 是对偶基：$x_i(v_j)=\delta_{ij}$。$x_1,\cdots,x_n$ 是坐标函数，它们是代数无关的：$\mathbb{C}[x_1,\cdots,x_n]$ 是一个多项式环。我们把 $\mathbb{C}[x_1,\cdots,x_n]$ 称作 $V$ 上的坐标环，简记作 $\mathbb{C}[V]$。设 $G\subset GL(V)$ 是一个有限的可逆线性变换群，则 $G$ 也作用在 $\mathbb{C}[V]$ 上：对任何多项式 $f\in \mathbb{C}[V]$，定义 $g$ 在 $f$ 上作用的结果 $g\cdot f$ 为

$$g\cdot f(v)=f(g^{-1}v).$$
对 $f=\sum a_{i_1\cdots i_n}x_1^{i_1}\cdots x_n^{i_n}\in\mathbb{C}[V]$，$f$ 在 $v=\sum_{i}c_iv_i$ 处的值为
$$f(v)=\sum a_{i_1\cdots i_n}x_1(v)^{i_1}\cdots x_n(v)^{i_n} = \sum a_{i_1\cdots i_n}c_1^{i_1}\cdots c_n^{i_n}.$$
于是如果不含常数项的多项式 $f\in\mathbb{C}[V]$ 满足 $f(v_1)\ne 0$，则若 $f=\sum a_{i_1\cdots i_n}x_1^{i_1}\cdots x_n^{i_n}$，我们有
$$0\ne f(v_1)=\sum a_{i_1\cdots i_n}x_1^{i_1}\cdots x_n^{i_n}\mid_{x_1=1,x_2=\cdots=x_n=0}.$$
即 $f$ 的单项式里面必有一项只含有 $x_1$。

进一步，如果 $\jac{f}{x_i}$ 满足 $\jac{f}{x_i}(v_1)\ne0$，那就说明 $f$ 的单项式里面必有一项形如 $ax_1^{m}x_i$，即 $f$ 形如 $f=ax_1^mx_i + \cdots$。

设 $T$ 是 $V$ 上可对角化的线性变换，$Tv_i=\lambda_i v_i$，则 $Tx_i=\lambda_i^{-1}x_i$。并且设 $f$ 是 $T$- 不变的多项式，则
$$f=T\cdot f = a\lambda_1^{-m}x_1^m\lambda_i^{-1}x_i + \cdots.$$
比较即得
$$ax_1^mx_i = a\lambda_1^{-m}x_1^m\lambda_i^{-1}x_i.$$
即 $1 = \lambda_1^{-m}\lambda_i^{-1}$，从而 $\lambda_i = \lambda_1^{-m}$。

对 Coxeter 元 $w$，它的特征值是 $\{\zeta^{m_i},\,1\leq i\leq n\}$，并且 $m_1=1,m_{n-1}=h-1$。$m_1=1$ 对应的是 $w$ 的重数为 1 的特征值 $\zeta$。

以 $w$ 的特征向量为基，由于 $\zeta$ 对应的特征向量 $v_1$ 在 $C$ 内，它不在任何根平面 $H_\alpha$ 上，所以 Jacobian $J=\det\left(\jac{f_i}{x_j}\right)$ 在 $v_1$ 处不为 0，于是某个 $\prod_{i=1}^n \jac{f_i}{x_{\pi(j)}}$ 在 $v_1$ 处不为 0，适当重排 $f_i$ 以后可以不妨设每个 $\jac{f_i}{x_i}(v_1)\ne0$。根据上面的讨论，$f_i$ 形如
$$f_i=ax_1^{d_i-1}x_i+\cdots.$$
并且 $\lambda_i=\zeta^{m_i}=\zeta^{1-d_i}$。
从而 $h-m_i\equiv d_i-1\pmod h$。我们知道对每个 $i$ 有 $0<h-m_i<h$，所以对每个 $i$ 有 $d_i-1\geq h-m_i$。另一方面，集合 $\{h-m_i\}$ 不过是集合 $\{m_i\}$ 的一个置换，所以
$$\sum (h-m_i) = \sum m_i = \sum(d_i-1).$$
这只能是对每个 $i$ 有 $h-m_i=d_i-1$，即集合相等 $\{d_i-1\}=\{m_i\}$。

# 4.4 Counting hyperplanes

回忆 $\mathcal{H}$ 是所有超平面 $\{H_{\alpha,k}\mid \alpha\in\Phi,k\in\mathbb{Z}\}$ 组成的集合。其中
$$H_{\alpha,k}=\{v\in V\mid (\alpha,v)=k\}.$$

:::{.lemma .unnumbered}
$H_s$ 是 $\mathcal{H}$ 中唯一分隔 $A_o$ 和 $sA_o$ 的超平面，即 $\L(s)=\{H_s\}$。
:::

证明：我们先说明对任何正根 $\beta\ne\alpha_s$，以及任何 $k\in\mathbb{Z}$，$A_o$ 和 $sA_o$ 都在超平面 $H_{\beta,k}$ 的同一侧。

首先根据 $A_o$ 的刻画，它满足对任何正根 $\gamma$ 都有 $0<(A_o,\gamma)<1$，特别地 $0<(A_o,\beta)<1$。由于 $\beta\ne\alpha_s$ 所以 $s\beta$ 仍然是正根，因此
$$0<(A_o,s\beta)<1\Longrightarrow 0<(sA_o,\beta)<1.$$
这说明 $A_o$ 和 $sA_o$ 在 $H_\beta$ 和 $H_{\beta,1}$ 围成的带状区域中间。所以对任何 $k$ 它们都在 $H_{\beta,k}$ 的同一侧。

另一方面不难看出 $-1 < (sA_o,\alpha_s)<0$，也就是说 $sA_o$ 和 $A_o$ 位于 $H_{\alpha_s,0}$ 的两侧，但是对任何 $k\ne0$，它们位于 $H_{\alpha_s,k}$ 的同侧。

:::{.proposition .unnumbered}
固定 $s\in S_a$。对任何 $w\in\widehat{W_a}$，有如下结论成立：

- $H_s$ 恰好属于 $\L(w)$ 和 $\L(sw)$ 之一。
- $s(\L(w)\setminus\{H_s\}) = \L(sw)\setminus\{H_s\}$。

:::

证明：第一点是显然的，因为 $wA_o$ 和 $swA_o$ 位于 $H_s$ 的两侧，它俩有且恰有一个和 $A_o$ 位于 $H_s$ 的同一侧。

对于第二点，我们要证明的是 $H\leftrightarrow sH$ 给出了 $\L(w)$ 和 $\L(sw)$ 中除 $H_s$ 之外的超平面的一一对应。然而若 $H\ne H_s$，根据上面的引理，$A_o$ 和 $sA_o$ 位于 $H$ 的同一侧，所以

$$H\in\L(w)\Longleftrightarrow \begin{matrix}A_o\\ sA_o\end{matrix}\stackrel{H=0}{\biggl\lvert} wA_o \Longleftrightarrow \begin{matrix}sA_o\\ A_o\end{matrix}\stackrel{sH=0}{\biggl\lvert} swA_o.$$
可见 $sH\in \L(sw)$ 并且显然 $sH\ne H_s$。此即为所证。


# 4.9 A formula for the order of $W$

从前面的学习中我们知道，一个仿射 Weyl 群 $W_a$ 总是可以写成一个有限 Weyl 群 $W$ 和一个格点群 $L$ 的半直积：$W_a=W\ltimes L$。这里的 $L$ 实际上是 $W$ 的余根格点：$L=L(\Phi^\vee)$。这一节介绍了怎样计算 $W$ 的阶 $|W|$。

我们以 $\widetilde{B}_2$ 为例来说明。$\Delta$ 包含两个单根 $\alpha_1=e_1-e_2,\,\alpha_2=e_2$。最高根 $\widetilde{\alpha}=\alpha_1+2\alpha_2$，于是 $c_1=1,c_2=2$。

<img style="margin:0px auto;display:block" width="500" src="/images/humphreys/b2.svg" />

+ 图中**黄色**区域是由所有的房间 $\{wA_o\mid w\in W\}$ 组成。即 $\Pi=\bigcup_{w\in W}wA_o$。另一个等价的描述是
  $$ \Pi = \{x\in V\mid -1 < (x,\alpha) < 1 \text{ for all } \alpha\in\Phi^+\}.$$
  所以 $\vol(\Pi)= |W|\cdot\vol(A_o)$。$\Pi$ 是余根格点 $L(\Phi^\vee)$ 的基本区域，因为书中已经证明了 $W_a=W\ltimes L$，并且 $A_o$ 是 $W_a$ 作用下的基本区域，所以 $\Pi$ 在 $L$ 的作用下互不相交，并且密铺了整个平面。
+ 图中**绿色**区域是余权格点 $\hat{L}(\Phi^\vee)$ 的基本区域 $\hat{\Pi}$，它是一个平行多面体，由基本余权 $\{\omega_1,\ldots,\omega_n\}$ 张成，并且 $\dfrac{ \vol(\Pi)}{\vol(\hat{\Pi}) } = f$。
+ 基本区域 $A_o$ 是由 $\left\{0,\dfrac{\omega_1}{c_1},\ldots,\dfrac{\omega_n}{c_n}\right\}$ 生成的单纯形，它和 $\{\omega_1,\ldots,\omega_n\}$ 生成的平行多面体 $\hat{\Pi}$ 的体积关系为
  $$\vol(\hat{\Pi}) = n!c_1\cdots c_n\cdot\vol(A_o).$$
+ 综上可得
  $$\dfrac{ \vol(\Pi)}{\vol(\hat{\Pi}) } = \frac{|W|\vol(A_o)}{n!c_1\cdots c_n\cdot\vol(A_o)}=f.$$
  即 $|W| = n!c_1\cdots c_n f$。


# 5.9 Bruhat ordering

这一节介绍了 Bruhat 序，以及重要的 lifting property。Humphreys 书中是先介绍的 lifting property，然后在下一小节证明子表达式定理。实际上，如果我们采用 Bjorner and Brenti 教材的处理方式，先证明子表达式定理的话，那么 lifting property 更好证。

:::{.proposition .unnumbered #lifting}
**Lifting property**

设 $u< w$，$s\in S$ 满足 $sw<w$ 和 $su>u$，则 $u\leq sw$ 并且 $su\leq w$。
:::

证明：用 $\alpha\prec\beta$ 表示 word $\alpha$ 是 word $\beta$ 的子表达式。设 $sw=s_1\cdots s_q$ 是 $sw$ 的一个既约表示。由于 $sw<w$，所以 $w=ss_1\cdots s_q$ 也是既约表示。又因为已知 $u<w$，所以根据子表达式定理，存在 $u=s_{i_1}\cdots s_{i_k}$ 的某个既约表示满足
$$s_{i_1}\cdots s_{i_k}\prec ss_1\cdots s_q.$$
又已知 $su>u$，所以 $s\ne s_{i_1}$，从而
$$u=s_{i_1}\cdots s_{i_k}\prec s_1\cdots s_q=sw.$$
这意味着
$$su=ss_{i_1}\cdots s_{i_k}\prec ss_1\cdots s_q=w,$$
从而 $u\leq sw$ 且 $su\leq w$。$\blacksquare$


:::{.corollary .unnumbered}
设 $u\ne w$，则存在 $x$ 满足 $u<x$ 且 $w<x$。
:::

**证明**：对 $l(u)+l(w)$ 归纳。$l(u)+l(w)=0$ 时结论是显然的。假设结论对小于 $l(u)+l(w)$ 的情形已经成立。取 $s\in S$ 使得 $su<u$，则根据归纳假设，存在 $y$ 使得 $su<y$ 且 $w<y$。

1. 如果 $sy<y$，那么由提升引理，$u<y$，从而 $y$ 就是所求的 $x$。
2. 如果 $sy>y$，那么 $sy$ 就是所求的 $x$。

$\blacksquare$

这个推论的一个直接结论是，任何有限 Coxeter 群中必有 Bruhat 序下唯一的极大元 $w_0$。$w_0$ 必然满足 $w_0^2=1$，因为如果 $w_0\ne w_0^{-1}$ 的话，它们就会还有一个更大的覆盖元。

:::{.corollary .unnumbered}
如果 $w\in W$ 满足对任何 $s\in S$ 都有 $sw<w$，则 $W$ 必然是有限群，并且 $w=w_0$ 是极大元。
:::
**证明**：我们对 $l(x)$ 归纳证明对任何 $x\in W$ 有 $x\leq w$。设结论对长度小于 $l(x)$ 的元素都成立，取 $s$ 使得 $l(sx)<l(x)$，根据归纳假设 $sx\leq w$。但是 $sx$ 不可能等于 $w$，因为 $l(s\cdot sx)=l(x)>l(sx)$。所以根据提升性质可得 $x\leq w$。于是 $W$ 中任何元素都在区间 $[1,x]$ 中，这样的元素显然只有有限多个。$\blacksquare$

:::{.corollary .unnumbered}
设 $W$ 是有限群，则对任何 $w\in W$ 有 $l(ww_0)=l(w_0)-l(w)$。
:::

**证明**：只要证明 $l(ww_0)\leq l(w_0)-l(w)$ 即可。对 $l(w_0)-l(w)$ 归纳，等于 0 的情况对应 $w=w_0$，结论显然成立。设 $w<w_0$ 并且结论对任何 $x>w$ 成立。根据上一个推论，必然存在 $s\in S$ 使得 $sw>w$。对 $sw$ 应用归纳假设可得

$$l(ww_0)\leq l(sww_0)+1 \leq l(w_0) - l(sw) + 1 = l(w_0) - l(w).$$
$\blacksquare$

对任何 $l(w)$，记 $T_L(w)=\{t\in T\mid l(tw) < l(w)\}$。

:::{.corollary .unnumbered}
设 $W$ 是有限群，则对任何 $w\in W$ 有 $T_L(ww_0)=T\setminus T_L(w)$。
:::
**证明**：根据上一个推论，$l(tww_0)=l(w_0)-l(tw)$。所以 $l(tww_0)>l(ww_0)$ 当且仅当 $l(tw)<l(w)$。$\blacksquare$

:::{.corollary .unnumbered}
$l(w_0)=|T|$.
:::
**证明**：在上一个推论中取 $w=1$ 有 $T_L(w_0)=T$，结合 $l(w)=|T_L(w)|$ 对任何 $w\in W$ 成立即得。$\blacksquare$




# 5.10 Subexpressions

:::{.lemma .unnumbered #thm-5.10}
设 $w=s_1\cdots s_q$ 是一个既约表达式，$u\ne w$ 并且 $u$ 的某个既约表达式恰好是 $s_1\cdots s_q$ 的子表达式。则存在 $v\in W$ 满足以下三点：

1. $v > u$。
2. $l(v) = l(u)+1$。
3. $v$ 的某个既约表达式是 $s_1\cdots s_q$ 的子表达式。
:::

**证明**：设 $u$ 的既约表达式是从 $s_1\cdots s_q$ 中删去 $i_1,\ldots,i_k$ 位置得到的：
$$u = s_1\cdots\hat{s_{i_1}}\cdots \hat{s_{i_k}}\cdots s_q.$$
这样的既约表达式可能不唯一，选择使得 $i_k$ 最小的那一个。令
$$t=s_qs_{q-1}\cdots s_{i_k}\cdots s_{q-1}s_q.$$
则 $ut$ 就是把 $s_{i_k}$ 补回 $u$ 的表达式中：
$$ut= s_1\cdots\hat{s_{i_1}}\cdots \hat{s_{i_{k-1}}}\cdots s_{i_k}\cdots s_q.$$
这个 $ut$ 的表达式未必是既约的，但是无论如何 $l(ut)$ 不会超过这个表达式的长度，即 $l(ut)\leq l(u)+1$。我们来证明等号是成立的。如果确实如此，那么取 $v=ut$ 即可满足要求。

若不然，$l(ut)<l(u)$，则根据 strong exchange 条件，$ut$ 等于在 $u$ 的表达式再删掉一个 $s_p$。这个 $p$ 出现的位置有两种可能：

第一种可能是 $p>i_k$，即
$$ut= s_1\cdots\hat{s_{i_1}}\cdots\hat{s_{i_k}}\cdots \hat{s_p}\cdots s_q.$$
这种情况下 $t$ 还等于 $t=s_qs_{q-1}\cdots s_p\cdots s_{q-1}s_q$。于是
$$w=wt^2=w(s_qs_{q-1}\cdots s_{i_k}\cdots s_{q-1}s_q)(s_qs_{q-1}\cdots s_p\cdots s_{q-1}s_q)=s_1\cdots\hat{s_{i_k}}\cdots\hat{s_p}\cdots s_q.$$
这与 $s_1\cdots s_q$ 是 $w$ 的既约表达式矛盾。

第二种可能是 $p<i_k$ 出现在 $i_k$ 之前的某个位置，当然 $p\notin\{i_1,\ldots,i_k\}$。这种情况下
$$u=ut\cdot t=s_1\cdots\hat{s_{i_1}}\cdots\hat{s_p}\cdots\hat{s_{i_k}}\cdots s_q\cdot(s_qs_{q-1}\cdots s_{i_k}\cdots s_{q-1}s_q)=s_1\cdots\hat{s_{i_1}}\cdots\hat{s_p}\cdots s_{i_k}\cdots s_q.$$
这与 $i_k$ 的极小性矛盾。$\blacksquare$

在上面的例子中我把 $p$ 写在了 $i_1$ 和 $i_k$ 中间的某个位置上，实际上 $p$ 当然可以小于 $i_1$，但这不影响论证。

:::{.theorem .unnumbered #thm-5.10}
设 $w=s_1\cdots s_q$ 是一个既约表达式，则 $u\leq w$ 当且仅当 $u$ 的某个既约表达式是 $s_1\cdots s_q$ 的子表达式。
:::

**证明**：

$\Rightarrow$: 设 $u=x_0\xrightarrow{t_1}x_1\xrightarrow{t_2}\cdots\xrightarrow{t_m}x_m=w$，则根据 strong exchange 条件，$x_{m-1}=wt_m$ 是 $w$ 的子表达式，进一步 $x_{m-2}=x_{m-1}t_{m-1}$ 是 $x_{m-1}$ 的子表达式，这样一直下去，得到一个 $u=x_0$ 的表达式，它是 $s_1\cdots s_q$ 的子表达式。最后根据 deletion condition，这个子表达式又包含一个 $u$ 的既约子表达式。

$\Leftarrow$: 如果 $u$ 的某个既约表达式是 $s_1\cdots s_q$ 的子表达式，根据上面的引理，只要 $u\ne w$，那么就存在反射 $t$ 使得 $u<ut$，并且 $ut$ 仍然是 $w$ 的子表达式。对 $ut$ 继续此步骤直到结果 $w$ 为止即可。$\blacksquare$


# 6.2 More on the geometric representation

这一节证明了如果几何实现中的二次型 $B(\alpha_s,\alpha_t)=-\cos\frac{\pi}{m_{s,t}}$ 是正定的，则 $W$ 是有限群。这一点是两个结论合起来的结果：

:::{.proposition .unnumbered #discrete-action}
$W$ 是 $O(n,\mathbb{R})$ 的离散子集，即对任何 $w\in W$，存在 $w$ 的开邻域 $w\in U$ 使得 $U$ 不包含 $W$ 中除 $w$ 外的任何元素。
:::

证明：固定一个基本区域中的点 $x\in C$，考虑从 $\GL(V^\ast)$ 到 $V^\ast$ 的连续映射
$$g\to g\cdot x,\quad g\in\GL(V^\ast).$$
$C$ 在此映射下的逆像是 $\GL(V^\ast)$ 中的某个开集 $U$，并且 $U$ 显然包含恒等元 1，因为 $1\cdot x=x\in C$，即 $U$ 是 1 的一个开邻域。$U$ 不包含其它任何 $w\ne 1\in W$，否则 $w\cdot x\in C$，这与 $C$ 是基本区域矛盾。同理任何 $w\in W$ 都有一个开邻域不包含其它 $W$ 中的点。

:::{.proposition .unnumbered #discrete-subgroup}
紧 Hausdorff 拓扑群 $G$ 的离散子群 $H$ 必然是有限群。
:::

证明：

第一步：设 $U$ 是单位元 $e$ 的邻域且满足 $U \cap H = \{e\}$，我们来说明存在一个邻域 $e\in V\subset U$ 满足 $VV^{-1}\subset U$。

令 $\sigma:U\times U\to G$ 为映射 $\sigma(x, y) = xy^{-1}$。由连续性，存在一个邻域 $N\subset U\times U$ 包含 $(e,e)$ 使得 $\sigma(N)\subset U$。那么 $N$ 包含一个形如 $V_1\times V_2$ 的开集，其中 $V_1, V_2 \subset U$ 是开集且 $e\in V_1\cap V_2$。取 $V=V_1 \cap V_2$，于是 $V$ 是 $e$ 的一个邻域，并且 $V\times V\subset V_1\times V_2$，因此 $VV^{-1}=\sigma(V \times V)\subset\sigma(V_1\times V_2) \subset U$。


第二步：我们来论证 $G\backslash H$ 是开集。为此只要说明对任意 $x\in G\backslash H$，存在 $x$ 的邻域 $U$ 使得 $U\cap H=\emptyset$。设 $U$ 是 $e$ 的邻域且 $U\cap H=\{e\}$。令 $V\subset U$ 为具有上面第一步中性质的 $e$ 的邻域，则 $N=Vx$ 是 $x$ 的邻域。假设 $h_1, h_2\in N\cap H$，那么存在 $v_1,v_2\in V$ 满足 $h_1 = v_1x$ 且 $h_2=v_2x$。于是
$$v_1^{-1}h_1=x=v_2^{-1}h_2\implies h_1h_2^{-1} = v_1v_2^{-1}\in VV^{-1} \subset U.$$
因此 $v_1v_2^{-1}\in H\cap U$，所以 $h_1h_2^{-1}=e$，因此 $h_1=h_2$。这意味着 $N$ 至多包含 $H$ 的一个元素。如果 $N$ 不包含 $H$ 的任何元素，则 $N$ 即为所求。否则若 $N\cap H=\{h\}$，由于 $G$ 是 Hausdorff 空间，我们可以取开邻域 $U_x, U_h\subset N$ 将 $x$ 和 $h$ 分开，那么 $U_x$ 是所求的邻域。

第三步：$H$ 是有限的。这是因为对每个 $x\in H$，取其邻域 $U_x$ 使得 $U_x\cap H=\{x\}$，这些开集加上 $G\backslash H$ 构成 $G$ 的一个开覆盖，由 $G$ 的紧性可得存在 $G$ 的有限子覆盖。于是有限多个 $\{U_{x_i}\}_{i=1}^n$ 覆盖了 $H$。然而每个 $U_{x_i}$ 只包含一个 $H$ 中的元素 $x_i$，所以 $H$ 是有限的。$\blacksquare$

现在 $W$ 保持 Euclidean 内积 $B$ 不变，从而是正交群 $O(n,\mathbb{R})$ 的子群。而 $O(n,\mathbb{R})$ 是紧群，$W$ 是离散子群，所以 $W$ 是有限群。


# 6.3 and 6.4 Radical of the bilinear form / Finite Coxeter groups

这两节合起来证明了 6.2 的逆命题：如果 $W$ 是有限群，则 $B$ 必然是正定的。这个结论是如下几个命题合起来得到的：

:::{.proposition .unnumbered}
**命题 1** 设 $U$ 是 $V$ 的一个真 $W-$ 子模，则 $U\subset V^\bot$。
:::

这个命题背后的关键是任何单根 $\alpha_s$ 必须属于 $U$ 或者 $U^\bot$ 之一。由于 $W$ 是不可约 Coxeter 群，$\Delta$ 不能分成两个互相正交的子集，所以要么 $\Delta\in U$，这与 $U$ 是真子模矛盾；要么 $\Delta\in U^\bot$，从而 $U\subset V^\bot$。

:::{.proposition .unnumbered}
**命题 2** $W$ 在 $V$ 上的作用是完全可约的。
:::

这是群表示论里面的 Maschke 定理。证明技巧就是取平均构造 $W-$ 不变的正定内积。

:::{.proposition .unnumbered}
**命题 3** $B$ 是非退化的。
:::

若不然 $V^\bot\ne(0)$，完全可约性说明 $V^\bot$ 有直和补 $U$，但是 $U$ 也在 $V^\bot$ 中，矛盾。

:::{.proposition .unnumbered}
**命题 4** $W$ 在 $V$ 上是不可约的。
:::

这是命题 3 的直接结论，因为有非平凡的真子模意味着 $V^\bot$ 也非平凡，与 $B$ 非退化矛盾。

:::{.proposition .unnumbered}
**命题 5** $B$ 是正定的。
:::

实际上 $V$ 是 $W$ 的不可约表示说明 $V$ 上的 $W-$ 不变双线性函数构成的向量空间是一维的。而我们已经有一个 $W-$ 不变的正定内积，所以 $B$ 必然是它的一个倍数，从而也是正定的。

# 6.5 Affine Coxeter groups

之前第 4 章介绍的仿射 Coxeter 群是通过关于超平面的反射构造的，这种反射未必是线性的；而 Coxeter 群的几何实现中，$W$ 是由线性反射生成的。这一节将这两种方式统一起来。

设 $(W,S)$ 是不可约 Coxeter 群，$|S|=n+1$。根据第 5 章几何实现的讨论，我们知道 $(W,S)$ 可以实现为 $n+1$ 维实向量空间 $V$ 上的反射群。设 $V$ 的一组基为 $\Delta=\{\alpha_i\}$，每个 $s_i\in S$ 对应于 $V$ 上的反射 $s_{\alpha_i}$。

此外设 $V^\ast$ 是 $V$ 的对偶空间，$\langle \cdot,\cdot \rangle$ 是 $V\times V^\ast\to\R$ 的自然配对。

我们来分析当 Cartan 矩阵是半正定，但不是正定时 $(W,S)$ 的结构。

根据 2.6 小节的结论，$\rad{(V)}=\R\delta$ 可以由一个向量 $\delta$ 生成，并且 $W$ 保持子空间 $\R\delta$ 不变。在 $V/\R\delta$ 上诱导的内积是正定的。

我们知道，$W$ 也作用在 $V^\ast$ 上，这个作用的定义是规定 $W$ 保持双线性对 $\langle \cdot,\cdot \rangle$ 不变：
$$\langle wv,wx \rangle = \langle v, x \rangle.\quad w\in W,v\in V, x\in V^\ast.$$
记
$$\begin{aligned}
H_0&=\{x\in V^\ast\mid \langle\delta,x\rangle=0\},\\
H_1&=\{x\in V^\ast\mid \langle\delta,x\rangle=1\}.
\end{aligned}$$
则 $H_0$ 是线性子空间，$H_1$ 是仿射超平面。$W$ 保持 $H_0,H_1$ 不变：因为对任何 $x\in V^\ast$ 都有
$$\langle\delta,wx\rangle=\langle w^{-1}\delta,x\rangle=\langle\delta,x\rangle.$$

注意到 $H_0$ 与 $V/\R\delta$ 是对偶的，所以它是一个 Euclidean 空间（通过指定一组对偶基，你可以把一个空间上的度量挪到它的对偶空间上）；$H_1$ 作为 $H_0$ 平移得到的超平面也具有 Euclidean 度量。$W$ 同样保持 $H_0$ 和 $H_1$ 上的度量不变。

所以我们只要在 $V^\ast$ 中考虑问题即可。现在的问题变成，已知 $W\leqslant {\rm GL}(V^\ast)$ 保持 $H_0,H_1$ 不变，分析 $W$ 在 $H_1$ 上的作用。

:::{.definition .unnumbered}
设 $f: H_1\to H_1$ 是映射，如果存在 $T\in {\rm GL}(V^\ast)$ 满足 $f(x + y) - f(x) = T(y)$ 对任何 $x\in H_1,y\in H_0$ 成立，就称 $f$ 是 $H_1$ 上的仿射变换。记 ${\bf Aff}(H_1)$ 是 $H_1$ 上所有仿射变换构成的集合，不难验证 ${\bf Aff}(H_1)$ 在映射的复合下构成一个群。
:::

:::{.lemma .unnumbered}
$W$ 在 $H_1$ 上的作用诱导了群同态 $W\to {\bf Aff}(H_1)$。
:::
**证明**：由于 $w$ 在 $V^\ast$ 上的作用是线性的，$w(x+y)-w(x)=w(y)$，所以结论是显然的。$\blacksquare$



# 7.4 Hecke algebras and inverses

这一节引入了 $R$ 多项式，并给出了它们满足的递推关系。这部分用对合来处理会比较方便。

:::{.proposition .unnumbered}
对任何 $w\in W$，
$$q^{l(w)}\,\overline{T_w}=\sum_{x\leq w}(-1)^{l(x)+l(w)}R_{x,w}(q)T_x.$$
其中 $R_{x,w}(q)\in\mathbb{Z}[q]$ 是关于 $q$ 的多项式，满足 $R_{w,w}(q)=1$。
:::

**证明**：由 $q^{l(e)}\,\overline{T_e}=q^0\,\overline{T_e}=T_e$，结论对 $w=e$ 成立。当 $l(w)>0$ 时，设 $w=s_1\cdots s_r$ 是一个既约表示，则
$$\begin{align}
q^{l(w)}\,\overline{T_w}&=q^r\,\overline{T_{s_1\cdots s_r}}\\
&=q^r\,\overline{T_{s_1}}\cdots\overline{T_{s_r}}\\
&=(qT_{s_1}^{-1})\cdots (qT_{s_r}^{-1})\\
&=(T_{s_1}+1-q)\cdots (T_{s_r}+1-q)\\
&=\sum_{k=1}^r\sum_{1\leq i_1\leq\cdots\leq i_k\leq r}(1-q)^{r-k}T_{s_{i_1}}\cdots T_{s_{i_k}} + (1-q)^r.
\end{align}$$
注意到每个 $T_{s_{i_1}}\cdots T_{s_{i_k}}=T_{s_1\cdots s_k}=T_x$，$x$ 是 $w$ 的子表达式，所以 $x\leq w$。合并相同的 $x$ 的系数以后，显然 $T_x$ 的系数在 $\mathbb{Z}[q]$ 中，所以存在 $R_{x,w}\in\mathbb{Z}[q]$ 满足
$$\sum_{k=1}^r\sum_{1\leq i_1\leq\cdots\leq i_k\leq r}(1-q)^{r-k}T_{s_{i_1}}\cdots T_{s_{i_k}} +(1-q)^r=\sum_{x\leq w}(-1)^{l(x)+l(w)}R_{x,w}(q)T_x.$$
由于 $s_{i_1}\cdots s_{i_k}=w$ 只有一种可能，就是 $k=r$ 并且 $(i_1,\ldots,i_r)=(1,\ldots,r)$，所以 $R_{w,w}(q)=1$。$\blacksquare$

:::{.proposition .unnumbered}
设 $s\in S$，$w\in W$ 满足 $sw<w$，则
$$
R_{x,w}(q) = \begin{cases}R_{sx,sw}(q) & \text{if } sx<x,\\
qR_{sx,sw}(q)+(q-1)R_{x,sw}(q) & \text{if } x<sx.\end{cases}
$$
:::

**证明**：
$$\begin{aligned}
&\qquad\sum_{w\in W}(-1)^{l(x)+l(w)}R_{x,w}(q)T_x = q^{l(w)}\,\overline{T_w}=q^{l(s)+l(sw)}\overline{T_s}\,\overline{T_{sw}}=q\,\overline{T_s}\, q^{l(sw)}\,\overline{T_{sw}}\\
&=(T_s +1-q)\sum_{w\in W}(-1)^{l(sw)+l(x)}R_{x,sw}(q)T_x\\
&=\sum_{w\in W}(-1)^{l(sw)+l(x)}R_{x,sw}(q)(T_sT_x+(1-q)T_x)\\
&=(1-q)\sum_{w\in W}(-1)^{l(sw)+l(x)}R_{x,sw}(q)T_x + \sum_{w\in W}(-1)^{l(sw)+l(x)}R_{x,sw}(q)T_sT_x\\
&=(1-q)\sum_{w\in W}(-1)^{l(sw)+l(x)}R_{x,sw}(q)T_x +\sum_{w\in W,\,x<sx}(-1)^{l(sw)+l(x)}R_{x,sw}(q)T_{sx}\\&\quad +\sum_{w\in W,\,x>sx}(-1)^{l(sw)+l(x)}R_{x,sw}(q)(qT_{sx}+(q-1)T_x)\\
&=(1-q)\sum_{w\in W,\,x<sx}(-1)^{l(sw)+l(x)}R_{x,sw}(q)T_x+\sum_{w\in W,\,x<sx}(-1)^{l(sw)+l(x)}R_{x,sw}(q)T_{sx}\\&\quad +\,q\sum_{w\in W,\,x>sx}(-1)^{l(sw)+l(x)}R_{x,sw}(q)T_{sx}\\
&\overset{y=sx}=(q-1)\sum_{w\in W,\,x<sx}(-1)^{l(w)+l(x)}R_{x,sw}(q)T_x+\sum_{w\in W, \,sy<y}(-1)^{l(sw)+l(sy)}R_{sy,sw}(q)T_y\\&\quad +q\sum_{w\in W,\,sy>y}(-1)^{l(sw)+l(sy)}R_{sy,sw}(q)T_y\\
&\overset{y=x}=\sum_{w\in W,\,sx<x}(-1)^{l(w)+l(x)}R_{sx,sw}(q)T_x+\sum_{w\in W,\,sx>x}(-1)^{l(w)+l(x)}\left(qR_{sx,sw}+(q-1)R_{x,sw}\right)T_x.
\end{aligned}$$
比较两边 $T_x$ 的系数即可得到结论。


# 7.8 Further properties of $R$-polynomials

:::{.proposition .unnumbered}
$R$-多项式满足如下性质：

1. $(-q)^{l(w)-l(x)}\overline{R_{x,w}(q)}=R_{x,w}$。
2. $\sum_{x\leq y\leq w}(-1)^{l(x)+l(y)}R_{x,y}(q) R_{y,w}(q)=\delta_{x,w}$。
:::

1 的证明：对 $w$ 的长度归纳。如果 $l(w)=0$ 则 $w=x=e$，$R_{e,e}=1$，结论成立。

设结论对所有长度 $<l(w)$ 的元素成立，取 $s\in S$ 使得 $l(sw)<l(w)$。考虑两种情况：

+ $sx < x$。这时 $R_{x,w}=R_{sx,sw}$，对 $sw$ 应用归纳假设
$$(-q)^{l(sw)-l(sx)}\overline{R_{sx,sw}}=R_{sx,sw}=R_{x,w}.$$
由于 $l(sw)-l(sx)=l(w)-l(x)$ 所以结论对 $w$ 也成立。
+ $sx>x$。
$$\begin{align}
(-q)^{l(w) - l(x)} R_{x,w}(q) &= (-1)^{l(w) + l(x)} q^{l(w) - l(x)} R_{x,w}(q^{-1}) \\
&= (-1)^{l(w) + l(x)} q^{l(w) - l(x)} \left( q^{-1} R_{sx,sw}(q^{-1}) + (q^{-1} - 1) R_{x,sw}(q^{-1}) \right) \\
&= (-1)^{l(w) + l(x)} q^{l(sw) - l(sx)} q^2\left( q^{-1} R_{sx,sw}(q^{-1}) + (q^{-1} - 1) R_{x,sw}(q^{-1}) \right) \\
&= q (-1)^{l(sw) + l(sx)} q^{l(sw) - l(sx)} R_{sx,sw}(q^{-1}) \\
&\quad - (-1)^{l(sw) + l(x)} q^{l(sw) - l(x)} (1 - q) R_{x,sw}(q^{-1}) \\
&= q (-q)^{l(sw) - l(sx)} R_{sx,sw}(q) + (q - 1)(-q)^{l(sw) - l(x)} R_{x,sw}(q) \\
&= q R_{sx,sw}(q) + (q - 1) R_{x,sw}(q) \\
&= R_{x,w}(q).
\end{align}$$


2 的证明：根据 $R$-多项式的定义，
$$\overline{T_w}=q^{-l(w)}\sum_{y\in W}(-1)^{l(y)+l(w)}R_{y,w}T_y.$$
两边取对合得到
$$\begin{aligned}
T_w&=\overline{q^{-l(w)}\sum_{y\in W}(-1)^{l(y)+l(w)}R_{y,w}T_y}\\
&=q^{l(w)}\sum_{y\in W}(-1)^{l(y)+l(w)}\overline{R_{y,w}}\,\overline{T_y}\\
&=q^{l(w)}\sum_{y\in W}(-1)^{l(y)+l(w)}q^{l(y)-l(w)}R_{y,w}\cdot q^{-l(y)}\sum_{x\in W}(-1)^{l(x)+l(y)}R_{x,y}T_y\\
&=\sum_{x\in W}\left(\sum_{x\leq y\leq w}(-1)^{l(y)+l(x)}R_{x,y}R_{y,w}\right)T_x
\end{aligned}$$
比较两边关于 $T_w$ 项的系数即可。