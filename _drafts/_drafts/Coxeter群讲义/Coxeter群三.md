# 基本同构

这一节对应的是 Maxwell'82 的第 2 部分，我们将介绍，$\R^n$ 中的球和超平面可以表示为 $n+1$ 维射影空间 $\mathrm{P}(\R^{n+1,1})=\R\mathrm{P}^{n+1}$ 中 space-like 的点，并且 $\R^n$ 中关于球面的反演和超平面的反射可以表示为 $\mathrm{P}(\R^{n+1,1})$ 中的反射变换。这里的叙述和 Maxwell'82 本质是一样的，但稍有不同。


## 将 $\R^n$ 和 $S^{n}$ 提升到 $\R^{n+1, 1}$ 中

我们先从 Lorentz 空间 $\R^{n+1, 1}$ 说起。设 $n$ 是正整数，$e_1,e_2,\ldots,e_{n+2}$ 是 $\R^{n+2}$ 的一组基，在 $\R^{n+2}$ 上定义内积 $\inn$ 如下：对任何 $i\ne j$ 有 $(e_i,e_j)=0$，对 $1\leq i\leq n+1$ 有 $(e_i,e_i)=1$，以及 $(e_{n+2},e_{n+2})=-1$。即这组基下内积的 Gram 矩阵为
$$\begin{pmatrix}I_{n+1} &\\ & -1\end{pmatrix}.$$
此内积的符号为 $(n+1,1)$，在此内积下 $\R^{n+2}$ 成为 Lorentz 空间 $\R^{n+1,1}$。

$e_1,e_2,\ldots,e_{n+2}$ 是一组标准正交基，但是在处理球面时，另一组基更方便。定义
$$e_0=\frac{1}{2}(e_{n+2}-e_{n+1}),\quad e_\infty=\frac{1}{2}(e_{n+2}+e_{n+1}).$$
$\{e_1,\ldots,e_n,e_0,e_\infty\}$ 也构成 $\R^{n+1,1}$ 的一组基，$\inn{\,}{}$ 在这组基下的 Gram 矩阵为
$$\begin{pmatrix}I_n&&\\&0& -\frac{1}{2}\\&-\frac{1}{2}&0\end{pmatrix}.$$
坐标变换公式为（假设 $x\in\R^n$ 来自前 $n$ 个分量）
$$x+x_{n+1}e_{n+1}+x_{n+2}e_{n+2}= x+(x_{n+2}-x_{n+1})e_0+(x_{n+2}+x_{n+1})e_\infty.$$

对 $v\in\R^{n+1,1}$，我们约定用 $[v]$ 表示 $v$ 在射影空间 $\mathrm{P}(\R^{n+1,1})$ 中的等价类。

{% blockquote %}
**定义**：定义光锥 (light cone/null cone) 为
$$\mathbb{L}^{n+1} = \{v\in \mathbb{R}^{n+1, 1}\mid(v,v)=0\}.$$
以及
$$\mathcal{Q}=\mathrm{P}(\mathbb{L}^{n+1})=\{[v]\in\mathrm{P}(\mathbb{R}^{n+1,1})\mid( v,v)=0\}$$
$\mathcal{Q}$ 可以看作是 $\mathbb{L}^{n+1}$ 中所有直线组成的集合。
{% endblockquote %}

我们知道 $\overline{\R^n}=\R^n\cup\{\infty\}$ 和单位球 $S^n=\{x_1^2+x_2^2+\cdots+x_{n+1}^2=1\}\subset\R^{n+1}$ 在球极投影下是一一对应的。实际上它们都可以提升为光锥中的点，如下图所示：

（原图出自 [conformalgeometricalgebra](http://conformalgeometricalgebra.org/wiki/index.php?title=Main_Page)，我拿来在 inkscape 里面做了一些修改）

<img style="margin:0px auto;display:block" width=500 src="/images/coxeter-groups/Horosphere.svg"/>

$S^n$ 对应的是图中的红圈，它是光锥 (null cone) 与超平面 $x_{n+2}=1$ 相交的截线；$\R^n$ 对应的是图中的 horosphere，它是光锥和超平面 $x_{n+2}-x_{n+1}=1$ 相交的截线；$\infty$ 对应 $e_\infty$。

我们来验证这一点。

记 $\|x\|$ 为向量 $x$ 的 Euclidean 范数，则
$$x\in S_n\Leftrightarrow\|x\|=1\Leftrightarrow((x,1),(x,1))=0\Leftrightarrow(x,1)\in\L^{n+1}.$$
所以 $S^n$ 确实可以等同于截线 $Q_1^n=\{v\in\L^{n+1}\mid v_{n+2}=1\}$，对应由映射
$$S^n\to\Q_1^n: x\to x + e_{n+2}$$
给出。由于 $\Q$ 中每个元素在 $Q_1^n$ 中有唯一代表元，所以 $\Q$ 可以写成 $\Q=\{[v]\mid v\in Q_1^n\}$。这是 $\Q$ 的第一种参数化表示。

另一方面我们可以把 $\R^n$ 等同于截线
$$Q_0^n=\{v\in\L^{n+1}\mid (v,e_\infty)=-1/2\}=\{v\in\L^{n+1}\mid v_{n+2}-v_{n+1}=1\},$$
此对应由映射
$$\R^n\to Q_0^n: x\to x + e_0 + \|x\|^2e_\infty$$
给出。$\Q$ 上每个 $e_0$ 分量非零的点都具有如上的形式，而 $\Q$ 上 $e_0$ 分量为 0 的点只有 $[e_\infty]$，将 $\infty$ 对应到 $e_\infty$，我们就得到了 $\overline{\R^n}$ 和 $\Q$ 之间的一一对应。于是 $\Q$ 也可以写成
$$\Q=\begin{cases}[x+e_0+\|x\|^2e_\infty], &x\in\R^n\\
 [e_\infty],&x=\infty\end{cases}$$
为了方便记 $\cl{Q_0^n}=Q_0^n\cup\{e_\infty\}$，则上面的式子可以写成 $\Q =  \{[v]\mid v\in\cl{Q_0^n}\}$，此即为 $\Q$ 的第二种参数化表示。

$\Q$ 的这两种参数化表示可以通过球极投影联系起来：设 $x\in\R^n$ 和 $y\in S^n$ 对应的是 $\Q$ 上同一点，即
$$[x + e_0 + \|x\|^2e_\infty] = [y + e_{n+2}].$$
记
$$y=\widetilde{y}+y_{n+1}e_{n+1} + e_{n+2}=\widetilde{y} +(1-y_{n+1})e_0+(1+y_{n+1})e_\infty,$$
其中 $\widetilde{y}\in\R^n$，则存在非零实数 $\lambda$ 满足
$$x + e_0 + \|x\|^2e_\infty =\lambda\left(\widetilde{y}+(1-y_{n+1})e_0+(1+y_{n+1})e_\infty\right).$$
比较两边 $e_0$ 的系数即得 $\lambda=\frac{1}{1-y_{n+1}}$，于是
$$x=(x_1,\ldots,x_n)=\lambda\widetilde{y}=\frac{\widetilde{y}}{1-y_{n+1}}=\frac{(y_1,\ldots,y_n)}{1-y_{n+1}}.$$
这正是以 $e_{n+1}$ 为极点的球极投影。

当 $x=\infty$ 时，$x$ 在球极投影下对应的是球面的北极点 $e_{n+1}\in S^n$，$x$ 在 $\cl{Q_0^n}$ 中对应的点是 $e_\infty$，$e_{n+1}$ 在 $Q_1^n$ 中对应的点是 $e_{n+1}+e_{n+2}=2e_\infty$，两种参数化表示下对应的点分别是 $e_\infty$ 和 ，显然 $[e_\infty]=[e_{n+1}+e_{n+2}]$。

总之 $\overline{\R^n}$ 和 $S^n$ 在球极投影下对应的点，在 $\Q$ 的两种参数化表示中对应的也是同一个点。


## 将 $\R^n$ 中的球提升到 $\R^{n+1,1}$ 中

我们知道 $\R^n$ 中的球（包含超平面）在球极投影下对应于 $S^n$ 上的圆。它们在 $\R^{n+1,1}$ 中也有对应的表示吗？下面来分析一下。

记
$$\mathcal{S}=\{v\in\R^{n+1,1}\mid( v,v)=1\}$$
是所有 space-like 的单位向量组成的集合，我们来建立 $\R^n$ 中的球/超平面和 $\mathcal{S}$ 的一一对应。

设 $C$ 是 $\R^n$ 中以 $a$ 为中心，半径为 $r\ne 0$ 的球，注意我们允许 $r$ 是负数以区分球的内部和外部，于是 $r>0$ 时 $C$ 的内部就是通常意义下满足 $\|x-a\|< r$ 的有界集合；$r<0$ 时 $C$ 的内部是满足 $\|x-a\|>|r|$ 的无界集合。对 $\R^n$ 中的球，在球极投影下它对应 $S^n$ 上的一个圆，它的内部和外部对应圆两侧的球冠，所以把 $C$ 的外部和内部统一处理是非常合理的。不难验证
$$s=\frac{a + e_0 + (\|a\|^2 - r^2)e_\infty}{r}$$
满足 $(s,s)=1$，所以 $s\in\mathcal{S}$。对 $x\in\R^n$，设 $z=x + e_0 + \|x\|^2e_\infty\in Q_0^n$ 是 $x$ 在光锥中对应的点，则
$$(z,s)=\left(x + e_0 + \|x\|^2e_\infty,\, \frac{a + e_0 + (\|a\|^2 - r^2)e_\infty}{r}\right)=\frac{r^2-\|x-a\|^2}{2r}.$$

于是 $\R^n$ 中圆 $C$ 的方程 $\|x-a\|=|r|$ 在 $\R^{n+1,1}$ 中变成了 $(z,s)=0,\, z\in Q_0^n$。

可以看到不论 $r>0$ 或是 $r<0$，$x$ 落在 $C$ 的边界或者内部当且仅当 $(z,s)\geq0$。这个内部是有界的，当且仅当 $e_\infty$ 位于 $C$ 的外部，即 $(e_\infty, s)<0$。

对 $\R^n$ 中的超平面，设其方程为 $(n,x)=d$，其中 $n$ 是超平面的单位法向量，$d\in\R$。我们将其对应到 $s=n+2de_\infty\in\mathcal{S}$。不难验证
$$(z,s)=(x + e_0 + \|x\|^2e_\infty,\, n+2de_\infty)=(x,d)-d.$$
所以 $x$ 属于超平面的正半空间当且仅当 $(z,s)\geq0$。


## 球面之间的 seperation

设 $C_1,C_2$ 是 $\R^n$ 中的两个球，球心分别为 $a_1,a_2$，半径分别为 $r_1,r_2$。设 $s_1=\frac{a_1+e_0+(\|a_1\|^2-r_1^2)e_\infty}{r_1}$，$s_2=\frac{a_2+e_0+(\|a_2\|^2-r_2^2)e_\infty}{r_2}$ 是它们在 $\R^{n+1,1}$ 中对应的点，我们称
$$(s_1,s_2)=\frac{r_1^2+r_2^2 - \|a_1-a_2\|^2}{2r_1r_2}$$
为 $C_1$ 和 $C_2$ 的 seperation。

在 $r_1,r_2$ 都大于 0 时，不难验证：

1. $C_1$ 和 $C_2$ 没有公共点当且仅当 $|(s_1,s_2)|>1$。在 $(s_1,s_2)<-1$ 时互相分离，在 $(s_1,s_2)>1$ 时一个完全包含另一个。
2. $C_1$ 和 $C_2$ 相交当且仅当 $|(s_1,s_2)|\leq1$，并且在 $(s_1,s_2)=-1$ 时两球外切，$(s_1,s_2)=1$ 时两球内切。不难验证这时 $(s_1,s_2)$ 的值就是它们球面交点处的**外法向量**夹角的余弦值。

有一点需要注意的是，如果 $C_1,C_2$ 相交，并且恰有一个是超平面，不妨设 $C_2$ 的方程为 $(x,n)=d$，则 $s_2=n + 2de_\infty$，
$$(s_1,s_2)=\frac{r_1^2+r_2^2 - \|a_1-a_2\|^2}{2r_1r_2}=\frac{(a_1,n)-d}{r_1}.$$
这时 $(s_1,s_2)$ 等于 $C_1$ 在球面交点处的外法向量和平面法向量夹角余弦的**相反数**。这是因为球面的外法向量指向的是球的外部，而 $s_1$ 指向的是球的内部。


## 关于球面的反演

设 $C$ 是 $\R^n$ 中以 $a$ 为中心，半径为 $r$ 的球，关于 $C$ 的反演变换将 $a$ 映射为 $\infty$（反之亦然），将 $x\ne a$ 映射为 $\frac{r^2}{\|x-a\|^2}(x-a) +a$。这个变换可以通过射影空间 $\mathrm{P}(\R^{n+1,1})$ 中关于 $s$ 的反射
$$\rho_s: z \to z - 2(z,s)s$$
来计算。由于 $(s,s)=1$，这是一个保持 Lorentz 内积的正交变换。我们来验证
$$\begin{align*}z-2(z,s)s&=(x+e_0+\|x\|^2e_\infty)-\frac{r^2-\|x-a\|^2}{r^2}(a + e_0 + (\|a\|^2-r^2)e_\infty)\\
&=\left(x-a+a\frac{\|x-a\|^2}{r^2}\right)+\frac{\|x-a\|^2}{r^2}e_0+\ast e_\infty\\
&\sim \left(\frac{r^2}{\|x-a\|^2}(x-a)+a \right)+ e_0 + \ast e_\infty\end{align*}$$
这里我们不用关心 $e_\infty$ 的系数，最后的 $\sim$ 表示两个向量是射影等价的，我们只要将 $e_0$ 分量归一化即可。

将另一个球关于 $C$ 作反演同样可以用反射 $\rho_s$ 来实现，步骤和上面是类似的，这里不再赘述。


# 球堆

{% blockquote %}
**定义**：我们称一个非空集合 $\mathcal{P}\subset V$ 是一个**球堆**，如果 $\mathcal{P}$ 满足：

1. 对任何 $k\in\mathcal{P}$ 有 $(k,k)=1$。
2. 对 $\mathcal{P}$ 中任何 $k\ne k'$ 有 $(k,k')\leq -1$。
{% endblockquote %}

类似 $\mathcal{P}=\{k,-k\}$ 这样的球堆是平凡的，它对应单个球的内部和外部。反之则称为非平凡的。非平凡的球堆中的点必然两两互不共线。

对任何满足 $(k,k)=1$ 的点 $k$，我们定义球帽
$$C_k = \{v\in Q_0^n\mid (v,k)\geq0\}.$$
根据上一节的讨论，$C_k$ 对应的是 $\R^n$ 中某个球的边界和内部（或者某超平面法向量指向的正半空间），这个内部可以是包含 $\infty$ 的无界区域。

对一个非平凡的球堆 $\mathcal{P}$，$-\mathcal{P}=\{-k\mid k\in\mathcal{P}\}$ 也是非平凡的球堆，而且它翻转 $\mathcal{P}$ 中每个球的内部和外部。我们将证明，$\mathcal{P}$ 和 $-\mathcal{P}$ 中必有一个可以给出 $\R^n$ 中一族两两分离或者相切的球：

{% blockquote %}
**定理 5** (Maxwell'82 proposition 3.1)：设 $\mathcal{P}$ 是 $V$ 的一个非空子集，则下面两点是等价的：

1. $\mathcal{P}$ 是一个非平凡的球堆。
2. 对 $\mathcal{P}$ 或者 $-\mathcal{P}$ 之一，其包含的任何两个球帽 $C_k$ 和 $C_{k'}$ 至多有一个公共点。
{% endblockquote %}

证明：首先注意到 $Q_0^n$ 位于光锥的上半分支，即对任何 $v,v'\in Q_0^n$ 都有 $v\sim v'$。

1 $\Rightarrow$ 2：设 $k,\,k'\in\P$ 且 $k\ne k'$，我们来证明 $C_k\cap C_{k'}$ 和 $C_{-k}\cap C_{-k'}$ 必有一个至多只包含一个点。设 $v\in C_k\cap C_{k'}$，$v'\in C_{-k}\cap C_{-k'}$，则我们有

1. $(v, k+k')\geq0$，$(v',k+k')\leq0$。
2. $(k+k',k+k')=2+2(k,k')\leq 0$。

如果 $(k+k',k+k')<0$，即 $k+k'$ 是 time-like 的，则 $v'\sim k+k'$。但是 $v\sim v'$，所以 $v\sim k+k'$，从而 $(v,k+k')<0$，矛盾。所以 $(k+k',k+k')=0$，即 $k+k'$ 是 light-like 的。进一步如果 $(v,k+k')>0$ 且 $(v',k+k')<0$，则 $v'\sim k+k'$ 但是 $v\not\sim k+k'$，这与 $v\sim v'$ 矛盾。所以 $(v,k+k')$ 和 $(v',k+k')$ 中必然有一个是 0，即 $v$ 和 $v'$ 中必有一个是 $k+k'$ 的倍数，然而 $Q_0^n$ 中与 $k+k'$ 共线的点是唯一确定的，所以 $C_k\cap C_{k'}$ 和 $C_{-k}\cap C_{-k'}$ 中必有一个至多包含一个点。

不妨设 $k_1,k_2\in\mathcal{P}$ 使得 $C_{k_1}\cap C_{k_2}$ 至多包含一个点。我们来证明 $\mathcal{P}$ 中的所有球冠两两之间至多有一个公共点。为此设 $k, k'\in\mathcal{P}$ 且 $k\ne k'$，并设 $v\in C_k\cap C_{k'}$ 是一个公共点。记 $u=v-(v, k_2)k_2$，则我们有
$$(u,u)=(v,v)-(v,k_2)^2 = -(v,k_2)^2\leq0$$
和 $(u,k_2)=0$。即 $u$ 落在 $C_{k_2}$ 边界上。由于 $C_{k_1}\cap C_{k_2}$ 至多只有一个点，所以 $u$ 落在 $C_{k_1}$ 的外部或者边界上，即
$$(u,k_1)=(v-(v,k_2)k_2, k_1)=(v, k_1-(k_1,k_2)k_2)\leq0.$$
记 $w=k_1-(k_1,k_2)k_2$，则 $w$ 满足 $(w,w)\leq0$ 和 $(v,w)\leq 0$，所以 $w\sim v$，从而 $w$ 的某个正倍数 $w'$ 属于 $H$。我们有 $(w',k)\leq 0$ 和 $(w',k')\leq0$，这两个不等式至少有一个是严格成立的，根据上一段的讨论，这必须有 $(k,k')=-1$ 并且 $v$ 是 $k+k'$ 的倍数。

2 $\Rightarrow$ 1: 内积 $(\cdot,\cdot)$ 限制在 $k,k'$ 张成的二维子空间上肯定不是正定的，否则的话 $C_k$ 和 $C_{k'}$ 会在 $H$ 的内部有交点，所以 $|(k,k')|\geq1$。如果是 $(k,k')\geq1$ 的话，则 $C_k\cap C_{-k'}$ 和 $C_{-k}\cap C_{k'}$ 二者中必有一个至多只包含一个点，不妨设为 $C_{k}\cap C_{-k'}$。但是根据已知 $C_k\cap C_{k'}$ 也至多只包含一个点，从而 $C_k$ 作为二者的并也只多只有一个点，矛盾。


# Maxwell 89


> **定理**：设 $s\in S$ 使得 $(\omega_s\bullet \omega_s)=0$，即 $X=S\backslash s$ 是 Euclidean 的，则对任何 $x\in\barfd$ 都有 $\omega_s\in\cl{\cup_{w\in W_X}wp}$。

证明：由于 $\omega_s\bullet \omega_s=0$，所以 $\omega_s = \sum_{i\ne s}(\omega_s, \omega_i)\alpha_i\in V_X$，所以 $\mathbb{R}\omega_s$ 张成了 ${\rm Rad}(V_X)$，并且标准椭圆子群 $W_X$ 保持 ${\rm Rad}(V_X)$ 不动：$w\omega_s=\omega_s$ 对任何 $w\in W_X$ 成立，从而 $W_X$ 作用在 $V_X/\mathbb{R}\omega_s$ 上，此作用给出了一个同态 $W_X\to{\rm GL}(V_X/\mathbb{R}\omega_s)$。令 $W_X'$ 为此同态的核，则对任何 $w\in W_X'$，
$$w(v + \mathbb{R}\omega_s) = v + \mathbb{R}\omega_s,\quad v\in V_X$$
即 $(w-1)v\in\mathbb{R}\omega_s$，于是 $w$ 满足 $(w-1)\alpha_i\in\mathbb{R}\omega_s$ 对任何 $i\in X$ 成立，从而 $(w-1)^2$ 在整个 $V_X$ 上恒为 0。更进一步，$w\alpha_s$ 是 $\alpha_s$ 和 $\{\alpha_i,i\in X\}$ 的线性组合，所以 $w\alpha_s-\alpha_s=(w-1)\alpha_s\in V_X$，所以 $(w-1)^2V\subset\mathbb{R}\omega_s$，$(w-1)^3V\equiv0$。

如果 $p$ 是 $\omega_s$ 的正倍数，则结论是平凡的。否则取 $w\in W_X'$ 且 $w\ne 1$，则存在 $k\in X$ 使得 $w\alpha_k\ne\alpha_k$。设 $w\alpha_k=\alpha_k+a\omega_s,\,a\ne 0$，并构造换位子 $w_1=s_kws_k^{-1}w^{-1}\in W_X'$，则 $(w_1-1)^2p=b\omega_s$，其中 $b\in\mathbb{R}$。我们来计算 $b$。

注意到 $ws_kw^{-1}=s_{w\alpha_k}$，所以
$$\begin{align*}
s_{w\alpha_k}(p)&=p - 2(p\bullet w\alpha_k)w\alpha_k\\
&=p-2(p, \alpha_k+a\omega_s)(\alpha_k+a\omega_s)\\
&=p-2(p, \alpha_k+a\omega_s)\alpha_k - c\omega_s\\
&=s_k(p) - 2a(p, \omega_s)\alpha_k - c\omega_s.
\end{align*}$$
其中 $c=2a(p, \alpha_k+a\omega_s)$ 是实数。于是
$$(w_1-1)p=s_ks_{w\alpha_k}p-p = 2a(p,\omega_s)\alpha_k - c\omega_s.$$
其中我们利用了 $s_k(\omega_s)=\omega_s$。继续由于 $(w_1-1)\omega_s=0$，所以
$$(w_1-1)^2p = 2a(p,\omega_s)(w_1-1)\alpha_k.$$
对于 $(w_1-1)\alpha_k$，我们可以应用上面对 $p$ 的计算，并利用 $(\alpha_k,\omega_s)=0$ 和 $(\alpha_k,\alpha_k)=1$，得到
$$(w_1-1)\alpha_k=2a(\alpha_k, \omega_s)\alpha_k - 2a(\alpha_k, \alpha_k+a\omega_s)\omega_s=-2a\omega_s.$$
于是 $(w_1-1)^2p=-4a^2(p,\omega_s)\omega_s$，即 $b=-4a^2(\omega_s\bullet p)$。由于 $p\in\barfd$ 是 $\{\omega_s,s\in S\}$ 的非负线性组合，以及对任何 $i\ne s$ 有 $(\omega_s,\omega_i)<0$，我们有 $\omega_s\bullet p<0$，从而 $b>0$。

最后利用 $(w_1-1)^3=0$ 我们得到对任何 $N\geq 1$ 有
$$w_1^Np=p + \binom{N}{1}(w_1-1)(p) + \binom{N}{2}b\omega_s,$$
可见 $\lim_{N\to\infty}\frac{w_1^Np}{\binom{N}{2}b} = \omega_s$，即得所证。


> **定理**：如果 $(W,S)$ 的 level 大于等于 2，则 $\cl{\mathcal{C}_r} = \cl{\mathcal{C}}$。

证明：只要证明 $\cl{\mathcal{C}_r}$ 包含那些满足 $e_k\bullet e_k\leq 0$ 的 $e_k$ 即可。若如此，则 $\cl{\mathcal{C}_r}$ 包含所有的 $\{\omega_s,s\in S\}$，再结合 $\cl{\mathcal{C}_r}$ 是 $W-$ 不变的，即得 $\cl{\mathcal{C}_r}$ 包含所有 $\{w\omega_s\mid w\in W,s\in S\}$，从而包含它们的凸包 $\cl{\mathcal{C}}$。

$e_k\bullet e_k<0$ 的情形比较容易，由于 $e_k$ 是 time-like 的，所以其正交补 $\{\alpha_s,s\in S\backslash k\}$ 是正定的，从而标准椭圆子群 $W_{S\backslash k}$ 是有限的。任取 $\omega_s$ 满足 $\omega_s\bullet \omega_s>0$ 并考虑
$$v = \sum_{w\in W_{S\backslash k}}w\omega_s,$$
显然 $v\in\cl{\mathcal{C}_r}$，并且对任何 $s\in S\backslash k$ 都有 $\lfun{\alpha_s}{v}=0$。这个线性方程组的解空间是一维的，所以 $v$ 和 $e_k$ 共线：存在 $a\in\mathbb{R}$ 使得 $v=ae_k$。两边同时与 $\alpha_k$ 作内积得到
$$a = \sum_{w\in W_{S\backslash k}}(\alpha_k\bullet w\omega_s)=\sum_{w\in W_{S\backslash k}}(w\alpha_k\bullet \omega_s).$$
对任何 $w\in W_{S\backslash k}$，$w\alpha_k$ 是 $\alpha_k$ 和一些 $\{\alpha_i,i\ne k\}$ 的线性组合，$\alpha_k$ 的系数总是 1，所以 $w\alpha_k$ 仍然是正根，所以上面求和的每一项都非负。由于 $\Gamma$ 是连通的，所以存在一条从 $k$ 到 $s$ 的路径 $k\sim i_1\sim\cdots\sim i_m\sim s$。不难验证对 $w=s_{i_m}\cdots s_{i_1}\in W_{S\backslash k}$，$w\alpha_k$ 的表达式中 $\alpha_s$ 的系数大于 0，所以 $a$ 必然严格大于 0，所以 $e_k=v/a\in\cl{\mathcal{C}_r}$。

如果 $e_k\bullet e_k=0$，则其正交补 $e_k^\bot$ 是 Euclidean 的，Sylvester 符号为 $(n-2,0)$，并且包含 $\{\alpha_s,s\in S\backslash k\}$。于是 $\Gamma\backslash k$ 是 Euclidean 的。特别地，$\Gamma\backslash k$ 由一些 Euclidean 和有限连通成分组成，并且有且恰有一个连通成分是 Euclidean 的。设 $\omega_s$ 满足 $\omega_s\bullet \omega_s>0$，我们需要讨论两种情况：

1. 如果 $\omega_s$ 属于某个有限型的连通成分 $Y$，类似上面的讨论，$v = \sum_{w\in W_Y}w\omega_s$ 满足对任何 $t\in k$ 都有 $\lfun{\alpha_t}{v}=0$，从而等于 $\omega_s$ 乘以一个正实数，从而属于 $\cl{\mathcal{C}_r}$。

2. 如果 $\omega_s$ 属于某个 Euclidean 型的连通成分 $X$，设 $Y=S\backslash(X\cup\{k\})$ 是 $\Gamma\backslash k$ 的除 $X$ 以外的连通成分的并，则 $X$ 和 $Y$ 互不连通，从而
$$e_k = (e_k\bullet e_k)\alpha_k + \sum_{t\ne k} (e_k\bullet \omega_t)\alpha_t=\sum_{t\in X} (e_k\bullet \omega_t)\alpha_t + \sum_{t\in Y} (e_k\bullet \omega_t)\alpha_t=e_k'+e_k''.$$
并且 $e_k'$ 和 $e_k''$ 是正交的。于是
$$e_k'\bullet e_k' + e_k''\bullet e_k'' = e_k\bullet e_k=0.$$
由于 $e_k'\in V_X$ 来自 Euclidean 型，$e_k''\in V_Y$ 来自有限型，所以只能是 $e_k'\bullet e_k'= 0$ 并且 $e_k''=0$，从而 $e_k=e_k'\in X$。于是 $e_k$ 张成了 ${\rm Rad}(V_X)$，从而它表示为 $\{\alpha_i,i\in X\}$ 的线性组合时所有的系数 $(e_k,\omega_i)$ 系数都是非零且同号的。我们断言它们都小于 0。实际上由
$$e_k=\sum_{t\in X} (e_k\bullet \omega_t)\alpha_t$$
两边同时用 $\alpha_k$ 作内积有
$$1=e_k\bullet\alpha_k=\sum_{t\in X} (e_k\bullet \omega_t)(\alpha_t\bullet\alpha_k).$$
由于 $\alpha_t\bullet\alpha_k\leq 0$，所以必须所有 $e_k\bullet \omega_t<0$。特别地，$e_k\bullet \omega_s<0$。利用前面的定理，我们得到
$$e_k\in\overline{\bigcup_{w\in W_x}w\omega_s}\subset\cl{\mathcal{C}_r}.$$

> 定理：$\mathcal{C}_r$ 是堆积当且仅当 $\Gamma$ 的 level 是 2。并且在 level 2 时 $\mathcal{C}_r$ 还是极大堆积。

证明：若 $\Gamma$ 的 level 是 2，则根据前面的定理，$\mathcal{C}_r$ 中的两两分离，将 $\mathcal{C}_r$ 中的向量单位化，则这些单位化后的权仍然两两分离，并且任何两个权张成的子空间都不是正定的，所以它们两两之间的内积 $\leq -1$。所以 $\mathcal{C}_r$ 确实给出一个堆积。如果存在某个圆与任何 $\mathcal{C}_r$ 中的圆都不相交/相切的话，则这个圆对应于一个单位向量 $(k,k)=1$ 并且 $(k,x)\leq 0$ 对任何 $x\in\mathcal{C}_r$ 成立。由于 $\cl{\mathcal{C}_r}=\cl{\tc}$，这意味着 $(k,y)\leq0$ 对任何 $y\in\tc$ 成立。于是 $(k,k)\leq0$，矛盾。这就证明了 level 2 时 $\mathcal{C}_r$ 是极大堆积。

反之若 $W$ 是双曲的，并且 $\mathcal{C}_r$ 是一个堆积，那么由于实权之间两两分离，而一个非实权和其它任何权张成的子空间当然不可能是正定的，所以也是分离的，所以 $\Gamma$ 的 level 只能是 2。



[^1]: 这是 Coxeter 群中的一个熟知结论：如果 Coxeter 群 $(W,S)$ 的 Coxeter 图 $\Gamma$ 是连通的，且 Cartan 矩阵是半正定的，则 Cartan 矩阵的任何余子式都是正定的，即从 $\Gamma$ 中删除若干顶点后得到的是有限 Coxeter 群。见 Humphreys 的 "Reflection groups and Coxeter groups" 2.6 小节。