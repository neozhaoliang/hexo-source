---
title: "Coxeter 群笔记（七）：极小根与正则语言性质"
categories: [Coxeter Groups]
date: 2021-12-06
---

\newcommand{\lfun}[2]{\langle #1,\,#2\rangle}
\newcommand{\R}{\mathbb{R}}
\newcommand{\gl}{\mathrm{GL}}
\newcommand{\inn}{(\cdot,\cdot)}
\newcommand{\fd}{\mathcal{D}}
\newcommand{\tc}{\mathcal{C}}
\newcommand{\barfd}{\overline{\mathcal{D}}}
\newcommand{\cone}[1]{\mathrm{cone}(#1)}
\newcommand{\negf}[1]{\mathrm{Neg}(#1)}
\newcommand{\stab}[1]{\mathrm{Stab}(#1)}
\newcommand{\plc}[1]{\mathrm{PLC}(#1)}
\newcommand{\barc}{\overline{C}}
\newcommand{\bartc}{\overline{\tc}}
\newcommand{\sthe}[1]{\dfrac{\sin #1\theta}{\sin\theta}}
\newcommand{\shthe}[1]{\dfrac{\sinh #1\theta}{\sinh\theta}}
\newcommand{\span}{\mathrm{span}}
\newcommand{\ra}{r_\alpha}
\newcommand{\rb}{r_\beta}
\newcommand{\inn}{(\,,)}
\newcommand{\bbR}{\mathbb{R}}
\newcommand{\dom}{\,\mathrm{dom}\,}
\newcommand{\dp}[1]{\mathrm{dp}(#1)}
\newcommand{\dpa}{\dp{\alpha}}
\newcommand{\dpb}{\dp{\beta}}
\newcommand{\no}{\mathrm{NO}}
\newcommand{\shlex}{\mathcal{L}}
\newcommand{\low}{\mathcal{R}}

\DeclareMathOperator{\span}{span}


:::{.proposition}
若 $\alpha,\beta\in\Phi$ 满足 $|(\alpha,\beta)|<1$，则必然有 $(\alpha,\beta)=\cos(p\pi/q)$，其中 $p,q$ 是互素的正整数，而且反射 $s_\alpha,s_\beta$ 生成的二面体群是有限群。
:::

**证明**：由已知，内积限制在二维平面 $U=\span{\{\alpha,\beta\}}$ 上是正定的。所以 $V=U\oplus U^\bot$。

我们可以不妨假定 $\alpha$ 是正根，以及 $\beta=\alpha_s$ 是单根。设
$$\alpha = c_s\alpha_s + \sum_{t\ne s }c_t\alpha_t.$$
由于 $\alpha$ 不可能与 $\beta=\alpha_s$ 共线，所以 $\gamma=\alpha - c_s\alpha_s\in U$ 且 $\gamma\ne0$。

注意到如果 $a,b\in\bbR$ 使得 $a\gamma+b\alpha_s\in\Phi$，则 $a,b$ 必须同时非负，或者同时非正。如果 $\alpha,\beta$ 所夹的角度是 $\pi$ 的无理数倍，那么 $s_\alpha s_\beta$ 是 $U$ 上角度为 $\pi$ 的无理数倍的旋转，它的各次幂会将 $\alpha$ 映射为 $U$ 中单位圆周上稠密的集合，特别地必然有某个 $k$ 使得 $(s_\alpha s_\beta)^k\alpha$ 位于扇形区域 $\{a\gamma+b\alpha_s\mid a > 0, b<0\}$ 中，这与此区域不包含任何根矛盾。所以 $\alpha,\beta$ 所夹的角度必须是 $\pi$ 的有理数倍，形如 $p\pi/q$，从而 $s_\alpha,s_\beta$ 生成一个有限二面体群 $D$。又因为 $D$ 作用在 $U^\bot$ 上是平凡的，所以 $D$ 在全空间上的作用也是有限二面体群。$\blacksquare$

:::{.definition}
对任何正根 $\alpha\in\Phi^+$，定义其深度为
$$\dp{\alpha}=\min\{\,l(w) \mid w\alpha\in\Phi^-\,\}.$$
:::

:::{.lemma #partial-order-by-simple-ref}
设 $\alpha_s$ 是单根，$\alpha\ne\alpha_s$ 是正根，则
$$\dp{s\alpha}=\begin{cases}\dp{\alpha}-1 & \text{if } (\alpha,\alpha_s)>0,\\\dp{\alpha} & \text{if } (\alpha,\alpha_s)=0.\\\dp{\alpha}+1 & \text{if } (\alpha,\alpha_s)<0.\end{cases}$$
:::

**证明**：第二条是显然的，而第三条可以由第一条得出：只要对 $s\alpha$ 应用第一条的结论即可。所以我们只需要证明第一条。

首先注意到总是有 $|\dp{s\alpha} - \dp{\alpha}|\le1$（证明简单，略）。所以只要证明在 $(\alpha,\alpha_s)>0$ 时必有 $\dp{s\alpha} < \dp{\alpha}$ 即可。

取 $w\in W$ 使得 $l(w)=\dp{\alpha}$ 且 $w\alpha\in\Phi^-$。

1. 如果 $w\alpha_s\in\Phi^-$，则 $l(ws)=l(w)-1=\dp{\alpha}-1$。利用 $(ws)(s\alpha)=w\alpha<0$ 可得
$$\dp{s\alpha}\leq l(ws)=\dp{\alpha}-1.$$
这只能是 $\dp{s\alpha}=\dp{\alpha}-1$。

2. 如果 $w\alpha_s\in\Phi^+$，记 $\gamma = w(s\alpha)$，则
$$\gamma=w(\alpha - 2(\alpha,\alpha_s)\alpha_s)=w\alpha-2(\alpha,\alpha_s)w\alpha_s.$$
由于 $\alpha\ne\alpha_s$ 是不同的正根，它们不共线，所以 $w\alpha$ 和 $w\alpha_s$ 也不共线。由假设 $(\alpha,\alpha_s)>0$，所以 $\gamma$ 是两个不共线的负根的正线性组合，所以 $\gamma$ 是负根但不是负的单根。任何单反射都无法将 $\gamma$ 变成正根。取 $t\in S$ 使得 $l(tw)<l(w)$，则 $t\gamma=(tw)(s\alpha)$ 仍然是负根，所以 $\dp{s\alpha}\leq l(tw)=l(w)-1=\dp{\alpha}-1$，结论仍然得证。$\blacksquare$

:::{.definition}
我们定义正根 $\Phi^+$ 上的偏序 $\preceq$ 如下：设 $\alpha,\beta\in\Phi^+$，则 $\alpha\preceq\beta$ 当且仅当存在 $s_1,\ldots,s_k\in S$ 使得：

+ $\beta = s_k\cdots s_1 \alpha$。
+ $\dp{s_i\cdots s_1\alpha} = \dp{\alpha} + i$ 对所有 $1\le i\le k$ 成立。
:::

:::{.definition}
对 $\alpha,\beta\in\Phi^+$，如果对任何 $w\in W$ 都有
$$w\alpha\in\Phi^-\Rightarrow w\beta\in\Phi^-.$$
我们就称 $\alpha$ 支配 $\beta$，记作 $\alpha\dom\beta$。如果 $\alpha$ 除了自己之外，不支配其它任何正根，就称 $\alpha$ 是一个**极小根**。
:::

:::{.note}
对正根 $\gamma\in\Phi^+$，位于 $\gamma$ 背面的房间是集合
$$\mathcal C_\gamma^-=\{\,w\fd\mid (\gamma,w\fd)<0\,\}.$$
于是 $\alpha\dom\beta$ 的意思就是 $\mathcal C_\alpha^- \subseteq \mathcal C_\beta^-$。即 $\beta$ 的背面区域比 $\alpha$ 的背面区域更大。换句话说，假设一个人站在基本区域 $\fd$ 里面，他是看不到镜子 $\alpha$ 的，它被 $\beta$ 完全挡住了。
:::

:::{.lemma}
设 $\alpha,\beta\in\Phi^+$，$s\in S$，则：

1. 若 $w\in W$ 使得 $w\beta$ 是正根，则 $w\alpha\dom w\beta$。
2. $\alpha\dom\beta$ 当且仅当 $(\alpha,\beta)\geq1$ 并且 $\dp{\alpha}\ge\dp{\beta}$。 
3. 若 $\alpha\prec\alpha'$ 则 $\alpha'$ 不是极小根。于是若一个根是极小根，则在偏序 $\preceq$ 下小于它的根也都是极小根。
4. 若 $\alpha$ 是极小根，但 $s\alpha$ 不是极小根，则 $s\alpha\dom\alpha$。
:::


**证明**：

1. 显然。

2. $\Rightarrow$：

3. 只要对 $\alpha\prec\alpha'$ 且 $\dp{\alpha'}=\dp{\alpha}+1$ 进行证明即可。由偏序 $\preceq$ 的定义，存在单反射 $s$ 使得 $\alpha'=s\alpha$，并且由 @Pre:partial-order-by-simple-ref 有 $(\alpha_s,\alpha)<0$。由第 1 条 $(\alpha,\beta)>0$ 所以 $\beta\ne\alpha_s$，从而 $s\beta$ 是正根，从而由第 2 条 $\alpha'=s\alpha\dom s\beta$ 不是极小根。

4. $\alpha\dom\beta$ 显然意味着 $\dpa\geq\dp{\beta}$。下面证明，如果还有等号成立则必有 $\alpha=\beta$。设 $w\in W$ 使得 $w\alpha=-\alpha_s$ 是某个负的单根，则 $w\beta\in\Phi^-$。注意这时 $w^{-1}\alpha_s=-\alpha<0$，所以 $l(sw)<l(w)$。
    + 若 $sw\beta\in\Phi^+$，则由 $w\beta<0$ 可知 $w\beta=-\alpha_s$，再结合 $w\alpha=-\alpha_s$ 可得 $\alpha=\beta$。
    + 若 $sw\beta\in\Phi^-$，则 $\dpb\leq l(sw)<\dpa$。这种情况等号不可能成立。

$\blacksquare$