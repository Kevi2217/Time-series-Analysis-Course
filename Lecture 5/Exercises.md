# Exercises - Lecture 5


## Analytical exercises

### Exercise 1.

#### a)
We have to show that $Y_{t}$ has $\mathbb{E}[Y_{t}] = \mu_t$ and $V[Y_{t}] = \mathbb{E}[y_{t}-\mu_{t}][y_{t-k}-\mu_{t-k}]^{top} = \Gamma(k)$, but it is satisfied to simply show that the roots lie outside the unit circle:
$$det(I-\phi_{1}z-\dots \phi_{p}z^{p})=0 \land |z_{i}|>1 \quad for \quad i = 1,2,\dots,p \implies stationarity$$
Thus we solve for $z$:
$$
\begin{align*}
& det(I_{2}-\begin{bmatrix}0.5 & 0.1 \\ 0.4 & 0.5\end{bmatrix}z-\begin{bmatrix}0 & 0 \\ 0.25 & 0\end{bmatrix}z^{2})=0\\
&\Leftrightarrow det(I_{2}+(\begin{bmatrix}-0.5 & -0.1 \\ -0.4 & -0.5\end{bmatrix}-\begin{bmatrix}0 & 0 \\ 0.25z & 0\end{bmatrix})z)=0\\
&\Leftrightarrow det(\begin{bmatrix}1-0.5z & -0.1z \\ -0.4z-0.25z^{2} & 1-0.5z\end{bmatrix})=0\\
&\Leftrightarrow (1-0.5z)^{2}-(-0.1z)(-0.4z-0.25z^{2})=0\\
&\Rightarrow z_{1} = 1.3, \quad z_{2} = 3.55 + 4.26i, \quad z_{3} = 3.55 - 4.26i
\end{align*}
$$

Now we simply take the modulus to check whether they lie within the unit circle:
$$
|z_{1}| = \sqrt{1.3^{2}}> 1 , \quad |z_{2}| = \sqrt{3.55^{2}+4.26^{2}} > 1, \quad |z_{3}| = \sqrt{3.55^{2}+(-4.26)^{2}}>1$$

Since all of the roots are outside the unit circle, we have thus confirmed that the VAR process is stationary.


#### b)

we perform the F-test to see