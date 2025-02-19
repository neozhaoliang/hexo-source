---
title: "Todd Kemp 概率论课程笔记"
date: 2021-03-01
url: todd-kemp
---
<!-- md texcmd.md -->


# 49.1 Optional Stopping and Sampling

这一节介绍了停时，以及停时鞅序列 $\{X_{n\wedge \tau}\}$ 的性质。

一个简单的股票市场模型：设 $\{X_n\}_{n=0}^\infty$ 是股票价格，$\{U_n\}_{n=1}^\infty$ 是你的投资策略，即在时刻 $n-1$ 买入 $U_n$ 并在时刻 $n$ 抛出。或者说，$U_n$ 是你在 $(n-1,n]$ 这个时间区间内的股票交易数量，那么到时刻 $n$ 时，你的净收益为
$$I_n(U,X) = \sum_{j=1}^n U_j(X_j-X_{j-1}).$$
这里 $U_n$ 必须是关于 $\F_{n-1}=\sigma(X_0,X_1,\ldots,X_{n-1})$ 可测。

第一个重要观察是：

:::{.theorem #martingale-discrete-integration}
如果 $\{X_n\}$ 是鞅/下鞅/上鞅，并且 $U_n\geq0$，则 $I_n(U,X)$ 也是鞅/下鞅/上鞅。
:::

证明：对下面的恒等式两边关于 $\F_n$ 取条件期望即可。
$$I_{n+1}(U,X) = \underbrace{I_{n}(U,X)}_{\in\F_n} + \underbrace{U_{n+1}}_{\in\F_n}\underbrace{(X_{n+1}-X_{n})}_{\rm (sub/sup)martingale}.$$

我们可以设定两个随机时间，比如 $\sigma$ 是股票首次低于 1 美元的时刻, 这时立刻买入；$\tau$ 是股票首次高于 10 美元的时刻，这时立刻抛出；在区间 $(\sigma,\tau]$ 中保持持有股票，即 $U_j=\ind_{\sigma<j\leq \tau}$。于是 $U_j\ind_{n\geq j}=\ind_{(\sigma\wedge n, \tau\wedge n]}(j)$。

那么净收益
$$I_n(U,X) = \sum_{j=1}^n \ind_{\sigma\wedge n<j\leq \tau\wedge n} (X_j-X_{j-1})=X_{\tau\wedge n} - X_{\sigma\wedge n}.$$

特别地，取 $\sigma=0$，则 $U_j=\ind_{j\leq\tau}$，则我们有如下结论：

:::{.theorem #stopping-time-also-martingale}
如果 $\{X_n\}$ 是鞅，那么 $\{X_{n\wedge \tau}\}$ 也是鞅。
:::

证明：首先每一项 $X_{n\wedge \tau}$ 可以看成是一个关于 $X_1,\ldots,X_n$ 的部分和：

$$X_{n\wedge \tau} = \sum_{k=0}^n\ind_{\tau=k}X_k.$$

显然 $X_{n\wedge \tau}$ 是可积的。

另一方面在 @Pre:martingale-discrete-integration 中取 $U_n=\ind_{n\leq\tau}$，则 $X_{n\wedge \tau} - X_0 = I_n(U,X)$ 仍然是鞅，那么加上一个 $X_0$ 得到的 $X_{n\wedge\tau}$ 当然还是鞅。

# 49.2 Holder's Inequality

无特别内容

# 49.3 (Sub)martingale Maximal Inequalities （未完成）

开篇第一句话就是，鞅在一个有限区间上的极大值，可以以多种方式被它在区间终点的值所控制。