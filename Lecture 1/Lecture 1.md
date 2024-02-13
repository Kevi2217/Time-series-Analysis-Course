
[Time-Series Econometrics (aau.dk)](https://www.moodle.aau.dk/pluginfile.php/3254531/mod_resource/content/2/Introduction%20and%20Decomposition.pdf)

****

# Exercises

The proofs for the exercises in Exercise 1. are already made in the p5-project.

## Exercise 1.

#### (a).
All of the assumptions mentioned are needed to prove that $\hat\beta_n$ exists and is unique. 

If ass. (1) is not satisfied $\mathbb{E}[Y_{1}]\neq X^{T}_{i} \beta$, meaning that it will change the score function, thus attaining a different $\hat\beta_{n}$ and will no longer be unbiased.

Ass. (2) and (3) are needed to create an unique MLE estimator. Since, if $X$ has full rank, the matrix $X^\top\Sigma^{-1}$X is invertible and there exists the unique solution

$$\begin{equation*}
    \widehat{\boldsymbol{\beta}}(\textbf{y}) = (X^\top\Sigma^{-1}X)^{-1}X^\top\Sigma^{-1}\textbf{y},
\end{equation*}
$$

where it can be shown that the maximum of $\mathbb{E}ll(\boldsymbol{\mu}(\boldsymbol{\beta});\sigma^2,\textbf{y})$ indeed occurs at $\widehat{\boldsymbol{\beta}}(\textbf{y})$.


Ass. (4) and (5) are implicit since they are needed bcz of the way we assume (1).

#### (b) and (c).
Note first that $\widehat{\boldsymbol{\beta}}(\textbf{Y}) = (X^\top\Sigma^{-1}X)^{-1}X^\top\Sigma^{-1}\textbf{Y}$ follows a normal distribution as a consequence of $(X^\top\Sigma^{-1}X)^{-1}X^\top\Sigma^{-1}$ being a deterministic matrix and $\textbf{Y} \sim \mathcal{N}_n(X\boldsymbol{\beta}, \sigma^2\Sigma)$.

By applying the fact that $\mathbb{E}[\textbf{Y}] = X\boldsymbol{\beta}$ and $\text{Var}[\textbf{Y}] = \sigma^2\Sigma$, the expected value and variance can be computed as

$$\begin{align*}
    \mathbb{E}[\widehat{\boldsymbol{\beta}}(\textbf{Y})] &= \mathbb{E}[(X^\top\Sigma^{-1}X)^{-1}X^\top\Sigma^{-1}\textbf{Y}] = (X^\top\Sigma^{-1}X)^{-1}X^\top\Sigma^{-1}\mathbb{E}[\textbf{Y}] \\
    &= (X^\top\Sigma^{-1}X)^{-1}X^\top\Sigma^{-1}X\boldsymbol{\beta} = \boldsymbol{\beta}
\end{align*}
$$

and

$$\begin{align*}
    \text{Var}[\widehat{\boldsymbol{\beta}}(\textbf{Y})] &= \text{Var}[(X^\top\Sigma^{-1}X)^{-1}X^\top\Sigma^{-1}\textbf{Y}] \\
    &= (X^\top\Sigma^{-1}X)^{-1}X^\top\Sigma^{-1}\text{Var}[\textbf{Y}]((X^\top\Sigma^{-1}X)^{-1}X^\top\Sigma^{-1})^\top \\
    &= (X^\top\Sigma^{-1}X)^{-1}X^\top\Sigma^{-1}\text{Var}[\textbf{Y}](X^\top\Sigma^{-1})^\top((X^\top\Sigma^{-1}X)^{-1})^\top \\
    &= (X^\top\Sigma^{-1}X)^{-1}X^\top\Sigma^{-1}\sigma^2 \Sigma(X^\top\Sigma^{-1})^\top((X^\top\Sigma^{-1}X)^{-1})^\top \\
    &= \sigma^2(X^\top\Sigma^{-1}X)^{-1}X^\top(X^\top\Sigma^{-1})^\top((X^\top\Sigma^{-1}X)^{-1})^\top \\
    &= \sigma^2(X^\top\Sigma^{-1}X)^{-1}X^\top(\Sigma^{-1})^\top X((X^\top\Sigma^{-1}X)^\top)^{-1} \\
    &= \sigma^2(X^\top\Sigma^{-1}X)^{-1}(X^\top\Sigma^{-1}X)^\top((X^\top\Sigma^{-1}X)^\top)^{-1} \\
    &= \sigma^2(X^\top\Sigma^{-1}X)^{-1},
\end{align*}
$$

which proves that $\widehat{\boldsymbol{\beta}}(\textbf{Y}) \sim \mathcal{N}_k(\boldsymbol{\beta}, {\sigma}^2(X^\top\Sigma^{-1} X)^{-1})$.

## Exercise 2.
If it is the case where $X$ is stochastic, we then have that the estimate $\hat \beta_n$ will achieve biasedness, since that estimate will begin to vary everytime.

For the case where $X$ is stochastic, but still full rank, we have that the expected value will now be.$$\mathbb{E}[\mathbf{Y}] = \mathbb{E}[X]\beta$$Thus finding the expected value of the estimator now yields

$$
\begin{align*}
    \mathbb{E}[\widehat{\boldsymbol{\beta}}(\textbf{Y})] &= \mathbb{E}[(X^{\top}X)^{-1}X^{\top}\textbf{Y}] = \mathbb{E}[(X^{\top}X)^{-1}X^{\top}] \mathbb{E}[\textbf{Y}]\\
	&= \mathbb{E}[(X^{\top}X)^{-1}X^{\top}]\mathbb{E}[X]\boldsymbol{\beta}\\
    &= (\mathbb{E}[X^\top] \mathbb{E}[X])^{-1}\mathbb{E}[X^\top] \mathbb{E}[X]\boldsymbol{\beta} = \boldsymbol{\beta}
\end{align*}
$$

The unbiasedness is ONLY POSSIBLE IF $X$ is independent of $X^{T}$, bcz of the property $\mathbb{E}[X^TX]=\mathbb{E}[X^{T}]\mathbb{E}[X]$, which is not possible as they are independent of each other
