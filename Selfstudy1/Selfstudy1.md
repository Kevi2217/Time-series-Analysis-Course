# Selfstudy 1

## Analytical Exiercises
### Exercise 1.

Firstly prove that $\sum\limits_{i=1}^{n}i=n\frac{n+1}{2}$

We prove by induction, so consider the base case with $n=1$:

$$
1=\sum\limits_{i=1}^{1}i=1(1+1)/2=1
$$

Now ass. $n\in \mathbb{N}$ is true, i.e, $\sum_{i=1}^{n}i=n\frac{n+1}{2}$ is true, and we check whether the induction step $n+1$ holds:

$$
\begin{align*}
\sum\limits_{i=1}^{n+1}i&= n\frac{n+1}{2}+n+1\\
&=  n\frac{n+1}{2}+ \frac{2n}{2}\\
&= \frac{n^{2}+2n+n}{2}\\
&= \frac{(n+1)(n+2)}{2}
\end{align*}
$$

$$\QED$$

Now prove that $\sum\limits_{k=1}^{n}k^{2}=\frac{n(n+1)(2n+1)}{6}$. We prove by induction, so firstly consider the base case with $n=1$:
$$
1=\sum\limits_{k=1}^{1}k^{2}=\frac{1(1+1)(2+1)}{6}=1
$$

Now ass. $n\in \mathbb{N}$ is true, and we have to check the case $n+1$:

$$
\begin{align*}
\sum\limits_{k=1}^{n+1}k^{2}&= \frac{n(n+1)(2n+1)}{6}+(n+1)^{2}\\
&= \frac{n(n+1)(2n+1)}{6}+(n+1)(n+1)\\
&= \frac{n(n+1)(2n+1)}{6}+ \frac{6(n+1)(n+1)}{6}\\
&= \frac{n(n+1)(2n+1)+6(n+1)(n+1)}{6}\\
&= (n+1)\frac{n(2n+1)+6(n+1)}{6}\\
&= (n+1)\frac{2n^{2}+7n+6}{6}\\
&= (n+1)\frac{(k+2)(2k+3)}{6}\\
\end{align*}
$$

$$\QED$$

### Exercise 2.
Given the series $Y_{t} = c_{t}+T_{t}$ with deterministic trend $T_{t}=\mu+\delta_{t}$ for $t=1,2,\dots$, and that $\mathbb{E}[c_{t}]=0$.

Denote $\theta = (\mu, \delta_{t})^\top$ and estimate it, with OLS. That is

$$
\begin{align*}
\hat \theta= \text{arg}\min_{(\mu,\delta)}\sum\limits_{t=1}^{n} (y_{t} - T_{t})^{2}
\end{align*}
$$

So differentiate wrt. to $(\mu,\delta)$ and equate it to zero:

So consider the case where we hold $\delta$ and differentiate for $\mu$.

$$
\begin{align*}
& \left(\sum\limits_{t=1}^{n} (y_{t} - (\mu+\delta t))^{2}\right)' = 0\\
&\Leftrightarrow \sum\limits_{t=1}^{n} -2(y_{t} - \mu-\delta t)=0\\
&\Leftrightarrow 2n \mu= 2\sum\limits_{t=1}^{n}y_{t}-2\delta\sum\limits_{t=1}^{n} t\\
&\Leftrightarrow n \mu= \sum\limits_{t=1}^{n}y_{t}-\delta\sum\limits_{t=1}^{n} t \\
\end{align*}
$$

Now apply the fact that $\sum\limits_{i=1}^{n}i=n\frac{n+1}{2}$

$$
\begin{align*}
&n \mu=\sum\limits_{t=1}^{n}y_{t}-\delta\sum\limits_{t=1}^{n} t = \sum\limits_{t=1}^{n}y_{t}-\delta \frac{n(n+1)}{2}\\
&\Leftrightarrow  \mu= -\frac{\delta(n+1)}{2}+\frac{1}{n}\sum\limits_{t=1}^{n}y_{t}.
\end{align*}
$$

So consider the case where we hold $\mu$ and differentiate for $\delta$.

$$
\begin{align*}
& \left(\sum\limits_{t=1}^{n} (y_{t} - (\mu+\delta t))^{2}\right)' = 0\\
&\Leftrightarrow \sum\limits_{t=1}^{n} -2(y_{t} - \mu-\delta t)=0\\
&\Leftrightarrow \sum\limits_{t=1}^{n} -2y_{t} + 2\mu +2\delta t=0\\
&\Leftrightarrow 2n \mu +\sum\limits_{t=1}^{n}2\delta t + \sum\limits_{t=1}^{n} -2y_{t}=0\\
&\Leftrightarrow 2n \delta= 2\sum\limits_{t=1}^{n}y_{t}-2n\mu\\
&\Leftrightarrow  \delta= -\mu+\frac{1}{n}\sum\limits_{t=1}^{n}y_{t}
\end{align*}
$$


Observing the achieved estimates, we see that the asymptotic behavior is that both parameters achieve the sample mean $\bar y$ minus the other parameter. Thus if $t\to \infty$ 

### Exercise 3.
