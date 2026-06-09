---
title: "引理 perturb / contain-time-like / disjoint-pair 的重写证明"
date: 2026-06-09
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
\newcommand{\S}{\mathcal{S}}
\newcommand{\H}{\mathcal{H}}
\newcommand{\tcr}{\overline{\mathcal{C}_r}}
\newcommand{\sign}[1]{\mathrm{sgn}(#1)}
\newcommand{\Rntwo}{\mathbb{R}^{n+1,1}}
\newcommand{\PR}{\mathrm{P}(\mathbb{R}^{n+1,1})}
\newcommand{\L}{\mathbb{L}^{n+1}}
\newcommand{\PL}{\mathrm{P}(\mathbb{L}^{n+1})}
\newcommand{\LR}{\mathbb{R}^{n+1,1}}
\newcommand{\ER}{\overline{\mathbb{R}^n}}
\newcommand{\x}{\mathbf{x}}
\newcommand{\y}{\mathbf{y}}
\newcommand{\a}{\mathbf{a}}
\newcommand{\n}{\mathbf{n}}
\renewcommand{\bar}{\overline}

本文重写 [Boyd-Maxwell.md](Boyd-Maxwell.md) 中三个引理的证明，补充所有被原文省略的推理步骤。所有记号与原文一致。

----

# 预备事实：Lorentz 内积在光锥上的符号

设 $V = \R^{n+1,1}$，内积符号为 $(n+1,1)$。$\Q_+$ 是 $\{v\in V\mid (v,v)\leq0,\;v\neq0\}$ 的一个连通分支。

::: {.fact #lorentz-sign}
对任意 $u,v\in\Q_+$：

1. **同分支内积非正**：$(u,v)\leq 0$。
2. **等号条件**：$(u,v)=0$ 当且仅当 $u,v$ 都是 light-like 且 $v=\lambda u$ 对某 $\lambda>0$（即 $u,v$ 落在同一条光锥射线上）。
3. **否则严格负**：只要 $u,v$ 不落在同一条光锥射线上，就有 $(u,v)<0$。特别地，若 $u$ 或 $v$ 中有一个是 time-like，则 $(u,v)<0$ 自动成立。

对 $u\in\Q_+$ 和 $v\in\Q_-$（相反分支）：

4. **异分支内积非负**：$(u,v)\geq 0$。
5. **等号条件**：$(u,v)=0$ 当且仅当 $u,v$ 都是 light-like 且 $v=-\lambda u$ 对某 $\lambda>0$。
6. **否则严格正**：若 $u$ 或 $v$ 中有一个是 time-like，则 $(u,v)>0$。
:::

**证明**（梗概）：选取标准正交基使得内积为 $x_1y_1+\cdots+x_{n+1}y_{n+1}-x_{n+2}y_{n+2}$，$\Q_+$ 由 $x_{n+2}>0$ 且 $x_{n+2}\geq\sqrt{\sum_{i=1}^{n+1}x_i^2}$ 刻画。于是
$$(u,v)=\sum_{i=1}^{n+1}u_iv_i - u_{n+2}v_{n+2}
\leq \sqrt{\sum u_i^2}\sqrt{\sum v_i^2} - u_{n+2}v_{n+2}
\leq 0.$$
第一个不等号是 Cauchy-Schwarz，等号 $\Leftrightarrow$ $(u_1,\ldots,u_{n+1})$ 与 $(v_1,\ldots,v_{n+1})$ 成比例。第二个不等号来自 $\sqrt{\sum u_i^2}\leq u_{n+2}$ 等。等号同时成立 $\Leftrightarrow$ $u,v$ 均为 light-like 且正比例。对于异分支，将 $-v$ 应用于同分支结论即得。$\square$

下文反复使用此事实，不再每次引用。

----

# Lemma `perturb`

::: {.lemma #perturb}
设 $\P$ 是球堆，$k\in\P$。设 $v\in C_k$ 满足 $(v,k)=a>0$。则对任何 $0<t\leq a$，$u=v-tk$ 满足：

1. $u$ 是 time-like 的并且 $u\sim v$；
2. $(u,k)>0$。

从而 $u$ 的某个正倍数 $u'\in C_k$。进一步，如果 $k'\neq k\in\P$ 满足 $v\in C_k\cap C_{k'}$，则同样有 $u'\in C_k\cap C_{k'}$。
:::

**证明**：

**(1) $u$ 是 time-like 的。**
$$(u,u) = (v-tk,\,v-tk) = (v,v) - 2t(v,k) + t^2(k,k).$$
由 $v\in\H\subset\Q_+$ 知 $(v,v)\leq 0$；由 $k\in\S$ 知 $(k,k)=1$；$(v,k)=a$。故
$$(u,u) = (v,v) - 2at + t^2 \leq -2at + t^2 = t(t-2a).$$
因 $0<t\leq a$，有 $t-2a \leq -a \leq -t < 0$，故 $t(t-2a)<0$，从而 $(u,u)<0$。所以 $u$ 是 time-like 的。

**(2) $u\sim v$（同一光锥分支）。**
$$(u,v) = (v-tk,\,v) = (v,v) - t(v,k) = (v,v) - at.$$
由 $(v,v)\leq 0$、$a>0$、$t>0$ 得 $(u,v)\leq -at < 0$。因 $u$ 是 time-like，$v\in\Q_+$，内积 $<0$ 说明 $u$ 与 $v$ 同属 $\Q_+$（事实 \ref{lorentz-sign}），即 $u\sim v$。

**(3) $(u,k)>0$ 且 $u$ 可缩放至 $C_k$。**
$$(u,k) = (v-tk,\,k) = (v,k) - t(k,k) = a - t \geq 0.$$
因 $u\in\Q_+$（由 (2)），存在正数 $\lambda>0$ 使 $u'=\lambda u\in\H$。此时 $(u',k)=\lambda(u,k)\geq0$，所以 $u'\in C_k$。

**(4) 保持 $C_{k'}$ 中的位置。** 设 $k'\neq k\in\P$ 且 $v\in C_{k'}$，即 $(v,k')\geq 0$。则
$$(u,k') = (v-tk,\,k') = (v,k') - t(k,k').$$
由球堆条件 $(k,k')\leq -1$，得 $-(k,k')\geq 1$。故
$$(u,k') \geq 0 - t(k,k') = t\cdot(-(k,k')) \geq t > 0.$$
因此 $(u',k') = \lambda(u,k') > 0$，$u'\in C_{k'}$。

综上，$u'\in C_k\cap C_{k'}$。注意对不同的 $t\in(0,a]$，得到的 $u$ 落在不同的射线上（因 $(u,k)=a-t$ 随 $t$ 变化），故缩放至 $\H$ 后的 $u'$ 也互不相同。$\square$

----

# Lemma `contain-time-like`

::: {.lemma #contain-time-like}
设 $\P$ 是球堆且 $k_1\neq k_2\in\P$。则以下三点等价：

1. $|C_{k_1}\cap C_{k_2}|>1$；
2. 存在 $v\in C_{k_1}\cap C_{k_2}$ 且 $v$ 是 time-like 的；
3. 存在 $v\in C_{k_1}\cap C_{k_2}$ 使得不等式 $(v,k_1)>0$ 和 $(v,k_2)>0$ 至少有一个成立。
:::

**证明**：

首先注意：由球堆条件 $(k_1,k_2)\leq -1$，
$$(k_1+k_2,\,k_1+k_2) = (k_1,k_1)+(k_2,k_2)+2(k_1,k_2) = 2+2(k_1,k_2) \leq 0.$$
故 $k_1+k_2$ 是 time-like（当 $(k_1,k_2)<-1$）或 light-like（当 $(k_1,k_2)=-1$）。特别地，$k_1+k_2\neq0$ 且落在 $\Q_+\cup\Q_-$ 中。

----

**$1\Rightarrow 2$：** 设 $|C_{k_1}\cap C_{k_2}|>1$。取两个不同的点 $x\neq y\in C_{k_1}\cap C_{k_2}\subset\H$。它们来自 $\Q_+$ 中不同的射线，故不共线。由事实 \ref{lorentz-sign}（同分支，不同射线），必有 $(x,y)<0$。

令 $z = x+y$。则
$$(z,z) = (x,x)+(y,y)+2(x,y).$$
因 $x,y\in\H\subset\Q_+$，$(x,x)\leq0$，$(y,y)\leq0$，且 $(x,y)<0$。故 $(z,z)<0$，$z$ 是 time-like 的。此外，
$$(z,k_1) = (x,k_1)+(y,k_1) \geq 0+0 = 0,$$
同理 $(z,k_2)\geq0$。$z$ 是 time-like 故 $z\in\Q_+$（不可能为零向量，因为 $(z,z)<0$）。取正数 $\lambda>0$ 使 $z'=\lambda z\in\H$，则 $z'\in C_{k_1}\cap C_{k_2}$ 且 $z'$ 是 time-like 的。得证。

----

**$2\Rightarrow 3$：** 设 $v\in C_{k_1}\cap C_{k_2}$ 是 time-like 的。则 $(v,k_1)\geq0$、$(v,k_2)\geq0$。需证至少一个是 $>0$。

若不然，设 $(v,k_1)=(v,k_2)=0$。则 $(v,k_1+k_2)=0$。但 $v$ 是 time-like 而 $k_1+k_2$ 是 time/light-like。由事实 \ref{lorentz-sign} 第 2 条：同分支内积为零仅当两者都是 light-like 且共线——可 $v$ 是 time-like，矛盾。若 $v$ 与 $k_1+k_2$ 在不同分支，则内积 $>0$（事实 \ref{lorentz-sign} 第 4--6 条），也与 $(v,k_1+k_2)=0$ 矛盾。

故 $(v,k_1)>0$ 或 $(v,k_2)>0$（或两者均 $>0$）。得证。

----

**$3\Rightarrow 1$：** 不妨设 $a := (v,k_1)>0$。由引理 **perturb**，对每个 $t\in(0,a]$，存在 $u_t'\in C_{k_1}\cap C_{k_2}$。不同的 $t$ 给出 $(u_t',k_1)$ 的不同值（因 $(u_t,k_1)=a-t$），故 $u_t'$ 互不相同。因此 $|C_{k_1}\cap C_{k_2}|\geq |(0,a]| = \infty > 1$。得证。

三个方向全部封闭。$\square$

----

# Lemma `disjoint-pair`

::: {.lemma #disjoint-pair}
设 $\P$ 是球堆且 $k_1\neq k_2\in\P$，则集合 $C_{k_1}\cap C_{k_2}$ 和 $C_{-k_1}\cap C_{-k_2}$ 中必有一个至多只包含一个点。并且当这两个集合中的某个恰好只含一个点时，此点与 $k_1+k_2$ 共线，并且有 $(k_1,k_2)=-1$ 成立。
:::

**证明**：

回忆 $(k_1+k_2,\,k_1+k_2)=2+2(k_1,k_2)$。

----

### 情形一：$(k_1,k_2)<-1$

此时 $k_1+k_2$ 是 **time-like** 的。它必属于 $\Q_+$ 或 $\Q_-$。

**子情形 1A：$k_1+k_2\in\Q_+$。** 考虑任意 $u\in C_{k_1}\cap C_{k_2}\subset\Q_+$。一方面 $u\in C_{k_1}\cap C_{k_2}$ 给出
$$(u,k_1+k_2) = (u,k_1)+(u,k_2) \geq 0.$$
另一方面 $u,k_1+k_2\in\Q_+$，由事实 \ref{lorentz-sign} 第 1 条（同分支内积非正），
$$(u,k_1+k_2) \leq 0.$$
故 $(u,k_1+k_2)=0$。但 $k_1+k_2$ 是 time-like，其正交补 $(k_1+k_2)^\perp$ 是 space-like 子空间，不能包含任何 $\Q_+$ 中的向量（$\Q_+$ 中所有向量都是 time-like 或 light-like）。矛盾。

因此 $C_{k_1}\cap C_{k_2} = \varnothing$，自然 $|C_{k_1}\cap C_{k_2}|=0\leq 1$。结论成立。

**子情形 1B：$k_1+k_2\in\Q_-$。** 此时 $-k_1-k_2\in\Q_+$。考虑任意 $v\in C_{-k_1}\cap C_{-k_2}$。由 $v\in C_{-k_1}$ 得 $(v,-k_1)\geq0\Rightarrow (v,k_1)\leq0$；同理 $(v,k_2)\leq0$。故
$$(v,-k_1-k_2) = -(v,k_1)-(v,k_2) \geq 0,$$
即 $(v,\,-k_1-k_2)\geq0$。又 $-k_1-k_2\in\Q_+$ 且 $v\in\Q_+$，同分支给出 $(v,-k_1-k_2)\leq0$。故 $(v,-k_1-k_2)=0$。但 $-k_1-k_2$ 是 time-like，同上论证导致矛盾。

因此 $C_{-k_1}\cap C_{-k_2} = \varnothing \leq 1$。结论成立。

**小结**：当 $(k_1,k_2)<-1$ 时，两个交集中恰好有一个为空集，另一个可能很大。无论如何，「至少有一个 $\leq1$」成立，且此时不可能出现「恰好一个点」的情形（因为是空集，不是单点集），与引理后半句的「恰好一个点 $\Rightarrow$ $(k_1,k_2)=-1$」相容。

----

### 情形二：$(k_1,k_2)=-1$

此时 $(k_1+k_2,k_1+k_2)=0$，$k_1+k_2$ 是 **light-like** 的。同样分两个子情形。

**子情形 2A：$k_1+k_2\in\Q_+$。** 对任意 $u\in C_{k_1}\cap C_{k_2}\subset\Q_+$：
$$(u,k_1+k_2) \geq 0 \quad\text{且}\quad (u,k_1+k_2) \leq 0 \;\;(\text{同分支}),$$
故 $(u,k_1+k_2)=0$。由事实 \ref{lorentz-sign} 第 2 条（同分支内积为零 $\Leftrightarrow$ 两者均为 light-like 且正比例），知 $u$ 是 light-like 的且 $u=\lambda(k_1+k_2)$ 对某 $\lambda>0$。这说明 $C_{k_1}\cap C_{k_2}$ 中的点至多只有一个（即 $[k_1+k_2]$ 那条射影直线与 $\H$ 的交点）。若此点确实存在（即 $k_1+k_2$ 可缩放至 $\H$），则 $|C_{k_1}\cap C_{k_2}|=1$，且该点显然与 $k_1+k_2$ 共线；否则 $C_{k_1}\cap C_{k_2}=\varnothing$。

故 $|C_{k_1}\cap C_{k_2}|\leq 1$，结论成立。此时 $C_{-k_1}\cap C_{-k_2}$ 可能很大。

**子情形 2B：$k_1+k_2\in\Q_-$。** 令 $w = -k_1-k_2\in\Q_+$。对任意 $v\in C_{-k_1}\cap C_{-k_2}$：
$$(v,w) = -(v,k_1+k_2) = -(v,k_1)-(v,k_2).$$
由 $v\in C_{-k_1}$ 有 $(v,-k_1)\geq0\Rightarrow (v,k_1)\leq0$；同理 $(v,k_2)\leq0$。故 $(v,w)\geq0$。又 $v,w\in\Q_+$，同分支给出 $(v,w)\leq0$。故 $(v,w)=0$。同子情形 2A，$v$ 是 light-like 且与 $w$ 正比例，从而 $v$ 与 $k_1+k_2 = -w$ 负比例（但仍落在同一条射影直线上，即 $[k_1+k_2]=[-k_1-k_2]$）。故 $|C_{-k_1}\cap C_{-k_2}|\leq 1$。

**小结**：当 $(k_1,k_2)=-1$ 时，$k_1+k_2$ 落在 $\Q_+$ 则 $|C_{k_1}\cap C_{k_2}|\leq1$，落在 $\Q_-$ 则 $|C_{-k_1}\cap C_{-k_2}|\leq1$。若该交集恰好含一个点，此点是 $[k_1+k_2]$，与 $k_1+k_2$ 共线。

----

### 唯一性论断

引理后半句断言「当某集合恰好只含一个点时，此点与 $k_1+k_2$ 共线」。这在情形二的子情形分析中已得证：若 $C_{k_1}\cap C_{k_2}$（或 $C_{-k_1}\cap C_{-k_2}$）非空，则其中的点必为 $[k_1+k_2]$。

----

两种情形合起来，覆盖了 $(k_1,k_2)\leq-1$ 的所有可能（球堆条件），引理得证。$\square$

----

# 关于情形二的补充说明

情形二的论证中有一个细微之处值得单独指出：当 $(k_1,k_2)=-1$ 且 $k_1+k_2\in\Q_+$ 时，$[k_1+k_2]$ 是否一定落在 $\H$ 中（即 $C_{k_1}\cap C_{k_2}$ 是否非空）？

$k_1+k_2$ 是 light-like，$\H$ 定义为 $\{v\in\Q_+\mid (v,e_{n+2})=1\}$。只要 $(k_1+k_2,e_{n+2})\neq0$，就可以通过缩放使 $k_1+k_2$ 满足 $\H$ 的条件。而 $(k_1+k_2,e_{n+2}) = (k_1,e_{n+2})+(k_2,e_{n+2})$。对于一般的 $k_1,k_2\in\S$，这个值可能为零——此时 $k_1+k_2$ 对应的是 $\H$ 的一个「无穷远点」，$C_{k_1}\cap C_{k_2}$ 为空。这不影响结论 $|C_{k_1}\cap C_{k_2}|\leq 1$（空集 $\leq 1$ 成立），只是「恰好一个点」的情形要求 $(k_1+k_2,e_{n+2})\neq0$。原文的射影处理（在 $\PR$ 中工作）避免了这一技术细节。
