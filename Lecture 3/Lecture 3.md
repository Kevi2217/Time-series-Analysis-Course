# Lecture 3 

## Exercises

### Exercise 1.
Consider a MA$(q)$ process, 

$$
y_t = \mu + \epsilon_t + \theta_1\epsilon_{t-1} + \theta_2\epsilon_{t-2} + \dots + \theta_q\epsilon_{t-q}, \quad \epsilon_t \sim \text{i.i.d.} \mathcal{N}(0,\sigma^2),
$$
and denote $\boldsymbol{\theta} = (\mu , \theta_1, \theta_2, \dots, \theta_q, \sigma^2)^\top$ as the parameter we have to estimate. Then we have that 
$$
Y_t | \epsilon_t,\epsilon_{t-1},\epsilon_{t-2},\dots,\epsilon_{t-q} \sim \mathcal{N}(\mu + \epsilon_t + \theta_1\epsilon_{t-1} + \theta_2\epsilon_{t-2} + \dots + \theta_q\epsilon_{t-q} ,\sigma^2)
$$

Suppose we know that we know the first $q$ values of $\epsilon$:
$$\epsilon_0 = \epsilon_{0-1} = \epsilon_{0-2},\dots = \epsilon_{0-q} = 0,$$

and denote $\boldsymbol{\epsilon} = (\epsilon_t,\epsilon_{t-1},\epsilon_{t-2},\dots,\epsilon_{t-q})^{\top}$.
Thus.
$$
Y_1 | \boldsymbol{\epsilon = \textbf{0}} \sim \mathcal{N}(\mu, \sigma^2),
$$
since $y_1 = \mu + \epsilon_1$.

Next consider the distribution of $Y_2$ conditional on $Y_1 = y_1$. 
$$
Y_2 = \mu +  \epsilon_2 + \theta_1\epsilon_{2-1} + \theta_2\epsilon_{2-2} + \dots + \theta_q\epsilon_{2-q}
$$

Moreover since $\epsilon_1 = y_1 - \mu$ , we hence have that

$$Y_2 | Y_1, \boldsymbol{\epsilon} = 0 \sim \mathcal{N}(\mu + \theta_1 \epsilon_1, \sigma^2)$$
meaning that
$$
f_{Y_2 | Y_1, \boldsymbol{\epsilon}= \textbf{0}}(y_2 | y_1, \boldsymbol{\epsilon} = 0 ; \boldsymbol{\theta}) = \frac{1}{\sqrt{2\pi \sigma^2}}exp(-\frac{1}{2} \cdot \frac{(y_2 - \mu - \theta_1 \epsilon_1)^2}{2\sigma^2}) = \frac{1}{\sqrt{2\pi \sigma^2}}exp(-\frac{\epsilon^2_2}{2\sigma^2}).
$$

Thus we have that $\epsilon_2 = y_2 - \mu - \theta\epsilon_1$. Iterating till $t$ we have

$$
\epsilon_t = y_t - \mu - \theta_1\epsilon_{t-1} - \theta_2\epsilon_{t-2} - \dots - \theta_q\epsilon_{t-q}
$$
and
$$
f_{Y_t | Y_{t-1},\dots,Y_1, \boldsymbol{\epsilon}=0}(y_t | y_{t-1},\dots,y_1, \boldsymbol{\epsilon}=0;\boldsymbol{\theta}) = \frac{1}{\sqrt{2\pi \sigma^2}}exp(-\frac{\epsilon^2_t}{2\sigma^2})
$$


Thus we have that 
$$
\mathcal{L}(\boldsymbol{\theta})=f_{Y_T,Y_{t-1},\dots, Y_{1},\boldsymbol{\epsilon}=0}(y_t, y_{t-1},\dots, y_1 | \boldsymbol{\epsilon} = 0, \boldsymbol{\theta}) = f_{Y_1|\boldsymbol{\epsilon} = 0;\boldsymbol{\theta}} \prod_{t=2}^T f_{Y_T|Y_{t-1},\dots, Y_{1},\boldsymbol{\epsilon} = 0;\boldsymbol{\theta}}
$$

which yields the following log-likelihood function
$$
\ell(\boldsymbol{\theta}) = - \frac{T}{2}\ln(2\pi)-\frac{T}{2}\ln(\sigma^2) - \sum^T_{t=1} \frac{\epsilon_t^2}{2\sigma^2}.
$$

http://course.sdu.edu.cn/G2S/eWebEditor/uploadfile/20140110134920017.pdf


### Exercise 2.
Consider the case where AR$(2)$ model,
$$
y_t = c + \phi_1 y_{t-1} + \phi_2 y_{t-2} +\epsilon_t 
$$
 is true. And we have to estimate the parameters of the AR$(1)$ model.

 

