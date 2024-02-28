# Exercise set 4

## Exercise 1.

$\hat\gamma_0 = 3.68$, $\hat \gamma_1 = 2.29$ and $\hat \gamma_2 = 1.85$.

The Yule Waler equation are given by

$$\gamma(k) = \phi\gamma(k-1)+\dots + \phi_p\gamma(k-p),\quad k = 1,\dots, p$$
$$\sigma^2 =\gamma(0)-\phi_1\gamma(1)+\dots-\phi_p\gamma(p)$$

Thus solving the system with given $\gamma$ values we get.

$$\hat\gamma_2 = \phi_1 \hat\gamma_1 + \phi_2 \hat\gamma_0$$

$$\hat\gamma_1 = \phi_1 \hat\gamma_0 + \phi_2 \hat\gamma_{-1} = \phi_1 \hat\gamma_1 + \phi_2 \hat\gamma_0$$

(note: bcz of stationarity its acf is symmertric)

Thus, we have a system of two equations:
$$
1.85 = \phi_1 2.29 + \phi_0 3.68,
$$
$$
2.29 = \phi_1 3.68 + \phi_2 2.29.
$$
Solving the system we get that $\phi_1 = 0.505$ and $\phi_2 = 0.188$.

Now these values to find $\sigma^2$:

$$
\sigma^2 = 3.68 - 0.505*2.29 + 0.188*1.85 = 2.87135.
$$

## Exercise 2.

Given $\hat\gamma_0 = 8.25$

We construct the bound as an $95%$-confidence region. Thus,

$$
bound:= \frac{1.96}{20}=0.098.
$$

Hence, we pick the parameters $p$ and $q$ if they exceed the bound of $PACF$ and $ACF$, respectively. This implies that $p=1$ and $q=7$.

