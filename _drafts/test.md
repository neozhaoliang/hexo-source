---
title: "HHH"
tags:
  - Coxeter groups
  - Cartan matrix
  - Coxeter matrix
  - Tits cone
  - Hyperbolic space
  - Boyd-Maxwell ball packings
  - Reflection
  - Sphere inversion
  - Root system
  - Circle packing
url: "test"
---
\newcommand{\ind}{\mathbb{1}}

Let's prove that for every $n\geq0$, the event $A_n=\{R_n\in\{0,r\}\}$ is a zero-probability event.

Induction on $n$: when $n=0$, $R_0=R>r$, so the conclusion naturally holds. Assume that when $k<n$, $\mathbb{P}(A_k)=0$, and consider the case when $k=n$.

Since $\mathbb{P}(A_n) =\mathbb{E}[\ind_{A_n}]=\mathbb{E}[\mathbb{E}[\ind_{A_n}|\mathcal{F}_{n-1}]]$, we only need to prove that $\mathbb{E}[\ind_{A_n}|\mathcal{F}_{n-1}]$ is almost everywhere equal to 0. According to the freezing lemma,

$$\mathbb{E}[\ind_{A_n}|\mathcal{F}_{n-1}]=\mathbb{E}[\ind_{\{0,r\}}\circ |X_{n-1}+l_nU_n|\bigg|\mathcal{F}_{n-1}]=\mathbb{E}\left[\ind_{\{0,r\}}\circ |X_{n-1}+l_nU_n|\right].$$

Here, the expectation on the right-hand side is taken with respect to the uniform distribution on the unit sphere for $U_n$.

According to the induction hypothesis, the probability of $|X_{n-1}|\in\{0,r\}$ is 0. Since modifying the value on a set of measure zero does not affect the conditional expectation, therefore, we can ignore this set and simply assume $|X_{n-1}|\ne 0,r$ in the integration. The probability that a random point on the sphere with center $X_{n-1}$ and radius $l_n\geq0$ has a distance of $0$ or $r$ from the origin is 0, i.e., $\ind_{\{0,r\}}\circ |X_{n-1}+l_nU_n|$ is a function that is almost everywhere equal to 0 on the unit sphere, so its integral is also 0. Thus, $\mathbb{E}[\ind_{A_n}|\mathcal{F}_{n-1}]=0$, and the conclusion follows.