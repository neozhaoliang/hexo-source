---
title: "Coxeter 群基础知识 （一）：反射"
categories: [Notes on Coxeter Groups]
date: 2021-12-02
tags:
  - Coxeter group
  - Cartan matrix
  - Coxeter matrix
  - Gallery
  - Reduced word
  - Reflection
  - Standard geometric realization
  - Tits cone
  - Simple root
  - Root
  - Fundamental domain
  - Linear reflection
  - Affine reflection
  - Reduced
  - Braid relations
url: "coxeter-groups-I"
---

\newcommand{\lfun}[2]{\langle #1,\,#2\rangle}
\newcommand{\wst}{W_{s,t}}
\newcommand{\aav}{\lfun{\alpha}{\alpha^\vee}}
\newcommand{\abv}{\lfun{\alpha}{\beta^\vee}}
\newcommand{\bav}{\lfun{\beta}{\alpha^\vee}}
\newcommand{\bbv}{\lfun{\beta}{\beta^\vee}}
\newcommand{\sthe}[1]{\frac{\sin #1\theta}{\sin\theta}}
\newcommand{\shthe}[1]{\frac{\sinh #1\theta}{\sinh\theta}}
\DeclareMathOperator{\csch}{csch}

本文是系列的第一篇，介绍两个反射生成的 Coxeter 群的结构，直白点就是两个反射镜面得到的万花筒的结构。这是最简单的 Coxeter 群的例子，许多对一般 Coxeter 群成立的重要性质在这种情形也可以看得非常清楚。这样做是受到了 [Casselman](https://personal.math.ubc.ca/~cass/coxeter/crm.html) 的影响，他的讲义中对两个反射的情形进行了挖地三尺般的讨论。我开始念的时候很不适应，心想两个反射放在一起能复杂到哪里去呢？后来才认识到，熟悉这种情形对后面的理解大有助益。特别是 $n_{s,t}>4$ 的情形对应的是两个双曲空间中超平行的镜面，关于它们的镜面反射是两个反演变换。如果只把对万花筒的认识停留在生活中见到的万花筒的样子的话，是难以领会许多定理的含义的。

在本文中，我们会同时关注分别存在于 $V$ 和 $V^\ast$ 上的两个结构：

1. 在 $V$ 中的 Tits 锥。
2. 在 $V^\ast$ 中的根系。

<!--more-->

# 单个反射

我们先从反射变换的定义说起。在本文中，$V$ 始终表示一个有限维实向量空间，$V^\ast$ 是其对偶空间。

设 $\alpha\in V^\ast$ 是一个线性泛函，对 $v\in V$，我们用双线性对 $\lfun{\,}{}$ 来表示 $\alpha(v)=\lfun{\alpha}{v}$。这种记号有个明显的好处是它关于两个分量都是线性的，而且由于 $V$ 和 $V^\ast$ 互为对偶空间所以还是对称的，即 $\alpha$ 和 $v$ 在括号中的顺序并不重要。

设 $\alpha^\vee\in V$ 使得 $\aav=2$，$V$ 上的线性变换
$$s(v) = v - \lfun{\alpha}{v}\alpha^\vee,\quad v\in V.$$
满足如下性质：

1. $s$ 保持 $n-1$ 维的超平面 $\alpha=0$ 不变；
2. $s$ 将非零向量 $\alpha^\vee$ 映射为 $-\alpha^\vee$；
3. $s^2=1$。（这一点可以由 1, 2 推出）

我们称 $s$ 是一个**反射变换**。

<img style="margin:0px auto;display:block" width=300 src="/images/coxeter-groups/reflection.svg"/>

为了方便，本文也用记号 $s_{\alpha,\alpha^\vee}$ 来表示反射 $s$。注意到给 $\alpha,\alpha^\vee$ 分别乘以非零实数 $\lambda,\lambda^{-1}$ 保持 $s$ 不变。

对任何 $g\in\mathrm{GL}(V)$，定义 $g$ 在 $V^\ast$ 上的作用为
$$\lfun{gf}{v} = \lfun{f}{g^{-1}v},\quad f\in V^\ast, v\in V.$$
这样定义的目的是让 $g$ 保持双线性对 $\lfun{\,}{}$ 不变：
$$\lfun{gf}{gv} = \lfun{f}{v}.$$

于是 $V$ 上的反射 $s$ 也成为 $V^\ast$ 上的反射：
$$\lfun{sf}{v} = \lfun{f}{sv} = \lfun{f}{v-\lfun{\alpha}{v}\alpha^\vee}=\lfun{f}{v}-\lfun{\alpha}{v}\lfun{f}{\alpha^\vee}=\lfun{f-\lfun{\alpha^\vee}{f}\alpha}{v}.$$
即 $s$ 在 $V^\ast$ 上的作用为
$$s(f)=f-\lfun{\alpha^\vee}{f}\alpha.$$
由表达式可见 $s$ 在 $V^\ast$ 上的作用不过是把 $\alpha$ 和 $\alpha^\vee$ 的“角色”互换了一下。$s$ 保持 $V^\ast$ 中的超平面 $\lfun{\alpha^\vee}{\cdot}=0$ 不变，将泛函 $\alpha$ 映射为 $-\alpha$。

值得一提的是，像 $\lfun{sf}{v} = \lfun{f}{sv}$ 这种将反射在 $\lfun{\,}{}$ 两侧 “跳来跳去” 的技巧后面会经常使用。

# 两个反射

设 $s_{\alpha,\alpha^\vee},\,t_{\beta,\beta^\vee}$ 是两个反射，且线性泛函 $\alpha,\beta$ 是线性无关的。考虑 $s,t$ 在 $\mathrm{GL}(V)$ 中生成的子群 $\wst$，记 $K=\{\alpha>0\}\cap\{\beta>0\}$ 是 $\alpha,\beta$ 的正半空间的交。我们希望 $\wst$ 在 $V$ 上的作用有如下性质：

1. $K\ne\emptyset$。（由于我们假定了 $\alpha,\beta$ 是线性无关的泛函，所以这一点其实是自动满足的）
2. 对任何 $w\in \wst,\,w\ne1$ 有 $wK\cap K=\emptyset$。

这时我们称 $W$ **离散地**作用在 $V$ 上，$K$ 是此作用的**基本区域**。

我们想分析如果 $W_{s,t}$ 离散地作用在 $V$ 上，$W_{s,t}$ 和万花筒的结构分别是怎样的。我们先来说明只要对 $\dim V=2$ 的情形分析即可，即本质上 $W_{s,t}$ 对应的万花筒可以在二维中实现。为此只要对 $s$ 和 $t$ 共同的不动点空间取商空间即可。

记 $H_\alpha=\{\alpha=0\},\,H_\beta=\{\beta=0\}$，$H_\alpha,\,H_\beta$ 都是 $n-1$ 维超平面，由于 $\alpha,\beta$ 线性无关所以 $H=H_\alpha\cap H_\beta$ 是 $n-2$ 维超平面，$s,t$ 均保持 $H$ 不动。在商空间 $V/H$ 中，$\alpha,\beta$ 仍然是两个线性无关的泛函，$H_\alpha,H_\beta$ 是两条不同的直线，$K/H$ 是这两条直线所夹的一个锥形区域。

我们有如下引理：

> **引理**：$K$ 是 $V$ 中的基本区域当且仅当 $K/H$ 是 $V/H$ 中的基本区域。

这个证明简单且枯燥，不过我还是加上这一段吧。

$\Rightarrow$：若不然，$K/H$ 不是基本区域，则存在 $w\ne 1$ 使得 $w(K/H)\cap K/H$ 非空，即存在 $x,y\in K$ 使得 $w (x + H) = y + H$, 从而 $wx - y \in H$。于是 $\alpha(wx)=\alpha(y) > 0$，$\beta(wx) = \beta(y) > 0$，即 $wx\in K$，这与 $K$ 是 $V$ 中的基本区域矛盾。

$\Leftarrow$：若不然，$K$ 不是基本区域，则存在 $w\ne1,x\in K$ 使得 $wx\in K$，从而 $wx + H \in K/H$，这与 $K/H$ 是 $V/H$ 中的基本区域矛盾。

于是根据引理我们只要对 $\dim V=2$ 的情况进行讨论。

记矩阵
$$A=\begin{pmatrix}\aav &\abv \\ \bav & \bbv\end{pmatrix} = \begin{pmatrix}2&c_{s,t}\\c_{t,s}&2\end{pmatrix}.$$
其中 $c_{s,t}=\abv$，$c_{t,s}=\bav$，并记 $n_{s,t}=c_{s,t}c_{t,s}$。注意到给 $\alpha,\alpha^\vee$ 分别乘以非零实数 $\lambda,\lambda^{-1}$ 保持 $s$ 不变，给 $\beta,\beta^\vee$ 分别乘以非零实数 $\mu,\mu^{-1}$ 保持 $t$ 不变，$c_{s,t}$ 变为 $\lambda/\mu c_{s,t}$，$c_{t,s}$ 变为 $\mu/\lambda c_{t,s}$，所以 $c_{s,t},c_{t,s}$ 并不是由 $s,t$ 完全确定的不变量，但是乘积 $n_{s,t}$ 是不变的。后面会看到，$n_{s,t}$ 有点类似空间的曲率，它决定了 $W_{s,t}$ 这个万花筒具体实现的空间类型。

{% blockquote %}
**定理**：要使得 $W_{s,t}$ 离散地作用在 $V$ 上，则必须有：

1. $c_{s,t}$ 和 $c_{t,s}$ 同时为 0 或者同时小于 0。
2. 要么 $W_{s,t}$ 是有限群且 $n_{s,t}=4\cos^2(\pi/m)$，其中 $m$ 为 $\geq2$ 的正整数；要么 $W_{s,t}$ 是无限群且 $n_{s,t}\geq 4$。
{% endblockquote %}

下面的论证来自 [Vinberg](/papers/Vinberg.pdf)。

**证明**：我们先说明必须有 $c_{s,t}\leq0$ 且 $c_{t,s}\leq0$。否则不妨设 $c_{s,t}=\abv>0$。

仍然记 $H_\alpha=\{\alpha=0\},\,H_\beta=\{\beta=0\}$。注意到
$$\lfun{\alpha}{tH_\alpha}=\lfun{t\alpha}{H_\alpha}=\lfun{\alpha-c_{s,t}\beta}{H_\alpha}=-c_{s,t}\lfun{\beta}{H_\alpha}.$$
以及
$$\lfun{\beta}{tH_\alpha}=\lfun{t\beta}{H_\alpha}=-\lfun{\beta}{H_\alpha}.$$
我们可以取 $x\in H_\alpha$ 使得 $\lfun{\beta}{x}\ne0$ 并适当选择 $\pm x$ 使得 $\lfun{\beta}{x}<0$，从而 $\lfun{\alpha}{tx}$ 和 $\lfun{\beta}{tx}$ 都大于 0，于是 $tH_\alpha\cap K$ 非空。

考虑反射 $tst$，其保持超平面 $tH_\alpha$ 不动。由于 $tH_\alpha\cap K\ne\emptyset$ 从而 $tstK\cap K\ne\emptyset$，与 $W$ 在 $V$ 上的作用是离散的矛盾。

于是我们证明了必须有 $c_{s,t}\leq0$ 且 $c_{t,s}\leq0$。接下来说明 $c_{s,t}=0$ 和 $c_{t,s}=0$ 必须同时成立。否则不妨设 $c_{s,t}=0,\,c_{t,s}<0$。

考虑
$$\begin{align*}\lfun{\alpha}{tsH_\beta}&=\lfun{t\alpha}{sH_\beta}=\lfun{\alpha-c_{s,t}\beta}{sH_\beta}=\lfun{\alpha}{sH_\beta}=\lfun{s\alpha}{H_\beta}=-\lfun{\alpha}{H_\beta},\\\lfun{\beta}{tsH_\beta}&=\lfun{t\beta}{sH_\beta}=-\lfun{\beta}{sH_\beta}=-\lfun{s\beta}{H_\beta}=\lfun{c_{t,s}\alpha-\beta}{H_\beta}=c_{t,s}\lfun{\alpha}{H_\beta}.\end{align*}$$
同理选择 $x\in H_\beta$ 使得 $\lfun{\alpha}{x}<0$，我们得到 $tsH_\beta\cap K$ 非空。反射 $tstst$ 保持超平面 $tsH_\beta$ 不动，从而 $tststK\cap K$ 非空，矛盾。$\blacksquare$

至此我们知道 $n_{s,t}$ 必然大于等于 0。下面针对 $n_{s,t}$ 的值分情况讨论，我们将会看到它们可以分成三种不同的情形：仿射、有限和双曲。

## 仿射：$n_{s,t}=4$

### 根系

$n_{s,t}=4$ 时我们可以通过给 $\alpha,\alpha^\vee$ 分别乘以正数 $\lambda,\lambda^{-1}$ 使得 $c_{s,t}=-2$，那自然 $c_{t,s}$ 也等于 $-2$，从而
$$A = \begin{pmatrix}2&-2\\-2&2\end{pmatrix}.$$

不难计算发现 $t(\alpha)=\alpha-c_{s,t}\beta=\alpha+2\beta$，以此类推有
$$\alpha\xrightarrow{\ t\ }\alpha+2\beta\xrightarrow{\ s\ }3\alpha+2\beta\xrightarrow{\ t\ }3\alpha + 4\beta\xrightarrow{\ s\ }\cdots$$
$$\beta\xrightarrow{\ s\ }2\alpha+\beta\xrightarrow{\ t\ }2\alpha+3\beta\xrightarrow{\ s\ }4\alpha + 3\beta\xrightarrow{\ t\ }\cdots$$
同理
$$\alpha\xrightarrow{\ s\ }-\alpha\xrightarrow{\ t\ }-\alpha-2\beta\xrightarrow{\ s\ }-3\alpha-2\beta\xrightarrow{\ t\ }-3\alpha - 4\beta\xrightarrow{\ s\ }\cdots$$
$$\beta\xrightarrow{\ t\ }-\beta\xrightarrow{\ s\ }-2\alpha-\beta\xrightarrow{\ t\ }-2\alpha-3\beta\xrightarrow{\ s\ }-4\alpha-3\beta\xrightarrow{\ t\ }\cdots$$
是将前面两个链分别取负值，即 $\{\alpha,\beta\}$ 在 $\wst$ 的作用下构成的集合为 $\Phi=\{m\alpha+n\beta\}$，其中系数 $m,n$ 都是整数，$m,n$ 至多相差 1，并且同时非正或者同时非负。**$\Phi$ 叫做 $\wst$ 的根系**，它由两个不相交的子集组成：$\Phi=\Phi^+\cup\Phi^-$，其中 $\Phi^+$ 包含所有非负的线性组合，$\Phi^-$ 包含所有非正的线性组合，且 $\Phi^+=-\Phi^-$。**$\Phi^+$ 中的根叫做正根，$\Phi^-$ 中的根叫做负根**。

### Tits 锥

设 $\{e_\alpha,e_\beta\}$ 是 $V$ 的一组关于 $\alpha,\beta$ 的对偶基：
$$\lfun{\alpha}{e_\alpha}=\lfun{\beta}{e_\beta}=1,\quad \lfun{\alpha}{e_\beta}=\lfun{\beta}{e_\alpha}=0.$$
在这组基下，基本区域的坐标为第一象限：
$$K=\{ xe_\alpha+ye_\beta\mid x>0,y>0\}.$$
$\alpha^\vee = 2e_\alpha - 2e_\beta=(2,-2)$，$\beta^\vee = -2e_\alpha + 2e_\beta=(-2,2)$，即 $\alpha^\vee=-\beta^\vee$ 且二者均位于直线 $\ell:x+y=0$ 上。

对任何 $w\in\wst$, 不难验证
$$wK=\left\{v\in V\colon\ \lfun{w\alpha}{v}>0 \text{\ and\ } \lfun{w\beta}{v}>0\right\}.$$
（等式的证明很简单，我与其啰嗦地写一个证明，还不如请读者自行在脑海中验证一下~）

当 $w\ne1$ 时，注意到 $w\alpha$ 和 $w\beta$ 必然一个属于 $\Phi^+$，另一个属于 $\Phi^-$（取决于 $w$ 是以 $s$ 结尾还是以 $t$ 结尾），不妨设 $w\alpha=m\alpha+n\beta\in\Phi^-$，于是 $m\leq0,n\leq0$ 且 $m,n$ 不全为 0，设 $v=xe_\alpha+ye_\beta$，则
$$wK\subset \{v\in V\colon\ \lfun{w\alpha}{v}> 0 \} =\{(x,y)\in\mathbb{R}^2\colon\ mx+ny > 0\}.$$
显然上式右边与 $K$，也就是第一象限的交为空，所以 $\wst$ 确实是离散地作用在 $V$ 上。

为了画图好看我们可以改取 $V$ 的一组基为 $\{e_\alpha-e_\beta,e_\beta\}$，这时 $\alpha^\vee=(2,0),\beta^\vee=-\alpha^\vee$。超平面 $H_\alpha$ 为 $y$ 轴，$H_\beta$ 为直线 $y=x$，基本区域 $K$ 是直线 $x=0$ 和 $y=x$ 所夹的锥形区域，如下图所示：

<img style="margin:0px auto;display:block" width=600 src="/images/coxeter-groups/affine2d.svg"/>

可见 $K$ 在 $\wst$ 的作用下填满了整个上半平面 $\{y>0\}$。

记 $\overline{K}$ 为 $K$ 的闭包，
$$\mathcal{C}=\bigcup_{w\in\wst}w\overline{K},$$
$\mathcal{C}$ 叫做 **Tits 锥**，它由 $\{y > 0\}\cup\{(0,0)\}$ 组成。

## 有限：$0\leq n_{s,t}<4$

通过调整 $\alpha,\alpha^\vee$ 使得 $c_{s,t}=c_{t,s}$，我们得到 $c_{s,t}=-2\cos\theta,0<\theta\leq\pi/2$。
$$A = \begin{pmatrix}2&-2\cos\theta\\-2\cos\theta&2\end{pmatrix}$$
是正定矩阵，于是 $\{\alpha^\vee, \beta^\vee\}$ 构成 $V$ 的一组基。我们规定 $V$ 上的内积 $\bullet$ 如下：

$$\begin{pmatrix}\alpha^\vee\bullet\alpha^\vee&\alpha^\vee\bullet\beta^\vee\\\beta^\vee\bullet\alpha^\vee&\beta^\vee\bullet\beta^\vee\end{pmatrix}=\begin{pmatrix}1&-\cos\theta\\-\cos\theta&1\end{pmatrix}=A/2.$$
$V$ 在此内积下成为一个二维 Euclidean 平面。

不难验证对任何 $v\in V$ 有
$$\lfun{\alpha}{v}=2(\alpha^\vee\bullet v),\quad \lfun{\beta}{v}=2(\beta^\vee\bullet v).$$

所以 $\lfun{\alpha}{v}=0\Leftrightarrow \alpha^\vee\bullet v=0$，$\lfun{\beta}{v}=0\Leftrightarrow \beta^\vee\bullet v=0$，即 $\alpha^\vee,\beta^\vee$ 分别是与直线 $H_\alpha,H_\beta$ 在此内积下垂直的单位法向量，$s,t$ 是关于镜面 $H_\alpha,H_\beta$ 的正交反射。由于 $\alpha^\vee\bullet\beta^\vee=-\cos\theta$ 所以基本区域 $K$ 是一个角度为 $\theta$ 的锥，于是 $st$ 是一个角度为 $2\theta$ 的旋转。要使得 $\wst$ 的作用是离散的显然 $st$ 的阶必须有限，不妨设为 $m$，则 $W_{s,t}$ 是二面体群 $D_m$，$\theta$ 形如 $\theta=k\pi/m$，其中 $k$ 是与 $m$ 互素的正整数。这里 $k$ 必须是 1，否则将 $K$ 绕着原点旋转 $m$ 次会覆盖平面 $k>1$ 次，不可能满足 $wK\cap K=\emptyset$ 对任何 $w\ne 1$ 成立，所以 $\theta=\pi/m$。

<img style="margin:0px auto;display:block" width=400 src="/images/coxeter-groups/finite2d.svg"/>

二面体群 $D_m$ 是一个 $2m$ 阶的有限群，其元素为
$$\{\,1,s,t, st,ts,\ldots,\overbrace{sts\cdots}^{m}=\overbrace{tst\cdots}^{m}\,\}.$$
Tits 锥 $\mathcal{C}=\bigcup_{w\in \wst}w\overline{K}$ 是全空间。

目前为止我们了解了 $\wst$ 的结构以及它在 $V$ 上作用的情况，下面分析 $V^\ast$ 中根系的结构。

不难计算得出
$$\alpha\xrightarrow{\ t\ }\sthe{}\alpha+\sthe{2}\beta\xrightarrow{\ s\ }\sthe{3}\alpha+\sthe{2}\beta\xrightarrow{\ t\ }\cdots$$
$$\beta\xrightarrow{\ s\ }\sthe{2}\alpha+\sthe{}\beta\xrightarrow{\ t\ }\sthe{2}\alpha+\sthe{3}\beta\xrightarrow{\ s\ }\cdots$$
同理以 $\alpha\xrightarrow{\ s\ }$ 和 $\beta\xrightarrow{\ t\ }$ 开始的链是分别将上面的两个链取负值，所以 $\{\alpha,\beta\}$ 在 $\wst$ 的作用下的集合为
$$\Phi =\left\{\sthe{k}\alpha + \sthe{(k\pm1)}\beta,\ k\in\mathbb{Z}\right\}.$$
但是这次 $\Phi$ 其实是包含 $2m$ 个元素的有限集，因为 $k+2m$ 和 $k$ 对应的是同样的元素，而 $k+m$ 则是将 $k$ 对应的元素取负，所以 $\Phi$ 仍然是两个不交集合的并：$\Phi=\Phi^+\cup\Phi^-$，其中
$$\Phi^+=\left\{ \sthe{k}\alpha + \sthe{(k+1)}\beta,\ 0\leq k\leq m-1\right\}.$$
$$\Phi^-=\left\{ \sthe{(k+1)}\alpha + \sthe{k}\beta,\ m\leq k\leq 2m-1\right\}.$$
同样地 $\Phi^+$ 的元素都是 $\alpha,\beta$ 的非负线性组合，$\Phi^-$ 的元素都是 $\alpha,\beta$ 的非正线性组合，并且 $\Phi^+=-\Phi^-$。

## 双曲：$n_{s,t}>4$

我们调整 $\alpha,\alpha^\vee$ 使得 $c_{s,t}=c_{t,s}=-2\cosh\theta<-2$，其中 $\theta>0$ 是实数，
$$A = \begin{pmatrix}2&-2\cosh\theta\\-2\cosh\theta&2\end{pmatrix}$$
是不定的。

这次我们先来算 $V^\ast$ 中的根系：不难得到
$$\alpha\xrightarrow{\ t\ }\shthe{}\alpha+\shthe{2}\beta\xrightarrow{\ s\ }\shthe{3}\alpha+\shthe{2}\beta\xrightarrow{\ t\ }\cdots$$
$$\beta\xrightarrow{\ s\ }\shthe{2}\alpha+\shthe{}\beta\xrightarrow{\ t\ }\shthe{2}\alpha+\shthe{3}\beta\xrightarrow{\ s\ }\cdots$$
于是 $\{\alpha,\beta\}$ 在 $\wst$ 的作用下的集合为
$$\Phi =\left\{\shthe{k}\alpha + \shthe{(k\pm1)}\beta,\ k\in\mathbb{Z}\right\}.$$
$\Phi$ 中的元素对任何 $k\in\mathbb{Z}$ 都不相同，所以是个无限集合，并且也可以分解为正根 $\Phi^+$ 和负根 $\Phi^-$ 的并。相应地 $\wst$ 是无限群，其元素由 $s,t$ 以及它们所有的交错乘积组成。

与 $n_{s,t}<4$ 的情形类似，$\{\alpha^\vee, \beta^\vee\}$ 构成 $V$ 的一组基，我们规定 $V$ 上的内积 $\bullet$ 如下：

$$\begin{pmatrix}\alpha^\vee\bullet\alpha^\vee&\alpha^\vee\bullet\beta^\vee\\\beta^\vee\bullet\alpha^\vee&\beta^\vee\bullet\beta^\vee\end{pmatrix}=\begin{pmatrix}1&-\cosh\theta\\-\cosh\theta&1\end{pmatrix}=A/2.$$
$V$ 在此内积下成为一个二维双曲平面，$\alpha^\vee,\beta^\vee$ 分别是与直线 $H_\alpha,H_\beta$ 在此内积 $\bullet$ 下垂直的单位法向量，$s,t$ 是关于镜面 $H_\alpha,H_\beta$ 的正交反射。由于 $\alpha^\vee\bullet\beta^\vee=-\cosh\theta$ 所以 $st$ 是一个角度为 $2\theta$ 的双曲旋转。

仿照仿射的情形不难证明 $\wst$ 在 $V$ 上的作用是离散的。实际上完全可以把仿射情形的证明照抄在这里，它们是一模一样的，唯一的区别只是把 $m,n$ 换成 $\shthe{m}$ 和 $\shthe{n}$。

为了画图好看我们再折腾一下 （这些不是数学上必须的）。记 $t=\cosh\theta>1$，将 $\{\alpha^\vee,\beta^\vee\}$ 正交化得到一组正交基
$$\alpha^\vee_1=\alpha^\vee,\quad \beta^\vee_1=-\frac{t\alpha^\vee+\beta^\vee}{\sqrt{t^2-1}}=-\coth\theta\cdot\alpha^\vee -\csch\theta\cdot\beta^\vee.$$
注意 $\alpha^\vee_1\bullet\alpha^\vee_1=1$ 而 $\beta^\vee_1\bullet\beta^\vee_1=-1$。这不意外，因为这个内积空间是双曲型的，不可能出现两个正交且范数都是 1 的基向量。

对 $v\in V$，设 $v=x\alpha^\vee_1+y\beta^\vee_1$，则内积 $\bullet$ 在新坐标系 $\{\alpha^\vee_1,\beta^\vee_1\}$ 下对应的二次型为
$$Q(v) = v\bullet v = x^2 - y^2.$$
在 $\{\alpha^\vee_1,\beta^\vee_1\}$ 这组新基下 $\alpha^\vee$ 的坐标为 $(1,0)$，由 $\beta^\vee_1=-\frac{t\alpha^\vee+\beta^\vee}{\sqrt{t^2-1}}$ 可得 $\beta^\vee$ 的坐标为 $(-t,-\sqrt{t^2-1})$。

由
$$\begin{align*}
\lfun{\alpha}{x\alpha_1^\vee + y\beta_1^\vee}&=2x\\
\lfun{\beta}{x\alpha_1^\vee + y\beta_1^\vee}&=-2x\cosh\theta +2y\sinh\theta
\end{align*}$$
可得 $H_\alpha$ 是 $y$ 轴，$H_\beta$ 是直线 $y=\tfrac{t}{\sqrt{t^2-1}}x=\coth\theta\cdot x$。$K$ 和它的所有像都位于迷向锥 $Q(v)<0$ 内部，此迷向锥以 $y=\pm x$ 为边界。这时 Tits 锥 $\mathcal{C}=\bigcup_{w\in \wst}w\overline{K}$ 由迷向锥上半分支的内部和原点组成。

<img style="margin:0px auto;display:block" width=400 src="/images/coxeter-groups/hyperbolic2d.svg"/>

在上图中，双曲线 $x^2-y^2=-1$ 的参数化是 $(\sinh\theta, \cosh\theta)$，过原点和此点的直线方程是 $y=\coth\theta\cdot x$，这印证了基本区域 $K$ 的 [双曲角度](https://en.wikipedia.org/wiki/Hyperbolic_angle) 是 $\theta$。
