
:::{.proposition #ideal-vertex}
[@Maxwell89, proposition 5.15] \

设 $s\in S$，$I=S\setminus\{s\}$，如果有如下条件成立：

1. $(\omega_s,\omega_s)=0$。
2. 标准椭圆子群 $W_I$ 是不可约、仿射的。
3. 对任何 $t\in I$ 有 $(\omega_s,\omega_t)<0$。

则对任意 $p\in\barfd$ 都有 $\omega_s\in\cl{\cone{\bigcup_{w\in W_I}wp}}$。
:::

:::note
这里没有要求 $\inn$ 非退化。

由于 $\bigcup_{w\in W_I}wp$ 是无限集，$\cone{\bigcup_{w\in W_I}}$ 未必是闭集，因此闭包记号不可少。

当 $W$ 的 level 是 1 时，若 $\omega_s$ 是一个位于双曲空间边界上的理想顶点，则命题的条件都满足。这时 $W_I$ 是经过 $\omega_s$ 的那些镜面生成的标准椭圆子群，$W_I$ 会把基本区域无限压缩到 $\omega_s$ 附近，如下图所示：

![](/images/coxeter/ideal-vertex.jpg){.fig width=350}
:::

**证明**：由已知子空间 $V_I=\span\{\alpha_t\mid t\ne s\}$ 是仿射的，并且 $\rad(V_I)$ 是一维的。根据恒等式 $(\ref{eq:idI})$：
$$\omega_s = \underbrace{(\omega_s,\omega_s)}_{=0}\alpha_s +  \sum_{t\ne s}(\omega_s, \omega_t)\alpha_t = \sum_{t\ne s}(\omega_s, \omega_t)\alpha_t\in V_I.$$
由此可得 $\rad(V_I)=\R\omega_s$。于是 $W_I$ 保持 $\omega_s$ 不动，即
$$\R\omega_s\xrightarrow{\ W_I\, -\, 1\ } 0.$$
$W_I$ 同样作用在商空间 $V_I/\R\omega_s$ 上，此作用给出了一个同态 $W_I\to\gl(V_I/\R\omega_s)$。令 $K$ 为此同态的核，则对任何 $w\in K$，
$$w(v + \R\omega_s) = v + \R\omega_s,\quad v\in V_I.$$
即 $wv-v\in\R\omega_s$，从而
$$V_I\xrightarrow{\ K - 1\ }\R\omega_s\xrightarrow{\ W_I\, -\, 1\ } 0.$$
由于 $K\leqslant W_I$，所以
$$V_I\xrightarrow{\ K - 1\ }\R\omega_s\xrightarrow{\ K-1\ }0.$$
即 $(K-1)^2$ 在整个 $V_I$ 上恒为 0。

更进一步，对任何 $w\in K$，$w\alpha_s$ 形如 $w\alpha_s=\alpha_s+\sum\limits_{t\ne s}c_t\alpha_t$，所以 $(w-1)\alpha_s\in V_I$，从而 $w-1$ 将整个 $V$ 也映入 $V_I$，于是
$$V\xrightarrow{\ K-1\ } V_I\xrightarrow{\ K - 1\ }\R\omega_s\xrightarrow{\ K-1\ }0.$$
即 $(K-1)^2V\subset\R\omega_s$，$(K-1)^3V\equiv0$。

取 $w\in K$ 且 $w\ne 1$ [^1]，由于 $w$ 在 $V_I$ 上不是恒等变换，所以存在 $t\in I$ 使得 $w\alpha_t\ne\alpha_t$。设
$$\beta = w\alpha_t=\alpha_t+a\omega_s\,(a\ne 0).$$
则 $s_\beta=wtw^{-1}$，从而对任何 $p\in V$，
$$\begin{align*}
s_\beta(p)&=p - 2(p,\beta)\beta\\
&=p-2(p,\alpha_t+a\omega_s)(\alpha_t+a\omega_s)\\
&=p-2(p,\alpha_t)\alpha_t- 2a(p, \omega_s)\alpha_t - c\omega_s\\
&=t(p) - 2a(p, \omega_s)\alpha_t - c\omega_s.
\end{align*}$$
其中 $c=2(p,\alpha_t+a\omega_s)a$ 是实数。$c$ 具体是多少不用关心。

构造换位子 $w_1=twtw^{-1}\in K$，则由 $(K-1)^2V\subset\R\omega_s$ 有 $(w_1-1)^2p=b\omega_s\,(b\in\R)$。我们来计算 $b$。首先，

$$(w_1-1)p=ts_\beta(p)-p=-2a(p,\omega_s)\alpha_t - c\omega_s.\label{eq:wp1}\tag{1}$$
其中我们利用了 $t(\alpha_t)=-\alpha_t$ 和 $t(\omega_s)=\omega_s$。

到目前为止，我们的计算对任何 $p\in V$ 都是成立的。我们可以在 $(\ref{eq:wp1})$ 式中取 $p=\alpha_t$，得到
$$(w_1-1)\alpha_t=2a\underbrace{(\alpha_t,\omega_s)}_{=0}\alpha_t -c\omega_s=-c\omega_s= -2(\alpha_t,\alpha_t+a\omega_s)a\omega_s=-2a\omega_s.\label{eq:wp2}\tag{2}$$

继续，将 $w_1-1$ 作用在 $(\ref{eq:wp1})$ 两端，由于 $(w_1-1)\omega_s=0$，所以
$$(w_1-1)^2p = 2a(p,\omega_s)(w_1-1)\alpha_t.\label{eq:wp3}\tag{3}$$

将 $(\ref{eq:wp2})$ 代入 $(\ref{eq:wp3})$ 的右边，我们得到
$$(w_1-1)^2p=-4a^2(p,\omega_s)\omega_s.$$
即 $b=-4a^2(\omega_s,p)$。

我们来判断 $b$ 的符号。这里要用到 $p\in\barfd=\cone{\Delta^\ast}$ 的条件。如果 $p$ 是 $\omega_s$ 的正倍数，显然 $\omega_s\in\cl{\cone{\bigcup_{w\in W_I}wp}}$，命题自然成立。所以我们可以假设 $p$ 与 $\omega_s$ 不共线。

设 $p=\sum_{t\in S} c_t\omega_t\,(c_t\geq0)$，则至少有一个 $t\ne s$ 满足 $c_t>0$。于是
$$(\omega_s,p)=\sum_{t\ne s}\underbrace{c_t}_{\geq0 \text{ 且至少有一个 } >0}\ \cdot\ \underbrace{(\omega_s,\omega_t)}_{\text{已知 }<0}<0.$$
从而 $b>0$。

最后利用 $(w_1-1)^3=0$ 和 $(w_1-1)^2p=b\omega_s$ 我们得到对任何 $N\geq 1$ 有
$$w_1^N(p)=(1 + w_1-1)^N(p)= p + \binom{N}{1}(w_1-1)(p) + \binom{N}{2}b\omega_s,$$
可见 $\lim\limits_{N\to\infty}\dfrac{w_1^Np}{\binom{N}{2}b} = \omega_s$，即得所证。$\blacksquare$