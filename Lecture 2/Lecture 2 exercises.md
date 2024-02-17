[Time-Series Econometrics (aau.dk)](https://www.moodle.aau.dk/pluginfile.php/3257889/mod_resource/content/1/ARMA%20Models.pdf)

****

# Exercises

## Exercise 1.
![[Pasted image 20240214095432.png|center|500|]]

### (a.)

In order to check for stationarity 

Firstly, we check whether the process has a mean, that is independent of time.
$$\mathbb{E}[X_{t}] = \alpha + \beta \mathbb{E}[Z_{t}]=\alpha, \quad \forall t\in \mathbb{N}$$
Secondly, we verify if the second moment of $X_{t}$ is finite.
$$\begin{align*}
\mathbb{E}[X_{t}^{2}] &=  \mathbb{E}[(\alpha + \beta Z_{t})^{2}]\\
&= \mathbb{E}[\alpha^{2}+\beta^{2}\mathbb{E}Z_{t}^{2}+2\alpha \beta Z_{t}]\\
&= \alpha^{2} + \beta^{2} \mathbb{E}[Z_{t}]^{2} + 2\alpha \beta \mathbb{E}[Z_{t}]\\
&= \alpha^{2} + \beta^{2} \mathbb{E}[Z_{t}^{2}]\\
&= \alpha^{2} + \beta^{2} \sigma^{2} <\infty, \quad \forall t\in \mathbb{N}
\end{align*}$$

Lastly we show that the process is invariant through time.
$$\begin{align*}
\text{Cov}[X_{t_{1}},X_{t_{2}}] &=  \mathbb{E}[(X_{t_{1}}-\mathbb{E}[X_{t_{1}}])(X_{t_{2}}-\mathbb{E}[X_{t_{2}}])]\\
&= \mathbb{E}[(X_{t_{1}}-\alpha)(X_{t_{2}}-\alpha)]\\
&= \mathbb{E}[X_{t_{1}}X_{t_{2}}-\alpha X_{t_{1}}- \alpha X_{t_{2}} + \alpha^{2}]\\
&= \mathbb{E}[X_{t_{1}}X_{t_{2}}] - \alpha^{2}
\end{align*}$$
Recall that $Z_{t}$ is a sequence of independent random variables. Hence, $X_{t}= \alpha + \beta Z_{t}$ will also be a sequence of independent random variables. We get

$$\text{Cov}[X_{t_{1}},X_{t_{2}}] = \mathbb{E}[X_{t_{1}}] \mathbb{E}[X_{t_{2}}] - \alpha^{2}=\alpha^{2}-\alpha^2=0.
$$

### (b.)
Note that
$$
\mathbb{E}[X_{t}] = \mathbb{E}[Z_{t}Z_{t-1}] = \mathbb{E}[Z_t]\mathbb{E}[Z_{t-1}] = 0
$$
and
$$
\mathbb{E}[|X_{t}|^2]=\mathbb{E}[(Z_tZ_{t-1})^2]=\mathbb{E}[Z^2_tZ^2_{t-1}]=\mathbb{E}[Z^2_t]\mathbb{E}[Z^2_{t-1}]=\sigma^2\times\sigma^2=\sigma^4<\infty
$$
and
$$
\begin{align*}
\text{Cov}[X_{t_1},X_{t_{2}}] &= \mathbb{E}[(X_{t_1}-\mathbb{E}[X_{t_{1}}])(X_{t_2}-\mathbb{E}[X_{t_{2}}])]\\
&= \mathbb{E}[(X_{t_1}-0)(X_{t_2}-0)]\\
&= \mathbb{E}[X_{t_{1}}X_{t_{2}}]\\
&= \mathbb{E}[Z_{t_{1}}Z_{t_{1}-1}Z_{t_{2}}Z_{t_{2}-1}]\\
&= \begin{cases}
\mathbb{E}[Z_{t_{1}}^{2}Z_{t_{1}-1}Z_{t_{2}}]\\
\mathbb{E}[Z_{t_{1}}Z_{t_{2}}^{2}Z_{t_{2}-1}]\\
\mathbb{E}[Z_{t_{1}}Z_{t_{1}-1}Z_{t_{2}}Z_{t_{2}-1}Z_{t_{2}}]
\end{cases}=0
\end{align*}
$$

## Exercise 2.
![image](C:\Users\kluu2\OneDrive - Aalborg Universitet\Desktop\Bachelor 6.sem\Time-series-Analysis-Course\Lecture 2\attachments\Pasted image 20240214104606.png)

### (a.)
![[Pasted image 20240214112013.png|center|400]]


if all the roots of the polynomial
$$\theta (z) = 1 + \sum\limits_{j=1}^{\infty}\theta_{j}z^{j}$$
is outside of the unit circle. It is invertible

### (b.)
Note that
$$
\mathbb{E}[X_{t}] = \mathbb{E}[\epsilon_{t}] + \theta_{1} \mathbb{E}[\epsilon_{t-1}] + \theta_{2} \mathbb{E}[\epsilon_{t-2}] = 0
$$

$$\text{Var}[X_{t}] = \sigma^{2} + \theta_{1} \sigma^{2} + \theta_{2} \sigma^{2}$$


