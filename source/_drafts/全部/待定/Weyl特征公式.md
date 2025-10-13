---
title: "有限维复半单李代数的 Weyl 特征公式"
date: 2014-07-27
categories: [代数]
url: "weyl-character-formula"
---
\DeclareMathOperator{\ch}{ch}
\DeclareMathOperator{\tr}{tr}
\DeclareMathOperator{\sgn}{sgn}
\newcommand{\g}{\mathfrak{g}}
\newcommand{\n}{\mathfrak{n}}
\newcommand{\h}{\mathfrak{h}}
\newcommand{\sl}{\mathfrak{sl}}
\newcommand{\C}{\mathbb{C}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\O}{\mathcal{O}}
\newcommand{\fd}{\mathcal{D}}
\newcommand{\suma}{\sum_{\alpha\in\Phi^+}k_\alpha\alpha}

本文是我念教材 @Humphreys1973 时的读书笔记，目的是介绍该书的核心定理 24.3，即有限维复半单李代数的 Weyl 特征公式。Humphreys 书中对 Weyl 特征公式的证明来自 Bernstein, Gelfand 和 Gelfand 1971 年的论证。1974 年 Victor Kac 给出了 BGG 证明的一个简化版本，这个证明也收录在 @Kac1990 一书第 10 章中。但 Humphreys 的书的第一版在 1972 年出版，当时 Kac 的证明还未出现。在第二版中 Humphreys 将 Kac 的证明作为附录加入 24 节中。Humphreys 遵循的 BGG 证明依赖于 Harish-Chandra 关于泛包络代数的中心 $Z = Z(U(\g))$ 的一个结果。Kac 的论证避开了 Harish-Chandra 的定理，而是巧妙地仅使用 $Z$ 的一个元素，即 Casimir 元素。现在的教材大多采用 Kac 的论证，本文也是如此。

但是 Humphreys 也解释了 BGG 证明的优点，比如 Proposition 24.2 中证明一般 Verma 模具有有限合成列几乎无法避免使用 Harish-Chandra 定理。

<!-- more -->

# 背景回顾与符号约定

令 $\g$ 表示一个有限维复半单李代数，$U(\g)$ 是 $\g$ 的泛包络代数，$\h$ 是 $\g$ 的 Cartan 子代数。$\Delta$ 是一组单根系，$\Phi$ 是根系，则 $\Phi=\Phi^+\cup\Phi^-$ 是正根和负根的并。

$\g$ 有根空间分解
$$\g=\bigoplus_{\alpha\in\Phi^+}(\g_\alpha\oplus\g_{-\alpha})\oplus\h.$$
其中每个根空间 $\g_\alpha,\g_{-\alpha}$ 都是一维的且 $[\g_{\alpha}, \g_{-\alpha}]\subset\h$。当 $\alpha+\beta\ne0$ 时 $[\g_{\alpha}, \g_{\beta}]=0$。

Killing 型 $\kappa(x,y)$ 限制在 $\h$ 上是非退化的，于是我们可以把 $\h$ 和它的对偶空间 $\h^\ast$ 等同起来：对任何 $\lambda\in\h^\ast$，都存在 $t_\lambda\in\h$ 使得对任何 $h\in\h$ 有 $\lambda(h) = \kappa(t_\lambda, h)$。

我们可以把 Killing 型迁移到 $\h^\ast$ 上，定义 $\h^\ast$ 上的对称双线性型 $(\cdot,\cdot)$ 为
$$(\lambda,\mu) = \kappa(t_\lambda,t_\mu),\quad \lambda,\,\mu\in\h^\ast.$$

将 $\h^\ast$ 看作实数域 $\R$ 上的向量空间，记作 $\h^\ast_{\R}$，则 $(\cdot,\cdot)$ 成为 $\h^\ast_{\R}$ 上的一个 Euclidean 内积。

::: {.proposition .unnumbered}

[@Humphreys1973 proposition 8.3]

设 $\alpha\in\Phi^+$ 是正根，$e_\alpha\in\g_\alpha$，$f_\alpha\in\g_{-\alpha}$，则：

1. $[e_\alpha,f_\alpha] = \kappa(e_\alpha, f_\alpha)t_\alpha$。其中 $t_\alpha\in\h$ 是与 $\alpha$ 等同的元素。
2. 特别若 $e_\alpha,f_\alpha$ 满足 $\kappa(e_\alpha,f_\alpha)=\frac{2}{\kappa(t_\alpha,t_\alpha)}$，则 $[e_\alpha,f_\alpha]=\frac{2t_\alpha}{\kappa(t_\alpha,t_\alpha)}=h_\alpha$。$h_\alpha$ 叫做 $\alpha$ 的**余根** (coroot)。
3. 三元组 $\{e_\alpha,f_\alpha,h_\alpha \}$ 生成一个 $\sl_2(\C)$ 子代数。
:::

每个单根 $\alpha$ 给出一个 $\h^\ast$ 上的线性变换 $s_\alpha(\beta) = \beta - \beta(\alpha^\vee)\alpha$，$s_\alpha$ 是一个单反射，所有单反射 $\{s_\alpha,\alpha\in\Delta\}$ 生成的群 $W$ 叫做 **Weyl 群**。

设
$$\rho=\frac{1}{2}\sum\limits_{\alpha\in\Phi_+}\alpha$$
是所有正根之和的一半，则对任何单反射 $s_\alpha$ 有
$$\rho-(\rho, \alpha^\vee)\alpha=s_\alpha(\rho)=\rho-\alpha.$$
其中第一个等号来自反射的定义，第二个等号是因为 $s_\alpha$ 置换除 $\alpha$ 之外的所有正根，并把 $\alpha$ 映射为 $-\alpha$。所以对任何 $\alpha\in\Delta$ 有 $(\rho,\alpha^\vee)=1$。

设 $\lambda\in\h^\ast$，如果对任何 $\alpha\in\Phi^+$ 有 $\lambda(\alpha^\vee)\in\Z$，我们就称 $\lambda$ 是一个**整权**。对整权 $\lambda$，如果总是有 $\lambda(\alpha^\vee)\geq0$，就称 $\lambda$ 是一个**支配整权**。进一步如果总是有 $\lambda(\alpha^\vee)>0$，就称 $\lambda$ 是**强支配整权**。

记 $P$ 为所有整权组成的格点，$P^+$ 为所有支配整权组成的集合。

$\h^\ast$ 上的偏序 $\preceq$ 定义如下：
$$\mu\preceq\lambda\Leftrightarrow\lambda-\mu=\suma,\quad k_\alpha\in\Z_{\geq0}.$$
我们知道 $\h^\ast_{\R}$ 在内积 $(\cdot,\cdot)$ 下成为一个 Euclidean 空间。记
$$\fd = \{x\in\h_{\R}^\ast\mid (x, \alpha^\vee)\geq0\text{ for all }\alpha\in\Phi^+\}.$$
$\fd$ 叫做**基本胞腔** (fundamental chamber)。基本胞腔的含义是，对任何 $x\in\h_{\R}^\ast$，$x$ 在 Weyl 群作用下的轨道 $\{wx\mid w\in W\}$ 与 $\fd$ 有唯一的交点。

如果 $\lambda$ 是一个支配整权，则 $\lambda\in\fd$。这时对任何 $w\in W$ 有 $w\lambda\preceq\lambda$，等号成立当且仅当 $w=1$。

# 权

设 $M$ 是一个 $g$- 模，对任何 $\lambda\in\h^\ast$ 我们定义
$$M_\lambda\,\colon=\{v\in M\mid h\cdot v = \lambda(h)v\text{ for all } h\in\h\}.$$
如果 $M_\lambda \ne 0$ 我们就称 $\lambda$ 是 $M$ 的一个**权**，$M_\lambda$ 是**权空间**，$M_\lambda$ 的元素是权为 $\lambda$ 的**权向量**。

:::{.lemma #weights-basic}
1. 对 $\alpha\in\Phi$ 和 $\lambda\in\h^\ast$ 有 $g_\alpha\cdot M_\lambda\subset M_{\lambda+\alpha}$。
2. $M'=\sum_{\lambda\in\h^\ast}M_\lambda$ 是直和，并且 $M'$ 是 $M$ 的 $\g$- 子模。
3. 如果 $\varphi: M\to N$ 是 $\g$- 模同态，则对 $M$ 的任何权 $\lambda$ 有 $\varphi(M_\lambda)\subset N_\lambda$。
:::

# 权模

::: {.definition}
设 $V$ 是一个 $\mathfrak{g}-$ 模，我们称 $V$ 是一个权模 (weight module)，如果 $V$ 可以分解为关于 $\mathfrak{h}$ 的权空间的直和：
$$V = \bigoplus_{\lambda\in\mathfrak{b}^\ast} V_\lambda.$$
并且每个权空间的维数 $\dim V_\lambda<\infty$。
:::

我们把权空间 $V_\lambda$ 中的向量叫做权向量。

关于权模有这么几个常识是时时都要用到的：

1. 不同权对应的权空间之和必然是直和。（类比：线性变换的不同特征值对应的特征子空间是直和）
2. 如果 $V$ 可以由一些权向量的线性组合生成，则 $V$ 是一个权模。（类比：若线性变换的特征向量可以张成整个空间，则该线性变换是可对角化的）
3. 权模的子模和商模也都是权模。（类比：可对角化的线性变换在子空间和商空间上也都是可对角化的）
4. $\g$ 的根空间 $g_\alpha$ 把 $V_\lambda$ 映射到 $V_{\lambda+\alpha}$，即 $g_\alpha V_\lambda\subseteq V_{\lambda+\alpha}$。

这几点的证明都不难，这里只解释第三点。

::: {.proposition}
如果 $N\subset V$ 是一个子模，则 $N$ 也是权模，并且有分解
$$N = \bigoplus_{\lambda\in\mathfrak{b}^\ast} (N\cap V_\lambda).$$
:::

**证明**：设 $x\in N$，则 $x$ 可以写成
$$x=v_1 + v_2 + \cdots + v_k,\quad v_i\in V_{\lambda_i}.$$
我们要证明的是必然有每个 $v_i\in N$。若不然，设 $x$ 是使得 $k$ 最小的反例，则必有 $k>1$，否则 $v_1=x\in N$ 自动成立了。

注意到我们可以取 $h\in\h$ 使得对任何 $1\leq i\ne j\leq k$ 都有 $\lambda_i(h)\ne\lambda_j(h)$ 成立，这是因为方程 $\lambda_i=\lambda_j$ 给出的是 $\h$ 中的一个超平面，而有限多个这样的超平面的并不可能等于 $\h$，故这样的 $h$ 存在。然后注意到
$$y=hx-\lambda_1(h)x=\sum_{i=2}^k(\lambda_i(h)-\lambda_1(h))v_i$$
是 $N$ 中一个长度小于 $x$ 的元素，且每个 $v_i\,(i\geq2)$ 的系数均不为 0，因此它们都属于 $N$，从而 $v_1$ 也属于 $N$，命题得证。$\blacksquare$

更进一步，设 $V\xrightarrow{\varphi}V/N$ 是自然同态，不难验证每个 $\varphi(V_\lambda)$ 都是 $V/N$ 中权为 $\lambda$ 的权空间，且显然 $V/N$ 可以由所有的 $\varphi(V_\lambda)$ 张成，所以商模 $V/N = \bigoplus\limits_{\lambda\in\h^\ast}\varphi(V_\lambda)$ 也是权模。

在后面的讨论中，我们经常会遇到 $N$ 是某个 $v\in V_\lambda$ 生成的循环模的情形，这时使用维数公式有
$$\dim V_\lambda = \dim N\cap V_\lambda + \dim\varphi(V_\lambda).$$
所以 $\varphi(V_\lambda)$ 的维数严格小于 $V_\lambda$。

# 最高权循环模

最高权循环模是权模，而且是可以由一个最高权向量生成的循环模。它包含了所有的有限维不可约模。


:::{.definition}
设 $V$ 是一个 $\g-$ 模，$v\in V$ 是一个权为 $\lambda\in\h^\ast$ 的权向量，如果 $v$ 满足对任何 $x\in\n^+$ 有 $xv=0$ 成立（这等价于对所有 $e_\alpha\in\g_\alpha\,(\alpha\in\Phi^+)$ 有 $e_\alpha v=0$），就称循环模 $U(\g)v$ 为**最高权循环模**，$v$ 叫做 $U(\g)v$ 的**最高权向量**。
:::

我们来分析 $U(\g)v$ 的结构。

根据 Poincaré–Birkhoff–Witt 定理，$U(\g)\cong U(\n^-)\otimes U(\h)\otimes U(\n^+)$，所以 $$U(\g)v= U(\n^-)U(\h)U(\n^+)v.$$
但是任何 $x\in U(\n^+)$ 作用在 $v$ 上要么“杀死” $v$，即  $xv=0$；要么把 $v$ 变成 $v$ 的倍数，所以 $U(\n^+)v=\C v$。而显然 $U(\h)v=\C v$，所以
$$U(\g)v= U(\n^-)v.$$

$\{f_{\alpha},\alpha\in\Phi^+\}$ 构成 $\n^-$ 的一组基，其中 $f_{\alpha}\in\g_{-\alpha}$，于是 $U(\n^-)$ 的一组 PBW 基形如 $\{\prod_{\alpha\in\Phi^+}f_{\alpha}^{k_\alpha},k_\alpha\in\Z_{\geq0}\}$。所以
$$U(\g)v = {\rm span}\,\left\{\left(\prod_{\alpha\in\Phi^+}f_{\alpha}^{k_\alpha}\right)\, v,\ k_\alpha\in\Z_{\geq0}\right\}.$$
$f_{\alpha}$ 将权子空间 $V_\mu$ 映射到 $V_{\mu-\alpha}$，所以
$$\left(\prod_{\alpha\in\Phi^+}f_{\alpha}^{k_\alpha}\right) \, v \in V_\mu,\quad \mu=\lambda - \suma.$$

容易看到 $V_\mu$ 的维数是有限的，这是因为 $(\prod_{\alpha\in\Phi^+}f_{\alpha}^{k_\alpha})\, v \in V_\mu$ 当且仅当 $\{k_\alpha\}$ 满足 $\lambda-\suma=\mu$，这样的非负整数序列 $\{k_\alpha\}$ 只有有限多个，所以 $\dim V_\mu$ 不会超过这样的序列的个数。特别地 $\mu=\lambda$ 当且仅当所有的 $k_\alpha$ 都是 0，因此 $\dim V_\lambda=1$，即 $V_\lambda$ 是 $v$ 生成的一维子空间。

设 $\lambda\in\h^\ast$，有趣的是，在所有以 $\lambda$ 为最高权的最高权循环模中，既有一个最小的，也有一个最大的：

1. 这个最小的模（记作 $L_\lambda$） 是一个不可约模，它是所有最高权循环模的商模 （所有最高权模之子）。在同构的意义下，这个不可约模是唯一的。

2. 最大的模 （记作 $M_\lambda$） 自然可以称为“所有最高权模之母”：其它所有最高权模都是它的商模。$M_\lambda$ 就是我们后面要介绍的 Verma 模，它在同构的意义下也是唯一的。

不可约模 $L_\lambda$ 的唯一性比较好证明，这是因为在一个最高权循环模 $V=U(\g)v$ 中，任何真子模都不可能含有最高权向量 $v$，由于不同权的权向量的线性无关性，真子模的和也组合不出 $v$ 来，因此所有真子模的和仍然是真子模，这是一个唯一的极大真子模，所以 $V$ 有唯一的不可约商模 $L_\lambda$。我们还需要说明对两个不同的以 $\lambda$ 为最高权的循环模 $V_1,V_2$ 有 $L_{\lambda}^1\cong L_{\lambda}^2$。为此可以构造直和 $W=V_1\oplus V_2$，$W$ 也是一个以 $\lambda$ 为最高权的循环模，其最高权向量为 $(v_1,v_2)$，且 $V_1,V_2$ 作为直和分量都是它的商模，所以我们有如下同态：
$$\begin{align*}
W &\xrightarrow{\pi_1} V_1\xrightarrow{\pi} L_{\lambda}^1,\\
W &\xrightarrow{\pi_2} V_2\xrightarrow{\pi} L_{\lambda}^2.
\end{align*}$$
其中 $\pi_i$ 是 $W$ 到 $V_i$ 的投影，$\pi$ 是对极大真子模取商模。

现在 $L_\lambda^1,L_{\lambda}^2$ 都是 $W$ 的不可约同态像，而 $W$ 作为最高权循环模有唯一的不可约商模，所以 $L_\lambda^1\cong L_{\lambda}^2$。

另一种更直接的证明 $L_\lambda$ 唯一性的方式是使用 Verma 模 （它们都是 Verma 的唯一不可约商模！)，关于 Verma 模我们放在下一节单独介绍。

# Verma 模

:::{.definition}
设 $\lambda\in\mathfrak{h}^\ast$，我们称一个最高权循环模 $M_\lambda$ 为 Verma 模，如果任何最高权为 $\lambda$ 的循环模都是它的商模。
:::

我个人比较喜欢这个定义，第一它点明了 Verma 的本质是它的泛性质，第二它只有一句话。

不过从这个定义看不出来 Verma 是否存在，存在的话又是否唯一，下面来处理这两个问题。

首先我们的定义蕴含了 Verma 模的唯一性。设 $M_\lambda,N_\lambda$ 是任何两个最高权为 $\lambda$ 的 Verma 模，则它们互为彼此的商模。不妨设 $M_\lambda / W\cong N_\lambda$，这里 $W$ 是 $M_\lambda$ 的子模，于是对任何权 $\mu$，$$ \dim [M_\lambda]_\mu \geq\dim [N_\lambda]_\mu.$$然而 $N_\lambda$ 也是 $M_\lambda$ 的商模，所以反向不等式也成立，从而上式其实是个等式，因此 $M_\lambda$ 和 $N_\lambda$ 是同构的。

存在性的证明看似稍微麻烦一点点，但其实也是数学里面的惯用招数：注意我们对 Verma 模是通过其泛性质来定义的，而在数学中要在一类对象 $\mathcal{X}$ 中构造具有给定泛性质的特殊成员时，我们总是从一个最一般的对象 $A\in\mathcal{X}$ 出发，然后在 $A$ 中对泛性质所规定的约束条件取商，注意既不能多一分 （超出泛性质规定的约束），也不能少一分 （少于泛性质规定的约束），这样得到的对象就满足所需的泛性质。

在这里 $\mathcal{X}$ 由所有的 $U(\g)-$ 循环模构成，这其中最一般的自然是 $U(\g)$ 作为自身的左正则模，它可以由单位元 $1$ 生成，其它任何循环模都是它的商模。

要把左正则 $U(\g)-$ 模变成一个具有泛性质的最高权循环模，我们看看必须添加哪些必要的约束条件。由于我们要把单位元 1 变成最高权向量，“最高”要求对任何 $\alpha\in\Phi^+$ 和 $e_\alpha\in\g_\alpha$ 有 $e_\alpha\cdot1=0$，即 $e_\alpha=0$。“权向量”要求对任何 $h\in\h$ 有 $h\cdot1 = \lambda(h)\cdot1$。这些就够了！所以我们取 $I$ 是由所有 $\{e_\alpha,\alpha\in\Phi^+\}$ 和 $\{h-\lambda(h)1,h\in\h\}$ 生成的左理想，则 $U(\g)/I$ 就是所要构造的 Verma 模。

注意 $U(\g)/I$ 作为左 $U(\g)-$ 模自然也是左 $U(\n^-)-$ 模，这个模同构于 $U(\n^-)$ 的左正则表示，同构映射由
$$U(\n^-)\to U(\g)/I:\quad 1\to 1+I$$
给出，这是很容易用 PBW 定理验证的。记 $v=1$，则所有的 $\{(\prod_{\alpha\in\Phi^+}f_{\alpha}^{k_\alpha})\, v\}$ 均非零且线性无关。换句话说，Verma 模是使得 $U(\n^-)$ 的作用“最自由”的最高权循环模。

Verma 模也可以通过诱导表示来构造，这里不再赘述。

# Casimir 算子

Casimir 算子并不是 $\g$ 中的元素，它其实是泛包络代数 $U(\g)$ 中的元素，而且属于 $U(\g)$ 的中心，它与 $\g$ 的任何表示可交换，从而 Casimir 元素的特征子空间分解给出表示的分解。

任取 $\g$ 的一组基 $\{x_i\}$，设它们在 Killing 型下的对偶基为 $\{y_i\}$，即 $\kappa(x_i,y_j)=\delta_{ij}$。

:::{.definition}
Casimir 算子定义为 $\Omega = \sum_{i=1}^n x_iy_i$，其中 $n=\dim\g$。
:::

不难证明 Carimir 算子的定义与基 $\{x_i\}$ 的选择无关。但是为了计算方便，我们会选取 $\g$ 的一组特殊的基如下：对每个正根 $\alpha$，取 $e_\alpha\in\g_\alpha,f_\alpha\in\g_{-\alpha}$ 使得 $\kappa(e_\alpha,f_\alpha)=1$，则 $[e_\alpha,f_\alpha]=t_\alpha$，这里 $t_\alpha$ 是在 Killing 型下与 $\alpha$ 对等的元素。设单根系 $\Delta=\{\alpha_1,\ldots,\alpha_n\}$，则 $t_{\alpha_1},\ldots,t_{\alpha_n}$ 构成 $\h$ 的一组基，取 $t_{\alpha_1}^\ast,\ldots,t_{\alpha_n}^\ast\in\h$ 使得 $\kappa(t_{\alpha_i},t_{\alpha_j}^\ast)=\delta_{ij}$。

现在我们有了 $\g$ 的一组基 $\{e_\alpha\},\{f_\alpha\}, \{t_{\alpha_i}\}$，它们在 Killing 型下的对偶基为 $\{f_\alpha\}$, $\{e_\alpha\}$, $\{t_{\alpha_i}^\ast\}$，把它们两两配对相乘然后相加，得到的就是 Casimir 算子：
$$\Omega=\sum_{\alpha\in\Phi_+}(f_\alpha e_\alpha+e_\alpha f_\alpha)+\sum_{i=1}^nt_{\alpha_i}t_{\alpha_i}^\ast.$$
进一步利用 $e_\alpha f_\alpha=t_\alpha+f_\alpha e_\alpha$，我们可以把 $\Omega$ 写成
$$\Omega=2\sum_{\alpha\in\Phi_+}f_\alpha e_\alpha+\sum_{\alpha\in\Phi_+}t_\alpha+\sum_{i=1}^nt_{\alpha_i}t_{\alpha_i}^\ast.$$

设 $\lambda\in\h^\ast$，$V$ 是任一最高权为 $\lambda$ 的循环模，最高权向量为 $v$，由于 Casimir 元素与 $\g$ 交换，所以 $\Omega\cdot v$ 仍然是一个权为 $\lambda$ 的权向量，从而是 $v$ 的一个倍数，即
$$\Omega\cdot v_\lambda=c_\lambda v_\lambda.$$
我们来计算这个 $c_\lambda$。

利用 $e_\alpha\cdot v_\lambda=0$ 以及 $\lambda(t_\alpha)=(\lambda,\alpha)$ 可得
$$\begin{align}c_\lambda &=
\sum_{\alpha\in\Phi_+}(\alpha,\lambda)+\sum_{i=1}^n\lambda(t_{\alpha_i})\lambda(t_{\alpha_i}^\ast)\\
&= \sum_{\alpha\in\Phi_+}(\alpha,\lambda)+\sum_{i=1}^n(\lambda,\alpha_i)(\lambda,\alpha_{i}^\ast)\\
&= 2(\lambda,\rho)+(\lambda,\lambda)\\
&= |\lambda+\rho|^2-|\rho|^2.
\end{align}$$

其中倒数第二个等号是利用了一个简单的线性代数结论：

:::{.lemma}
设 $\{x_i\}$ 是内积空间 $(\cdot)$ 的一组基，$\{y_j\}$ 是 $\{x_i\}$ 在这个内积下的对偶基， 则对任何向量 $x$ 有$$(x,x)=\sum_{i=1}^n(x,x_i)(x,y_i).$$
:::

这个计算对任何最高权循环模都适用，这样我们就得到一个重要的结论：

:::{.corollary}
Casimir 算子作用在最高权为 $\lambda$ 的循环模上是一个数乘 $|\lambda+\rho|^2-|\rho|^2$。
:::

# 范畴 $\O$ 与合成列

这一小节我们来证明 Verma 具有有限长度的合成列，从而同时是 Artinian 和 Noetherian 的。于是任何最高权循环模都有有限的合成列。不过我们最好把分析扩展到更广泛的一类模上，即由 Bernstein, Gelfand 和 Gelfand 三人引入的范畴 $\O$：

:::{.definition}
我们称一个 $\g-$ 模 $V$ 属于范畴 $\O$，如果它是一个权模，并且存在有限多个权 $\{\lambda_1,\ldots,\lambda_n\}$ 使得 $V_\mu\ne0$ 当且仅当对某个 $\lambda_i$ 有 $\mu\preceq\lambda_i$。
:::

显然范畴 $\O$ 包含了所有的最高权模，并且若 $\g$ 属于范畴 $\O$，则 $\g$ 的任何子模和商模也都属于范畴 $\O$。范畴 $\O$ 对有限直和运算也是封闭的。


:::{.definition}
设 $\g-$ 模 $V$ 属于范畴 $\O$，$v\in V$ 是一个非零向量。如果存在 $V$ 的子模 $U$ 使得 $v$ 是商模 $V/U$ 中的最高权向量，我们就称 $v$ 是一个**本原向量**。如果 $V_\mu$ 包含一个本原向量，我们也称 $\mu$ 是一个**本原权**。
:::

:::{.lemma}
设 $\g-$ 模 $V$ 属于范畴 $\O$，则 $V$ 可以由本原向量生成。
:::

证明：设 $U$ 是 $V$ 中所有本原向量生成的 $\g-$ 子模，我们断言 $U=V$。若不然，考虑商模 $V/U$，它在范畴 $\O$ 中，所以存在权向量 $u$ 使得 $u$ 对应的权是偏序 $\preceq$ 下的极大元。但是 $u$ 在 $V$ 中的原像必然是个本原向量，从而 $u=0$，矛盾。$\blacksquare$

:::{.proposition}
设 $\g-$ 模 $V$ 属于范畴 $\O$，且 $V$ 只有有限多个本原权，则 $V$ 的合成列长度有限，即存在 $V$ 的子模序列
$$(0)\subset V_1\subset\cdots\subset V_k=V.$$
使得每个合成因子 $V_i/V_{i-1}$ 都是不可约最高权模。
:::

**证明**：由于 $V$ 只有有限多个本原权，且权子空间的维数有限，所以 $V$ 只有有限多个线性无关的本原向量。我们对 $V$ 包含的线性无关的本原向量的个数 $n$ 归纳：

基础情形是 $n=1$，这时 $V$ 本身必然是一个最高权循环模，而且一定是不可约的（否则它的真子模里面必然有本原向量），结论自动成立。

$n>1$ 时，任取一个本原权 $\mu$ 使得 $\mu$ 是偏序 $\preceq$ 下的极大元，并取本原向量 $v\in V_\mu$。显然 $W=U(\g)v$ 是一个最高权循环模，从而它有一个极大真子模 $W_1$，$W/W_1\cong L_\mu$ 是不可约模。

显然 $V/W$ 和 $W_1$ 包含的线性无关的本原向量个数都小于 $n$ （因为 $v$ 不在它俩里面），从而由归纳假设 $V/W$ 和 $W_1$ 都有有限长度的合成列，由于我们有子模序列
$$(0)\subset W_1\subset W\subset V.$$
把 $W_1$ 和 $V/W$ 的合成列塞到上面的式子中就得到了 $V$ 的合成列。$\blacksquare$


::: {.corollary}
设 $\lambda\in\h^\ast_{\R}$，即 $\lambda$ 是单根的实线性组合，则 Verma 模 $M_\lambda$ 有有限长度的合成列。
:::


**证明**：只要说明 $M_\lambda$ 只包含有限多个线性无关的本原向量即可。由于任何权为 $\mu$ 的本原向量 $u$ 都生成一个最高权循环模 $V_\mu$，而 Casimir 算子在 $V_\mu$ 上的作用是数乘 $|\mu+\rho|^2-|\rho|^2$，这个值必须与 Casimir 算子在 $M_\lambda$ 上的数乘 $|\lambda+\rho|^2-|\rho|^2$ 相等，所以 $\mu$ 必须满足 $\mu\preceq\lambda$ 且 $|\mu+\rho|^2=|\lambda+\rho|^2$。这样的 $\mu$ 构成的集合
$$S^\lambda = \{\mu\mid \mu\preceq\lambda,\, |\mu+\rho|^2=|\lambda+\rho|^2\}$$
是一个有限集，而权空间 $V_\mu$ 的维数又是有限的，于是线性无关的本原向量的个数也是有限的。$\blacksquare$


这个推论对所有 $\lambda\in\h^\ast$ 都是对的，但是一般情形的证明要更加复杂。上面的证明利用了 $(\cdot,\cdot)$ 在 $\h^\ast_{\R}$ 上是正定的，这保证了 $S^\lambda$ 是紧集。

# Verma 模的特征

设 $V=\oplus_{\lambda\in\h^\ast}V_\lambda$ 是权模，定义形式幂级数
$$\ch{V} = \sum_{\lambda}(\dim V_\lambda)\, e^\lambda.$$
$\ch{V}$ 是一个形式幂级数，叫做 $V$ 的特征。$e^\lambda$ 是一个形式指数，满足运算 $e^\lambda\cdot e^\mu=e^{\lambda+\mu}$，其在 Weyl 权 $W$ 下的作用规定为 $w\cdot e^\lambda=e^{w(\lambda)}$。

特征通常是一个无穷项的线性组合，是一个形式级数，不存在收敛到某个值的说法。但在 $V$ 是有限维表示时，$\ch{V}$ 其实是一个 Laurent 多项式，我们来解释下为什么：

取 $\omega_1,\ldots,\omega_n\in P^+$ 为一组基本整权，即 $P$ 的一组整基。定义变元 $x_i=e^{\omega_i}$，则对 $V$ 的任何权空间 $V_\lambda$，由于有限维表示的权都是整权，故 $\lambda$ 可以表示为 $\omega_1,\ldots,\omega_n$ 的整系数线性组合
$$\lambda=a_1\omega_1+\cdots+a_n\omega_n,\quad a_i\in\Z.$$
则
$$\ch{V} = \sum_{\lambda}(\dim V_\lambda)\, x_1^{a_1}\cdots x_n^{a_n}\in\Z[x_1^{\pm1},\ldots,x_n^{\pm1}]$$
是一个关于变元 $x_1,\ldots,x_n$ 的有理多项式。实际上它关于 $W$ 还是对称的。

我们来计算 Verma 模的特征。考虑如下的乘积：
$$e^{\lambda}\cdot\prod_{\alpha\in\Phi^+}(1+e^{-\alpha}+e^{-2\alpha}+\cdots).$$
这个乘积展开的时候，是在每个正根 $\alpha$ 的括号中分别取形如 $e^{-k_\alpha \alpha}\,(k_\alpha\in\Z_{\geq0})$ 的一项，全部乘起来再和 $e^{\lambda}$ 一起相乘得到形如 $e^{\mu}=e^{\lambda-\suma}$ 的项，然后将这些乘积相加。$e^{\mu}$ 前面的系数正是使得 $\mu=\lambda-\suma$ 成立的整数序列 $\{k_\alpha\}$ 的个数，即 Verma 模 $M_\lambda$ 中权为 $\mu$ 的权子空间的维数，所以上面的乘积就是 $M_\lambda$ 的特征，即
$$\ch{M_\lambda} = e^\lambda \prod_{\alpha\in\Phi_+}(1+e^{-\alpha}+e^{-2\alpha}+\cdots).$$
这个式子可以进一步简化为
$$\ch{M_\lambda} = e^\lambda \prod_{\alpha\in\Phi_+}(1-e^{-\alpha})^{-1}.$$
记
$$q=e^\rho\prod_{\alpha\in\Phi_+}(1-e^{-\alpha}),$$
$q$ 叫做 Weyl 分母。它可以消掉 Verma 特征中关于 $\prod_{\alpha\in\Phi^+}$ 的连乘，即
$$q\cdot\ch{M_\lambda}= e^{\lambda+\rho}.$$
在后面我们要用到 $q$ 的如下性质：

::: {.proposition #qalt}
$q$ 是“交错的”，即对任何 $w\in W$ 有
$$w\cdot q = (-1)^{l(w)}q.$$
:::

**证明**：只要对单反射 $s_\alpha$ 验证有 $s_\alpha\cdot q=-q$ 即可。我们有
$$s_\alpha\cdot q=e^{s_\alpha(\rho)}\prod_{\gamma\in\Phi_+}(1-e^{-s_\alpha(\gamma)})=e^{s_\alpha(\rho)}(1-e^{-s_\alpha(\alpha)})\prod_{\gamma\in\Phi_+,\,\gamma\ne\alpha}(1-e^{-s_\alpha(\gamma)}).$$
由于 $s_\alpha(\rho)=\rho-\alpha$ 以及 $s(\alpha)=-\alpha$，所以前两个因子的乘积等于 $-e^{\rho}(1-e^{-\alpha})$。又由于 $s_\alpha$ 置换 $\Phi^+\setminus\{\alpha\}$，所以第三个因子等于 $\prod\limits_{\gamma\in\Phi_+,\,\gamma\ne\alpha}(1-e^{-\gamma})$。合起来就是
$$s_\alpha\cdot q=-e^{\rho}(1-e^{-\alpha})\prod_{\gamma\in\Phi_+,\,\gamma\ne\alpha}(1-e^{-\gamma})=-q.$$


# $\bullet$ 作用

一种很方便的约定是规定 Weyl 群 $W$ 在 $\h^\ast$ 上的“点”作用 $\bullet$ 为
$$w\bullet \lambda = w(\lambda+\rho) - \rho.$$
这个作用和通常 $W$ 在 $\h^\ast$ 上的线性作用相比不过是把原点变换到了 $-\rho$，即它是以 $-\rho$ 为中心进行变换。所以它不是线性的，即不再有 $w\bullet(\lambda+\mu)=w\bullet\lambda+w\bullet\mu$ 成立。但它仍然是个群作用，即对 $w_1,w_2\in W$ 有 $w_1\bullet(w_2\bullet\lambda)=(w_1w_2)\bullet\lambda$。

记 $W\bullet\lambda = \{w\bullet\lambda, w\in W\}$，则我们有如下结论：

::: {.proposition #bullet}
若 $\lambda\in P^+$ 是支配整权，则集合 $W\bullet\lambda$ 中的元素互不相同。
:::


**证明**：只要证明若 $w\bullet\lambda = 1\bullet\lambda$ 则 $w=1$ 即可。由  $w\bullet\lambda = 1\bullet\lambda$ 可得 $w(\lambda+\rho)=\lambda+\rho$。由于 $\lambda$ 是支配整权，所以 $\lambda+\rho$ 是强支配整权，它严格位于基本胞腔 $\fd$ 的内部。$W$ 中仅有唯一的元素 1 可以将 $\lambda+\rho$ 映射到 $\fd$ 中，所以 $w=1$。


# Weyl 特征公式

在本节中，约定 $\lambda\in P^+$ 总是支配整权。这时不可约模 $L_\lambda$ 是有限维的，Weyl 特征公式给出了 $\ch{L_\lambda}$ 的具体形式。

记 $S^\lambda$ 为有限集
$$S^\lambda = \{\mu\mid\mu\preceq\lambda,\,|\mu+\rho|^2=|\lambda+\rho|^2\}.$$

根据我们之前的结论，Verma $M_\lambda$ 有有限的合成列，且合成列中每个不可约因子 $L_\mu$ 满足 $\mu\in S^\lambda$。进一步，对 $\mu\in S^\lambda$，注意到 $S^\mu$ 是 $S^\lambda$ 的子集，所以 Verma 模 $M_\mu$ 的所有不可约因子 $L_\nu$ 满足 $\nu\in S^\mu\subset S^\lambda$。

对 $\mu,\nu\in S^\lambda$，我们用 $a(\mu,\nu)$ 表示不可约模 $L_\nu$ 在 Verma 模 $M_\mu$ 的合成列因子中出现的次数。则 $a(\mu,\nu)$ 是非负整数，满足 $a(\mu,\mu)=1$，以及 $\nu\not\preceq\mu$ 则 $a(\mu,\nu)=0$。

于是对每个 $\mu\in S^\lambda$，Verma 模 $M_\mu$ 可以分解为
$$\ch{M_\mu}=\sum_{\nu\in S^\mu}a(\mu,\nu)\ch{L_\nu}.$$

设 $S^\lambda=\{\mu_1,\ldots,\mu_l\}$，我们将这些 $\{\ch{M_{\mu_i}},\ch{L_{\mu_i}}\}$ 按照降序排列，使得若 $\mu_i\prec\mu_j$ 则 $i > j$（这时必有 $\mu_1=\lambda$），则它们之间的矩阵是一个对角线上都是 1 的上三角矩阵：
$$\begin{pmatrix}
\ch{M_\lambda}\\
\ch{M_{\mu_2}}\\
\vdots\\
\ch{M_{\mu_l}}
\end{pmatrix} =
\begin{pmatrix}
1 & \cdots & \cdots & \ast\\
  & 1 & \cdots & \ast\\
  &   & \ddots &\vdots\\
  &   &        & 1
\end{pmatrix}
\begin{pmatrix}
\ch{L_{\lambda}}\\
\ch{L_{\mu_2}}\\
\vdots\\
\ch{L_{\mu_l}}
\end{pmatrix}
$$
这个矩阵可逆，且逆矩阵也是对角元是 1 的上三角矩阵，所以可以反解出
$$\ch{L_\lambda} = \sum_{\mu\in S^\lambda} b(\lambda,\mu)\ch{M_\mu}.\label{eq:q1}\tag{1}$$
其中 $b(\lambda,\lambda)=1$，以及对任何 $\mu\not\preceq\lambda$ 有 $b(\lambda,\mu)=0$。

记 $b_\mu=b(\lambda,\mu)$，我们下面来解出系数 $b_\mu$。

将 $q$ 乘在 $(\ref{eq:q1})$ 两边得到
$$q\cdot\ch{L_\lambda} = \sum_{\mu\in S^\lambda} b_\mu e^{\mu+\rho}\label{eq:q2}\tag{2}.$$
我们有如下引理：


::: {.lemma #important-lemma}
集合 $\{\mu\in S^\lambda\mid b_\mu\ne0\}$ 和集合 $W\bullet\lambda$ 一一对应，并且若 $\mu=w\bullet\lambda$ 则 $b_\mu=(-1)^{l(w)}$。
:::

我们把这个引理的证明先放一放，继续用它得出重要的 Weyl 公式。

由 @Pre:important-lemma 我们可以把 $(\ref{eq:q2})$ 改写成
$$q\cdot\ch{L_\lambda}=\sum_{w\in W}(-1)^{l(w)}e^{w\bullet\lambda+\rho}=\sum_{w\in W}(-1)^{l(w)}e^{w(\lambda+\rho)}.$$
即
$$q\cdot\ch{L_\lambda}=\sum_{w\in W}(-1)^{l(w)}e^{w(\lambda+\rho)}.\label{eq:q3}\tag{3}$$

特别令 $\lambda=0$ 为一维平凡表示，则 $\ch{L_\lambda}=e^{0}=1$，于是我们有

::: {.theorem }

（**Weyl 分母公式**）
$$q=\sum_{w\in W}(-1)^{l(w)}e^{w(\rho)}.$$
:::

再把 Weyl 分母公式代入 $(\ref{eq:q3})$，我们得到


::: {.theorem}

（**Weyl 特征公式**）
$$\ch{L_\lambda} = \frac{\sum_{w\in W}(-1)^{l(w)}e^{w(\lambda+\rho)}}{\sum_{w\in W}(-1)^{l(w)}e^{w(\rho)}}.$$
:::

回到 @Pre:important-lemma 的证明。

> 我们先证明当 $\mu=w\bullet\lambda$ 时有 $b_\mu=(-1)^{l(w)}$ 成立。

将 $w\in W$ 作用在 $(\ref{eq:q2})$ 两边，并注意 $\ch{L_\lambda}$ 是 $W-$ 不变的以及 @Pre:qalt 的结论 $w\cdot q=(-1)^{l(w)}q$，得到
$$q\cdot\ch{L_\lambda}=\sum_{\mu\in S^\lambda}(-1)^{l(w)}b_\mu e^{w(\mu+\rho)}.\label{eq:q4}\tag{4}$$
将 $(\ref{eq:q4})$ 中的求和符号换成 $\nu$，并比较 $(\ref{eq:q2})$ 和 $(\ref{eq:q4})$，我们有
$$\sum_{\mu\in S^\lambda} b_\mu e^{\mu+\rho}=\sum_{\nu\in S^\lambda}(-1)^{l(w)}b_\nu e^{w(\nu+\rho)}.\label{eq:q5}\tag{5}$$

设 $\mu$ 使得 $b_\mu\ne0$。比较 $(\ref{eq:q5})$ 两边 $e^{\mu+\rho}$ 项的系数，我们得到若 $\mu+\rho=w(\nu+\rho)$，即如果 $\mu=w\bullet\nu$，则
$$b_\mu = (-1)^{l(w)}b_\nu.\label{eq:q6}\tag{6}$$
特别地由于 $b_\lambda=1$，所以如果 $\mu=w\bullet\lambda$ 则
$$b_\mu=(-1)^{l(w)}.\label{eq:q7}\tag{7}$$

> 再证明 $\{\mu\in S^\lambda\mid b_\mu\ne0\}$ 和 $W\bullet\lambda$ 是一一对应的。

在前面的 @Pre:bullet 中我们已经看到 $\{w\bullet\lambda\mid w\in W\}$ 是互不相同的。设 $\mu=w\bullet\lambda$，我们来说明 $\mu\in S^\lambda$。这比较简单，因为 $\lambda+\rho$ 是强支配整权，对所有 $w$ 都有 $w(\lambda+\rho)\preceq \lambda+\rho$，从而 $\mu=w\bullet\lambda\preceq\lambda$。另一方面 $w$ 保持内积 $(\cdot,\cdot)$，所以
$$|\lambda+\rho| = |w(\lambda+\rho)|=|\mu+\rho|.$$
从而 $\mu\in S^\lambda$。此外 $(\ref{eq:q7})$ 告诉我们这时 $b_\mu=(-1)^{l(w)}\ne0$，所以我们证明了 $W\bullet\lambda$ 可以嵌入到 $\{\mu\in S^\lambda\mid b_\mu\ne0\}$ 中。

再证明反向的包含关系。即如果 $\mu\in S^\lambda$ 且 $b_\mu\ne0$，则 $\mu\in W\bullet\lambda$。我们知道 Weyl 群传递地作用在所有的胞腔 (chambers) 上，因此总可以选取 $w\in W$ 使得 $w(\mu+\rho)$ 落在基本胞腔 $\fd$ 内，即 $w(\mu+\rho)$ 是一个支配整权。

设 $\nu=w\bullet\mu=w(\mu+\rho)-\rho$，我们来证明 $\nu=\lambda$，从而 $\mu=w^{-1}\bullet\lambda\in W\bullet\lambda$。

由于 $\nu=w\bullet\mu$ 和 $b_\mu\ne0$，根据 $(\ref{eq:q6})$，$b_\nu$ 也不等于 0。这说明 $\nu\preceq\lambda$。所以可以设
$$\lambda -\nu=\gamma=\suma$$
为正根的非负整系数线性组合。则
$$0=|\lambda+\rho|^2-|\nu+\rho|^2=(\lambda+\rho,\gamma)+(\nu+\rho,\gamma).$$
由于 $\lambda+\rho$ 是强支配整权，$\nu+\rho=w(\mu+\rho)$ 是支配整权，$\gamma$ 是正根的非负整系数线性组合，所以上面的和等于 0 只能在 $\gamma=0$ 时才能发生，即 $\nu=\lambda$。

至此 @Pre:important-lemma 得证，从而 Weyl 特征公式得证。

# 例子：$\sl_n(\C)$ 的特征公式

本节以 $\sl_n(\C)$ 为例来给出它的有限维不可约表示的特征，即著名的 Schur 多项式。

以下是 $\sl_n(\C)$ 的一些基本信息：

1. Cartan 子代数为
    $$\h=\left\{\begin{pmatrix}a_1 &&&\\ &a_2&&\\&&\ddots&\\&&&a_n\end{pmatrix}\in\mathrm{Mat}_n(\C)\,|\, a_1+a_2+\cdots+a_n=0\right\}.$$
    其对偶空间为 $\h^\ast=\C\{L_1,\ldots,L_n\}/(L_1+\cdots+L_n)$，其中线性泛函
    $$L_i\left(\begin{pmatrix}a_1 &&&\\ &a_2&&\\&&\ddots&\\&&&a_n\end{pmatrix}\right) = a_i.$$
2. 设 $E_{ij}$ 为 $(i,j)$ 位置的分量是 1，其它位置均为 0 的矩阵，则 Cartan 子代数的一组基为 $\{H_i = E_{ii} - E_{i+1,i+1}, 1\leq i\leq n-1\}$。
3. 记 $H_{ij} = E_{ii}- E_{jj}$，则对任何 $i<j$，$\{E_{ij},E_{ji},H_{ij}\}$ 构成一个 $\sl_2(\C)$ 三元组。
4. 一组单根为 $\Delta=\{L_i-L_{i+1},1\leq i\leq n-1\}$，对应的全体正根为 $\Phi^+=\{L_i-L_j,i<j\}$。
5. Weyl 群为 $n$ 阶置换群 $S_n$。$W$ 在 $\h^\ast$ 上的作用如下：对任何 $\sum a_iL_i$，$\sigma\in S_n$ 将 $(L_1,\ldots,L_n)$ 置换为 $(L_{\sigma(1)},\ldots,L_{\sigma(n)})$。
6. Killing 型限制在 $\h$ 上为 $\kappa(A,B)=2n\tr{AB}=2n\sum_{i=1}^na_ib_i$。
7. 正根 $\alpha=L_i-L_j$ 在 $\h$ 中对等的元素为 $t_\alpha=\frac{1}{2n}H_{ij}$，对应的余根为 $h_\alpha=H_{ij}$。
8. 所有正根之和的一半 $\rho=\frac{1}{2}((n-1)L_1 +(n-3)L_2+\cdots+(1-n)L_{n})$。由于 $L_1+\cdots+L_n=0$ 我们可以给 $\rho$ 加上 $\frac{n-1}{2}(L_1+\cdots+L_n)$ 从而取 $\rho=(n-1)L_1+(n-2)L_2+\cdots+L_{n-1}+0L_n$。
9. 一组基本整权为 $\{\omega_i=L_1+\cdots+L_i,1\leq i\leq n-1\}$。
10. $\lambda\in P^+$ 是支配整权当且仅当 $\lambda$ 是基本整权的非负整系数线性组合，即
    $$\lambda=\sum a_i\omega_i=(a_1+\cdots+a_{n-1})L_1+(a_2+\cdots+a_{n-1})L_2+\cdots +a_{n-1}L_{n-1}.$$
    设 $\lambda_i=a_1+\cdots+a_i$ 并规定 $\lambda_n=0$，则 $\lambda_i\in\Z_{\geq0}$ 且 $\lambda_1\geq\cdots\geq\lambda_{n-1}\geq\lambda_n=0$。
11. 记 $x_i=e^{L_i}$，则 $e^{\lambda}= x_1^{\lambda_1}x_2^{\lambda_2}\cdots x_n^{\lambda_n}$，$e^{\rho}= x_1^{n-1}x_2^{n-2}\cdots x_{n-1}x_n^0$，且对任何 $\sigma\in S_n$ 有 $e^{\sigma(\lambda)}=e^{\sum \lambda_iL_{\sigma(i)}}=x_{\sigma(1)}^{\lambda_1}x_{\sigma(2)}^{\lambda_2}\cdots x_{\sigma(n)}^{\lambda_n}$。

    于是根据 Weyl 特征公式有

    $$\ch{V_\lambda}=\frac{\sum_{\sigma\in S_n}\sgn{\sigma}x_{\sigma(1)}^{\lambda_1+n-1}x_{\sigma(2)}^{\lambda_2+n-2}\cdots x_{\sigma(n)}^{\lambda_n}}{\sum_{\sigma\in S_n}\sgn{\sigma}x_{\sigma(1)}^{n-1}x_{\sigma(2)}^{n-2}\cdots x_{\sigma(n)}^{0}}=\frac{\det(x_j^{\lambda_i+n-i})}{\det(x_j^{n-i})}.$$
$\ch{V_\lambda}$ 是一个整系数对称多项式 $s_\lambda(x_1,\ldots,x_n)$，叫做 Schur 多项式。