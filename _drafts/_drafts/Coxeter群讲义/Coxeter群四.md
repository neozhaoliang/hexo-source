---
title: "Coxeter 群 （四）：极小根与正则语言"
categories: [Coxeter Groups]
date: 2021-12-24
tags:
  - Coxeter groups
  - Cartan matrix
  - Coxeter matrix
  - Tits cone
  - Minimal roots
  - Reflection
  - Dominance order
  - Root poset
  - Automatic group
  - Regular language
  - Root system
url: "coxeter-groups-IV"
---
\newcommand{\lfun}[2]{\langle #1,\,#2\rangle}
\newcommand{\fd}{\mathcal{D}}
\newcommand{\tc}{\mathcal{C}}
\newcommand{\stab}[1]{\mathrm{Stab}(#1)}
\newcommand{\negf}[1]{\mathrm{Neg}(#1)}
\newcommand{\barfd}{\overline{\mathcal{D}}}
\newcommand{\plc}[1]{\mathrm{PLC}(#1)}
\newcommand{\barc}{\overline{C}}
\newcommand{\sthe}[1]{\dfrac{\sin #1\theta}{\sin\theta}}
\newcommand{\shthe}[1]{\dfrac{\sinh #1\theta}{\sinh\theta}}
\newcommand{\inn}[2]{\langle #1,\,#2 \rangle}
\newcommand{\R}{\mathbb{R}}
\newcommand{\L}{\mathbb{L}}
\newcommand{\Q}{\mathcal{Q}}
\newcommand{\LR}{\mathbb{R}^{n+1,1}}
\newcommand{\PR}{\mathrm{P}(\mathbb{R}^{n+1,1})}
\newcommand{\dp}[1]{\mathrm{dp}(#1)}


> 引理：设 $s\in S,\,\alpha\in\Phi^+-\{\alpha_s\}$，则
>
> $$\dp{s\alpha}=\begin{cases}\dp{\alpha}-1,& \text{if }\alpha\bullet\alpha_s>0,\\
\dp{\alpha},& \text{if }\alpha\bullet\alpha_s=0,\\
\dp{\alpha}+1,& \text{if }\alpha\bullet\alpha_s<0.\\\end{cases}$$

证明：$\alpha\bullet\alpha_s=0$ 的情形最容易，这时 $s\alpha=\alpha$，二者的 depth 当然是一样的。

进一步我们又只要证明第一种情形 $\alpha\bullet\alpha_s>0$ 即可。这是因为 $\alpha\bullet\alpha_s<0$ 等价于 $s\alpha\bullet\alpha_s>0$，所以对 $s\alpha$ 应用第一种情形的结论即得
$$\dp{s\cdot s\alpha}=\dp{s\alpha}-1,$$
即 $\dp{s\alpha} = \dp{\alpha}+1$。

回到第一种情形的证明。设 $w\in W$ 满足 $l(w)=\dp{\alpha}$ 且 $w\alpha\in\Phi^-$。我们的目标是找一个 $w'\in W$ 满足 $l(w')=l(w)-1=\dp{\alpha}-1$ 且 $w's\alpha\in\Phi^-$。这样一来就有 $\dp{s\alpha}\leq l(w')=\dp{\alpha}-1$。我们知道 $\dp{s\alpha}$ 和 $\dp{\alpha}$ 至多相差 1，所以只能是 $\dp{s\alpha}=\dp{\alpha}-1$，这就证明了结论。

$w\alpha\in\Phi^-$ 显然可以推出 $(ws)(s\alpha)\in\Phi^-$，那么 $ws$ 是不是我们要找的 $w'$？如果 $l(ws)<l(w)$，即 $w\alpha_s\in\Phi^-$ 那么它就是要找的 $w'$，但是如果 $w\alpha_s\in\Phi^+$ 呢？我们断言可以找到 $s'$ 使得 $s'w$ 符合要求。考察
$$ws\alpha=w(\alpha-2(\alpha\bullet\alpha_s)\alpha_s)=w\alpha-2(\alpha\bullet\alpha_s)w\alpha_s=\gamma.$$
可以看到 $2(\alpha\bullet\alpha_s)w\alpha_s$ 这一项是个正根，而 $w\alpha$ 是负根，所以 $\gamma$ 是个负根。并且 $\gamma$ 作为两个负根的线性组合，是不可能仅用一次反射就变成正根的，即对任何 $s'\in W$ 都有 $s'\gamma\in\Phi^-$。特别地，取 $s'$ 使得 $l(s'w)<l(w)$，则有
$$(s'w)(s\alpha)=s'(ws\alpha)=s'\gamma\in\Phi^-.$$
于是 $s'w$ 即为所求。