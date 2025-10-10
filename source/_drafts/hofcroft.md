--------------------------------------
title: 最小化有限状态机的 Hopcroft 算法
categories: [算法]
date: 2013-08-17
url: hopcroft-dfa-minimization
--------------------------------------

\newcommand{\pre}{\mathrm{Pre}}
\newcommand{\inst}{\mathrm{Instab}}
\newcommand{\P}{\mathcal{P}}


# 背景知识


一个**有限状态机**（Deterministic finite automaton，以下简称 DFA）$A$ 是一个 5 元组
$$A=(Q,\Sigma,\delta,q_0,F).$$
其中：

+ $Q$ 为有限状态集合；
+ $\Sigma$ 为有限字母表；
+ $\delta:Q\times\Sigma\to Q$ 为转移函数；
+ $q_0\in Q$ 初始状态；
+ $\varnothing\ne F\subseteq Q$ 为接受集。

对任意字母 $a\in\Sigma$ 与集合 $S\subseteq Q$，定义**前驱集**：
$$\pre_a(S):=\{\,q\in Q\mid \delta(q,a)\in S\,\}.$$

设 $\P=\{X_1,\ldots,X_k\}$ 是 $Q$ 的若干非空且互不相交的子集构成的集合。如果它们的不交并等于 $Q$：
$$Q = X_1\sqcup\cdots\sqcup X_k.$$
我们就称 $\P$ 是 $Q$ 的一个**划分**。任何 $X_i$ 叫做**块**。

若 $\P'$ 是由 $\P$ 把若干块进一步分成更小的块而得（即每个 $X\in \P'$ 都包含于某个 $Y\in \P$），则称 $\P'$ 是 $\P$ 的**细化**。记作 $\P\preceq\P'$。

对任意 $X\in\P'$，存在唯一的块 $Y\in \P$ 使 $X\subseteq Y$；我们称 $Y$ 是 $X$ 的**母块**，记作 $\mathrm{par}_{\P}(Z)$。

:::{.definition}
给定划分 $\P$，定义：
$$
\mathrm{Instab}(\P)\ :=\ \bigl\{(S,a,Z)\ \bigm|\ S,Z\in \P,\ a\in\Sigma,\ 0<|\mathrm{Pre}_a(S)\cap Z|<|Z|\bigr\}.
$$
:::

含义：$(S,a,Z)\in \mathrm{Instab}(\P)$ 意味着用 $(S,a)$ 作为**分裂器**可以把块 $Z$ 真正劈开为两个非空部分。

:::{.definition}
给定一次迭代前后的划分 $\P$ 与 $\P'$（其中 $\P'$ 是 $\P$ 的细化），称三元组 $(S,a,Z)$ 是一次迭代后出现的**新不稳定性**，若满足：

1. $(S,a,Z)\in\mathrm{Instab}(\P')$；
2. 记 $Y:=\mathrm{par}_\P(Z)\in \P$（即 $Z$ 在旧划分中的母块），则 $(S,a,Y)\notin \mathrm{Instab}(\P)$。
:::


:::{.definition}
对划分 $\P$ 与集合 $L\subseteq \P\times\Sigma$（称为**工作表**），定义：
$$
\mathrm{Cover}(L,P)\ :\ \forall (S,a,Z)\in\mathrm{Instab}(\P),\ \exists(T,a)\in L\ \text{s.t.}\ 0<|\mathrm{Pre}_a(T)\cap Z|<|Z|.
$$
:::
即：$L$ 不要求列出全部不稳定对，但**必须覆盖**所有当前不稳定。

---

## 1. 算法定义

**(1.1) 初始划分与工作表**

$$
P_0=\{F,\ Q\setminus F\}.
$$

对每个 $a\in\Sigma$：若 $|F|\le |Q\setminus F|$ 则把 $(F,a)$ 放入 $L$，否则放 $(Q\setminus F,a)$。

**(1.2) 一次迭代**

从 $L$ 取出一对 $(B_j,a)$。对每个块 $Y\in P$ 令：
$$
X_Y:=\mathrm{Pre}_a(B_j)\cap Y.
$$

若 $\varnothing\subsetneq X_Y\subsetneq Y$，则用：
$$
Y' := X_Y,\qquad Y'' := Y\setminus X_Y
$$
替换 $Y$。  
所有可分裂的 $Y$ 被如此处理，得到新的划分 $P'$（是 $P$ 的细化）。

**(1.3) 更新工作表**

对每个刚被分裂的 $Y$ 和每个字母 $c\in\Sigma$：

- 若 $(Y,c)\in L$，则从 $L$ 删除它，并把 $(Y',c),(Y'',c)$ 加入 $L$；
- 若 $(Y,c)\notin L$，则仅把两半中**较小者** $(Y^*,c)$ 加入 $L$，其中 $|Y^*|=\min\{|Y'|,|Y''|\}$。

当 $L=\varnothing$ 时停止。

---

## 2. 三个基础引理

### 引理 A（替换安全性）

若 $Y$ 被分裂为 $Y',Y''$，则对任意 $c\in\Sigma$：
$$
\mathrm{Pre}_c(Y)=\mathrm{Pre}_c(Y')\ \dot\cup\ \mathrm{Pre}_c(Y'').
$$

因此：若 $(Y,c)\in L$，用 $(Y',c),(Y'',c)$ 替换 $(Y,c)$，则任何原本由 $(Y,c)$ 在某块 $Z$ 上诱发的切分，替换后必由其中之一诱发。  

*证明.* 由 $\delta(\cdot,c)$ 为函数可知前驱分配可分，且 $Y=Y'\sqcup Y''$。■

---

### 引理 B（新不稳定只可能来自“新目标块”）

设一次迭代后从 $P$ 得到 $P'$。若 $(S,a,Z)$ 是**新不稳定性**，则 $S$ 必为本轮被分裂的旧块 $Y$ 的子块。

*证明.* 因为 $(S,a,Z)$ 是新不稳定，按定义 $(S,a,Y_0)\notin \mathrm{Instab}(P)$，其中 $Y_0=\mathrm{par}_P(Z)$。  
若 $S$ 未被分裂，则 $\mathrm{Pre}_a(S)$ 未变：

- 若 $Z$ 是旧块（即 $Z=Y_0$），则 $\mathrm{Pre}_a(S)\cap Z$ 未变；
- 若 $Z\subsetneq Y_0$，则
  $$
  \mathrm{Pre}_a(S)\cap Z=(\mathrm{Pre}_a(S)\cap Y_0)\cap Z,
  $$
  且 $\mathrm{Pre}_a(S)\cap Y_0\in\{\varnothing,Y_0\}$，故仍为 $\varnothing$ 或 $Z$。

矛盾。  
故 $S$ 必为本轮被分裂旧块 $Y$ 的子块。■

---

### 引理 C（小半充分性）

设旧块 $Y$ 被分裂为 $Y',Y''$。令 $S\in\{Y',Y''\}$，$S^c:=Y\setminus S$。  
若存在 $Z\in P'$、$c\in\Sigma$ 使：
$$
0<|\mathrm{Pre}_c(S)\cap Z|<|Z| \tag{★}
$$
则 $(S^c,c)$ 也能把同一 $Z$ 劈开。  
因此，只把两半中任一（算法取小半）加入 $L$ 即可覆盖全部新不稳定。

*证明.* 设 $Z_0:=\mathrm{par}_P(Z)$。由新不稳定定义，$\mathrm{Pre}_c(Y)\cap Z_0\in\{\varnothing,Z_0\}$。若为空与 (★) 矛盾；  
故 $\mathrm{Pre}_c(Y)\cap Z_0=Z_0$。由引理 A：
$$
\mathrm{Pre}_c(Y)=\mathrm{Pre}_c(S)\ \dot\cup\ \mathrm{Pre}_c(S^c).
$$
与 $Z\subseteq Z_0$ 相交得：
$$
Z=(\mathrm{Pre}_c(S)\cap Z)\ \dot\cup\ (\mathrm{Pre}_c(S^c)\cap Z).
$$
因 $\mathrm{Pre}_c(S)\cap Z$ 是 $Z$ 的真非空子集，右项也非空且为真子集，故 $(S^c,c)$ 同样劈开 $Z$。■

---

## 3. 覆盖不变式的建立与保持

### (3.1) 基线

初始划分 $P_0=\{B_1,B_2\}=\{F,Q\setminus F\}$。  
对任意 $a\in\Sigma$、$Y\in\{B_1,B_2\}$：
$$
\mathrm{Pre}_a(B_2)\cap Y=Y\setminus(\mathrm{Pre}_a(B_1)\cap Y).
$$
于是
$$
0<|\mathrm{Pre}_a(B_1)\cap Y|<|Y|
\iff
0<|\mathrm{Pre}_a(B_2)\cap Y|<|Y|.
$$
初始化时选择较小者入 $L$，即可覆盖所有不稳定。■

---

### (3.2) 一步保持

设取出 $(B_j,a)$，得到新划分 $P'$ 和 $L'$。任取 $(S,c,Z)\in\mathrm{Instab}(P')$。

#### 情形 1：旧不稳定

若 $(S,c,Z)\in\mathrm{Instab}(P)$，由 $\mathrm{Cover}(L,P)$ 存在 $(T,c)\in L$ 覆盖它。分三类：

1. $(T,c)=(B_j,a)$：此轮切分已消去该不稳定；
2. 本轮未分裂 $T$：则 $(T,c)$ 保留在 $L'$；
3. 本轮分裂了 $T$：由引理 A，$(T',c)$ 或 $(T'',c)$ 劈开同一 $Z$，且二者加入 $L'$。

#### 情形 2：新不稳定

若 $(S,c,Z)$ 为**新不稳定性**。由引理 B，$S$ 是某旧块 $Y$ 的子块。

1. 若 $(Y,c)\in L$，则替换为 $(Y',c),(Y'',c)$ 并入 $L'$，其中包含 $S$ 的一个劈开 $Z$；
2. 若 $(Y,c)\notin L$，则仅加小半 $(Y^*,c)$。由引理 C，无论加哪半都能覆盖 $(S,c,Z)$。

综上，任取 $(S,c,Z)\in\mathrm{Instab}(P')$ 均被 $L'$ 覆盖，即 $\mathrm{Cover}(L',P')$ 成立。■

---

## 4. 终止、稳定性与最小性

### (4.1) 全域稳定

若算法停止，$L=\varnothing$。由不变式得 $\mathrm{Instab}(P)=\varnothing$：
$$
\forall S,Z\in P,\ \forall a\in\Sigma,\quad
\mathrm{Pre}_a(S)\cap Z\in\{\varnothing,Z\}.
$$
称此划分为**全域稳定**。

### (4.2) 语言等价

定义关系 $p\sim q \iff \exists S\in P:\ p,q\in S$。

- **右同余：**
若 $p\sim q$，取任意 $a$。设 $S$ 为含 $\delta(p,a)$ 的块，$Z$ 为含 $p,q$ 的块。  
因 $p\in\mathrm{Pre}_a(S)\cap Z$ 且全域稳定，得 $\mathrm{Pre}_a(S)\cap Z=Z$，故 $\delta(q,a)\in S$，即 $\delta(p,a)\sim\delta(q,a)$。

- **接受性相容：**
初始划分分开 $F$ 与 $Q\setminus F$，之后只细化，故若 $p\sim q$ 则空串接受性一致。  
对串长归纳得：对任意 $w\in\Sigma^*$，$\delta(p,w)\in F \Leftrightarrow \delta(q,w)\in F$。

因此商 DFA 与原 DFA **语言等价**。■

### (4.3) 最小性

令 $\equiv$ 为 Myhill–Nerode 等价。由上节，$p\sim q\Rightarrow p\equiv q$，故划分 $P$ 细化 $\equiv$ 的类划分。  
另一方面，全域稳定意味着 $P$ 是在保持右同余与接受性条件下的**最粗细化**。  
而 $\equiv$ 的类划分正是此性质的最粗划分。  
因此二者一致，商 DFA 状态数即最小状态数。■

---

## 5. 终止与复杂度（与正确性无关）

每次真分裂使某块规模减小；每个块的小半最多被选入 $L$ $O(\log|Q|)$ 次。  
因此总复杂度为 $O(|\Sigma|\cdot|Q|\log|Q|)$。  
引理 C 已保证“只加小半”不影响正确性，只影响效率。

---

## ✅ 结论

通过定义：

- 不稳定集合 $\mathrm{Instab}(P)$；
- 新不稳定性；
- 覆盖不变式 $\mathrm{Cover}(L,P)$；

并结合三条核心引理：

- **替换安全性** (A)；
- **新不稳定仅由新目标产生** (B)；
- **小半充分性** (C)；

我们证明：

1. 初始化时 $\mathrm{Cover}(L,P_0)$ 成立；
2. 每轮迭代保持不变式；
3. 终止时划分全域稳定，商自动机语言等价且最小。

这构成了 Hopcroft 算法（带工作表 $L$、小半入表）的完整正确性证明。
