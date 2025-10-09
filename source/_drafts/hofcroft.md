--------------------------------------
title: 最小化有限状态机的 Hopcroft 算法
categories: [算法]
date: 2013-08-17
url: hopcroft-dfa-minimization
--------------------------------------

\newcommand{\pre}{\mathrm{Pre}}
\newcommand{\P}{\mathcal{P}}

一个 DFA 是一个五元组 $A=(Q,\Sigma,\delta,q_0,F)$。其中：

1. $Q$ 是一个有限的状态集合；
2. $\Sigma$ 是一个有限的输入符号集合；
3. $\delta:Q\times\Sigma\rightarrow Q$ 是转移函数；
4. $q_0\in Q$ 是初始状态；
5. $F\subseteq Q$ 是接受状态集合。

对 $a\in\Sigma$，$S\subseteq Q$ 定义

$$\pre_a(S):=\{q\in Q\mid \delta(q,a)\in S\}.$$

算法维护一个**划分** $\P$（互不相交非空块的集合，合并为 $Q$），初始
$$\P_0=\{F,\ Q\setminus F\}.$$

**工作表** $L\subseteq \P\times\Sigma$ 保存“分裂器”$(S,a)$。

**初始化 (L)**：对每个 (a\in\Sigma)，若 (|F|\le |Q\setminus F|) 则把 ((F,a)) 放入 (L)，否则放 ((Q\setminus F,a))。

**一次迭代**：从 (L) 取出一对 ((B_j,a))。对每个块 (Y\in P) 令
[
X_Y:=\mathrm{Pre}_a(B_j)\cap Y.
]
若 (\varnothing\subsetneq X_Y\subsetneq Y)，则把 (Y) 分裂为
[
Y':=X_Y,\qquad Y'':=Y\setminus X_Y .
]
将所有被分裂的 (Y) 在 (P) 中替换为对应的 (Y',Y'')，得到新划分（仍记为 (P)）。接着对每个**刚被分裂**的 (Y) 和每个 (c\in\Sigma)：

* 若 ((Y,c)\in L)，从 (L) 删除 ((Y,c))，并加入 ((Y',c),(Y'',c))；
* 若 ((Y,c)\notin L)，只把两半中**较小者** ((Y^*,c)) 加入 (L)。

当 (L=\varnothing) 时停止。以最终划分 (P^*) 的各块为状态构造商 DFA。

---

# 1. 目标与核心不变式

## 不稳定三元组

[
\mathrm{Instab}(P):={(S,a,Z):\ S,Z\in P,\ a\in\Sigma,\ 0<|\mathrm{Pre}_a(S)\cap Z|<|Z|}.
]
含义：分裂器 ((S,a)) 能在块 (Z) 上诱发**真分裂**。

## 覆盖不变式（Cover）

[
\mathrm{Cover}(L,P)\ :\ \forall (S,a,Z)\in\mathrm{Instab}(P),\ \exists (T,a)\in L\ \text{s.t.}\ 0<|\mathrm{Pre}_a(T)\cap Z|<|Z|.
]
含义：**每一个**当前不稳定，都被 (L) 中某个**同字母**分裂器覆盖（不要求就是 ((S,a)) 自己）。

**待证：**

1. **基线**：初始化后 (\mathrm{Cover}(L,P_0))；
2. **一步保持**：若 (\mathrm{Cover}(L,P)) 成立，则一轮“分裂+更新”后仍有 (\mathrm{Cover}(L',P'))；
3. **终止与最小**：若 (L=\varnothing)，则 (\mathrm{Instab}(P)=\varnothing)（全域稳定）⇒ 商 DFA 与原 DFA 语言等价且状态最少。

---

# 2. 基线成立

记 (P_0={B_1,B_2}={F,\ Q\setminus F})。对任意 (a) 与任意 (Y\in{B_1,B_2})：
[
\mathrm{Pre}_a(B_2)\cap Y=Y\setminus\big(\mathrm{Pre}_a(B_1)\cap Y\big).
]
故对固定 (a,Y)，
[
0<|\mathrm{Pre}_a(B_1)\cap Y|<|Y|\ \iff\ 0<|\mathrm{Pre}_a(B_2)\cap Y|<|Y|.
]
即“((B_1,a)) 劈开 (Y)”与“((B_2,a)) 劈开 (Y)”等价。初始化对每个 (a) 选其一（较小者）入 (L)，于是任一不稳定都被 (L) 覆盖，(\mathrm{Cover}(L,P_0)) 成立。■

---

# 3. 基本引理

**引理 1（替换安全性）**
若 (Y) 在本轮被分裂为 (Y',Y'')，则对任意 (c)：
[
\mathrm{Pre}_c(Y)=\mathrm{Pre}_c(Y')\ \dot\cup\ \mathrm{Pre}_c(Y'')\quad(\text{不交并}).
]
因而：若 ((Y,c)\in L)，用 ((Y',c),(Y'',c)) 替换它，任何原本由 ((Y,c)) 触发的切分，现在必由二者之一触发。
*证.* 因 (Y=Y'\sqcup Y'') 且 (\delta(\cdot,c)) 为函数。■

**引理 2（新不稳定只可能来自“新目标”）**
设从 (P) 经本轮得到 (P')。若
[
(S,c,Z)\in \mathrm{Instab}(P')\setminus \mathrm{Instab}(P),
]
则 **(S)** 一定是某个本轮被分裂的旧块 (Y) 的子块（即 (S\in{Y',Y''})）。
*证.* 若 (S) 不是本轮新子块，则 (\mathrm{Pre}_c(S)) 未变。检查 (Z)：

* 若 (Z) 也未变，则 (\mathrm{Pre}_c(S)\cap Z) 未变，不可能从“空/整块”变成“部分”；
* 若 (Z) 是某个被分裂的 (Y_0) 的子块（(Z\subseteq Y_0)），则
  [
  \mathrm{Pre}_c(S)\cap Z=(\mathrm{Pre}_c(S)\cap Y_0)\cap Z,
  ]
  旧时 (\mathrm{Pre}_c(S)\cap Y_0\in{\varnothing,,Y_0})（否则旧已不稳定），与 (Z) 交后仍为 (\varnothing) 或 (Z)。
  故 (S) 旧块不可能新不稳定。■

**引理 3（小半充分性）**
设 (Y) 本轮被分裂为 (Y',Y'')。令 (S\in{Y',Y''})，(S^c:=Y\setminus S)。若存在 (Z\in P')、(c\in\Sigma) 使
[
0<|\mathrm{Pre}_c(S)\cap Z|<|Z| \tag{$\star$}
]
（即以“新目标” (S) 出现新不稳定），则 ((S^c,c)) 也能劈开同一个 (Z)；换言之，只把二者**任意一个**（我们选小半）加入 (L) 就足以覆盖该新不稳定。
*证.* 令 (Z_0\in P) 为 (Z) 的母块（若 (Z) 是旧块则 (Z_0=Z)，若 (Z) 是新块则 (Z\subseteq Z_0)）。若旧时 (\mathrm{Pre}_c(Y)\cap Z_0=\varnothing)，则 (\mathrm{Pre}_c(S)\cap Z\subseteq\varnothing) 与 ((\star)) 矛盾；故必有
[
\mathrm{Pre}_c(Y)\cap Z_0=Z_0.
]
又由引理 1：(\mathrm{Pre}_c(Y)=\mathrm{Pre}_c(S)\dot\cup\mathrm{Pre}_c(S^c))。将上式与 (Z\subseteq Z_0) 相交得
[
Z=(\mathrm{Pre}_c(S)\cap Z)\ \dot\cup\ (\mathrm{Pre}_c(S^c)\cap Z).
]
由 ((\star)) 知左项非空且非整块，故右项也非空且为真子集。于是 ((S^c,c)) 同样把 (Z) 劈开。■

---

# 4. 一步保持：(\mathrm{Cover}(L,P)\Rightarrow \mathrm{Cover}(L',P'))

设本轮取出 ((B_j,a))，按规则分裂得到 (P') 并更新为 (L')。取任意
[
(S,c,Z)\in \mathrm{Instab}(P').
]
分两类：

## A. 旧不稳定：((S,c,Z)\in \mathrm{Instab}(P))

由 (\mathrm{Cover}(L,P)) 存在 ((T,c)\in L) 使 (0<|\mathrm{Pre}_c(T)\cap Z|<|Z|)。分三种子情形：

* **A0. ((T,c)=(B_j,a))**：则 (0<|\mathrm{Pre}_a(B_j)\cap Z|<|Z|)。本轮按 ((B_j,a)) 已把 (Z) 分裂；因此该三元组**在 (P') 中消失**，不需再覆盖（若由此诱发的后续不稳定属“新不稳定”，见下类 B 处理）。

* **A1. 本轮未分裂 (T)**：则 ((T,c)) 保留在 (L') 中，仍劈开 (Z)。

* **A2. 本轮分裂了 (T)**：以 (T',T'') 替换 ((T,c))。由引理 1，至少有一个 ((T',c)) 或 ((T'',c)) 仍劈开 (Z)，且二者都已加入 (L')。

故 A 类均被 (L') 覆盖。

## B. 新不稳定：((S,c,Z)\notin \mathrm{Instab}(P))

由引理 2，**(S)** 必是某个刚被分裂旧块 (Y) 的子块（(S\in{Y',Y''})）。对该 (Y) 的字母 (c) 看更新规则：

* **B1. 旧时 ((Y,c)\in L)**：本轮把它替换为 ((Y',c),(Y'',c)) 并加入 (L')。由引理 1 与 ((S,c,Z)\in\mathrm{Instab}(P'))，至少有一个（实际上包含 (S) 的那个）能劈开 (Z)。于是被覆盖。

* **B2. 旧时 ((Y,c)\notin L)**：按规则只把两半中**较小者** ((Y^*,c)) 加入 (L')。由引理 3，一旦 ((S,c,Z)) 成立，则**两半皆可**劈开同一个 (Z)；因此无论我们加入的是 (S) 还是对边 (S^c)（我们选择小半），都能劈开 (Z)。于是被覆盖。

综上，任取 ((S,c,Z)\in\mathrm{Instab}(P')) 都被 (L') 覆盖，即 (\mathrm{Cover}(L',P')) 成立。■

---

# 5. 终止 ⇒ 全域稳定 ⇒ 语言等价

若算法停止，则 (L=\varnothing)。由 (\mathrm{Cover}(L,P)) 立得 (\mathrm{Instab}(P)=\varnothing)，即对任意 (S,Z\in P)、任意 (a\in\Sigma)，
[
\mathrm{Pre}_a(S)\cap Z\in{\varnothing,\ Z}.
]
称此为**全域稳定**。令“同块”关系 (\sim) 为：(p\sim q \iff \exists S\in P,:, p,q\in S)。

* **右同余**：若 (p\sim q)，取 (a\in\Sigma)。令 (S) 为包含 (\delta(p,a)) 的块，令 (Z) 为包含 (p,q) 的块。因全域稳定，有
  [
  p\in \mathrm{Pre}_a(S)\cap Z \Rightarrow \mathrm{Pre}_a(S)\cap Z=Z \Rightarrow \delta(q,a)\in S ,
  ]
  故 (\delta(p,a)\sim\delta(q,a))。

* **与接受性相容**：初始把 (F) 与 (Q\setminus F) 分开，之后只细化，故若 (p\sim q) 则空串接受性一致；与右同余结合，对串长归纳得对任意 (w)，(\delta(p,w)\in F \Leftrightarrow \delta(q,w)\in F)。

因此用 (P) 的块为状态构造的商 DFA 与原 DFA **语言等价**。■

---

# 6. 最小性（Myhill–Nerode）

设 (\equiv) 为 Myhill–Nerode 等价（“对所有串接受性一致”）。由上节可知：若 (p\sim q) 则 (p\equiv q)；于是划分 (P) **细化**了 (\equiv) 的类划分。另一方面，全域稳定意味着：在所有“细化 ({F,\ Q\setminus F})”且“右同余”的划分中，(P) 已经**最粗**（否则会出现某 ((S,a)) 的不稳定）。而 (\equiv) 的类划分正是满足这些性质的**最粗**划分，故二者一致。商 DFA 的状态数等于 (\equiv)-类数，因而**最小且（至同构）唯一**。■

---

# 7. 终止与“小半”只影响复杂度（与正确性无关）

每次真分裂使某块规模缩小；当某半块作为“小半”入 (L) 并再次被分裂，其规模至少按 (1/2) 因子递减。故每个状态在每个字母下被“小半”命中的次数为 (O(\log |Q|))，总复杂度 (O(|\Sigma|\cdot|Q|\log|Q|))。这与上面的正确性证明相互独立：**即使不选小半而选任意一半，正确性仍成立**（引理 3），小半只是在保证更好的摊还复杂度。

---

# 8. 关键点回顾（避免常见误区）

* (L) 的作用不是“枚举所有不稳定对”，而是**覆盖所有不稳定**（Cover 不变式）。
* “新不稳定只可能来自**新目标块** (S)”（引理 2）：不需要、也不能假设“若 (S,Z) 来自不同母块就不可能不稳定”，正确说法是：**如果 (S) 不是新子块，则不会新产生不稳定**；(Z) 是否新块无妨。
* “只加小半不漏”（引理 3）：一旦以新目标 (S) 出现不稳定，**两半皆能**劈开同一个 (Z)，所以加入其中任一半（取小半优化复杂度）即可。
* 旧不稳定的覆盖在本轮通过三种子情形 A0/A1/A2 保证：要么直接被这轮切除了（A0），要么保持（A1），要么由“替换安全性”（A2）承接。

至此，**基线→一步保持→终止/最小性**三部曲闭合，一个完全严格的正确性证明完成。
