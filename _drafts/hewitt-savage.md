    定理 [Hewitt - Savage 0-1 律]：设 $\{X_n,n=1,2,\ldots,\}$ 是一列 i.i.d 的随机变量，$\mathcal{E}_n$ 是由所有在前 $n$ 个坐标的置换下不变的事件组成的 $\sigma-$ 域，$\mathcal{E}_\infty=\cap_{n=1}^\infty\mathcal{E}_n$，则对任何 $A\in\mathcal{E}_\infty$ 有 $P(A)\in\{0,1\}$。





证明：见 Durrett 书 265 页。



设 $(G,+)$ 是一个 Abel 群，$\mu$ 是 $G$ 上的一个概率测度。$G$ 上的实值函数 $h$ 称作是 $\mu-$ 调和的，如果它满足对任何 $x\in G$ 有

\[h(x)=\int_G h(x+y)\,\mu(\mathrm{d}y).\]



    定理 [Choquet - Deny]：设 $f:G\rightarrow\mathbb{R}$ 是一个有界的 $\mu-$ 调和函数，$S$ 为 $\mu$ 的支集生成的子群，则 $S$ 中的每个元素都是 $f$ 的周期：\[f(x+s)=f(x),\quad \forall x\in G,s\in S.\]

    注：实际上应该要求 $G$ 是一个局部紧的拓扑群，$f$ 是连续函数，这样才可以说 $S$ 中每个点都是 $f$ 的周期。否则就要加上几乎处处的修饰语，很麻烦。



证明：设 $\{X_n,n=1,2,\ldots\}$ 是 $G$ 上的一列独立的随机变量，服从分布 $\mu$，$f$ 是有界 $\mu-$ 调和函数。从任一点 $x\in G$ 出发作随机游动 $Z_n=x+X_1+\cdots+X_n$，则 $f$ 是 $\mu-$ 调和的说明 $M_n=f(Z_n)$ 是一个鞅。由于 $f$ 是有界的因此这是一个 UI 鞅，它几乎处处收敛到一个极限 $M_\infty$。注意由于 $G$ 是 Abel 群，因此 $M_\infty$ 是对称随机变量，从而根据 Hewitt - Savage 0-1 律它几乎处处是一个常数，于是 $M_n=E[M_\infty|\mathcal{F}_\infty]$ 也几乎处处是一个常数，特别地几乎处处有 $f(x+X_1)=f(x)$。由 $x$ 的任意性就得到了结论。



下面的两个例子虽然都有确定性的证明，但是用 Choquet - Deny 定理来做别有一番风味。



    例子：设 $f:\mathbb{Z^2}\rightarrow\mathbb{R}$ 是一个有界函数且满足对任何 $(x,y)\in\mathbb{Z}^2$ 有

    \[f(x,y)=\frac{f(x+1,y)+f(x,y+1)+f(x-1,y)+f(x,y-1)}{4},\]

    则 $f$ 必为常数。



    例子：设 $f:\mathbb{R^2}\rightarrow\mathbb{R}$ 是有界的调和函数，则 $f$ 必为常数。

