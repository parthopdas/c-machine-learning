#### Week 3: Logistic Regression

>
> Requires [Markdown Preview Enhanced](https://github.com/shd101wyy/markdown-preview-enhanced)
>

###### Logistic Regression: Model Representation

| Term | Meaning |
| - | - |
| $g(z) = \frac{1}{1 + e^{-z}}$ | Sigmoid Function |
| $h_\theta(x) = g(\theta^Tx) = \frac{1}{1 + e^{-\theta^Tx}}$ | Hypothesis |
| $h_\theta(x) = P(y = 1 \| x; \theta)$ | Probability that y is 1, given x, parameterized by $\theta$ |
| $\theta^Tx \ge 0 \Rightarrow h_\theta(x) \ge 0.5 \Rightarrow y = 1$ | Decision boundary |


###### Logistic Regression: Cost function

| Term | Meaning |
| - | - |
| $Cost(h_\theta(x), y) = -y.log(h_\theta(x)) - (1-y).log(1 - h_\theta(x))$ | Cost |
| $J(\theta) = \frac{1}{m}\sum\limits_{i = 1}^{m}Cost(h_\theta(x^{(i)}), y^{(i)})$ | Cost Function |
| $\min\limits_{\theta}J(\theta)$ | Goal |

###### Logistic Regression: Gradient Descent

> Calculation/Tips-n-Tricks are _**identical**_ for Linear Regression and Logistic Regression

> $\theta_j := \theta_j - \alpha\frac{\partial}{\partial\theta_j}J(\theta) = \theta_j - \alpha\frac{1}{m}\sum\limits_{i = 1}^{m}(h_\theta(x^{(i)}) - y^{(i)})x_j^{(i)}$

- $\alpha \Rightarrow$ Learning Rate
- Updates to all $\theta_j$ must be simultaneous
- Tricks & Tips:
  - Feature Scaling: Get the features in the $-1 \le x_{(i)} \le +1$ range
  - Mean Normalization: Get the features to have approx. 0 mean
  - Debug GD convergence by plotting $J(\theta)$ vs #iter
  - Choose $\alpha$: Too small, GD converges slowly; too large, GD may not converge
  - Polynomial & Non-linear Regressions

###### Advanced Optimization Algorithms

- Examples: 
  - Conjugate gradient
  - BFGS
  - L-BFGS
- Pros:
  - Not required to pick $\alpha$
  - Often faster than GD
- Cons:
  - More complex, harder to debug

###### Regularization

- Possible issues with models:
  - Underfitting/Bias - model doesn't fit the training data well, exhibits bias despite data to contrary
  - Overfitting/Variance - model fits the data very well but fails to predict new examples
- Regularization - 'smoothen out' the output of our hypothesis function to reduce overfitting
> Normal Equation (R): $J(\theta) = \big(X^TX + \lambda\mathbb{L})^{-1}X^Ty$
> Cost function (R): $J(\theta) = -\frac{1}{m}\sum\limits_{i = 1}^{m}\big[y^{(i)}.log(h_\theta(x^{(i)})) + (1-y^{(i)}).log(1 - h_\theta(x^{(i)}))\big] + \frac{\lambda}{2m}\sum\limits_{j = 1}^{n}\theta^2_j$
> Cost function (C): $J(\theta) = \frac{1}{2m}\bigg[\sum\limits_{i = 1}^{m}(h_\theta(x^{(i)}) - y^{(i)})^2 + \lambda\sum\limits_{j = 1}^{n}\theta^2_j\bigg]$
> Gradient Descent (R & C): $\theta_j := \theta_j(1 - \alpha\frac{\lambda}{m}) - \alpha\frac{1}{m}\sum\limits_{i = 1}^{m}(h_\theta(x^{(i)}) - y^{(i)})x_j^{(i)}$
