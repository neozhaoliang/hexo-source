---
title: "Coxeter 群笔记（六）：Boyd-Maxwell 球堆"
categories: [Coxeter Groups]
date: 2021-12-09
url: "coxeter-groups-boyd-maxwell"
---

\newcommand{\lfun}[2]{\langle #1,\,#2\rangle}
\newcommand{\fd}{\mathcal{D}}
\newcommand{\tc}{\mathcal{C}}
\newcommand{\stab}[1]{\mathrm{Stab}(#1)}
\newcommand{\negf}[1]{\mathrm{Neg}(#1)}
\newcommand{\barfd}{\overline{\mathcal{D}}}
\newcommand{\plc}[1]{\mathrm{PLC}(#1)}
\newcommand{\barc}{\overline{C}}
\newcommand{\bartc}{\overline{\tc}}
\newcommand{\sthe}[1]{\dfrac{\sin #1\theta}{\sin\theta}}
\newcommand{\shthe}[1]{\dfrac{\sinh #1\theta}{\sinh\theta}}
\newcommand{\inn}{(\cdot,\cdot)}
\newcommand{\gl}{\mathrm{GL}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\span}{\mathrm{span}}
\newcommand{\rad}{\mathrm{rad}}
\newcommand{\cl}[1]{\overline{ #1 }}
\newcommand{\Q}{\mathcal{Q}}
\newcommand{\N}{\mathcal{N}}
\newcommand{\cone}[1]{\mathrm{cone}(#1)}
\newcommand{\bfA}{\mathbf{A}}
\newcommand{\P}{\mathcal{P}}
\newcommand{\H}{\mathcal{H}}

/coxeter-groups-three-cases/#connected-component-dot

/coxeter-groups-three-cases/#suff-for-equiv

# 球堆

::: definition
如果一个非空集合 $\P\subset V$ 满足下列条件，我们就称 $\P$ 是一个**球堆**：

1. 对任何 $k\in\P$ 有 $(k,k)=1$。
2. 对 $\P$ 中任何 $k\ne k'$ 有 $(k,k')\leq -1$。
:::


我们称形如 $\P=\{k,-k\}$ 的球堆是平凡的，因为它由一个球的内部和外部组成。否则就称 $\P$ 是非平凡的。如果 $\P$ 是非平凡的球堆，则 $-\P=\{-k\mid k\in\P\}$ 也是非平凡的，它是通过翻转 $\P$ 中每个球的内部和外部得到的。

记 $\H$ 是超平面 $\{v_{n+2}=1\}$ 与 $\Q_+$ 的截面，对任何满足 $(k,k)=1$ 的点 $k$，定义球帽
$$C_k = \{v\in\H\mid (v,k)\geq0\}.$$

::: {.lemma #disjoint-pair}
设 $\P$ 是球堆且 $k_1\ne k_2\in\P$，则集合 $C_{k_1}\cap C_{k_2}$ 和 $C_{-k_1}\cap C_{-k_2}$ 中必有一个至多只包含一个点。并且当这两个集合中的某个恰好只含一个点时，此点与 $k_1+k_2$ 共线，并且有 $(k_1,k_2)=-1$ 成立。
:::

**证明**：由于 $(k_1+k_2,k_1+k_2)=2+2(k_1,k_2)\leq0$，所以 $k_1+k_2$ 是 time-like 或者 light-like 的。设 $u\in C_{k_1}\cap C_{k_2}$，$v\in C_{-k_1}\cap C_{-k_2}$，则

$$(u, k_1+k_2)\geq0,\quad(v,k_1+k_2)\leq0.$$

如果 $k_1+k_2$ 是 time-like 的，则由上式可知 $u\not\sim k_1+k_2$ 和 $v\sim k_1+k_2$。但这与 $u\sim v$ 矛盾。所以 $k_1+k_2$ 必须是 light-like 的。

进一步如果 $(u,k_1+k_2)>0$ 且 $(v,k_1+k_2)<0$，则 $v\sim k_1+k_2$ 但是 $u\not\sim k_1+k_2$，这与 $u\sim v$ 矛盾。所以 $(u,k_1+k_2)$ 和 $(v,k_1+k_2)$ 中必然有一个是 0，即 $u$ 和 $v$ 中必有一个是 $k_1+k_2$ 的倍数，然而 $\H$ 中与 $k_1+k_2$ 共线的点是唯一确定的，所以 $\ck1\cap\ck2$ 和 $\nck1\cap\nck2$ 中必有一个至多包含一个点，且此点与 $k_1+k_2$ 共线。
