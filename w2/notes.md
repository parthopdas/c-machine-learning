#### Week 2: Linear Regression with Multiple Variables

>
> Requires [Markdown Preview Enhanced](https://github.com/shd101wyy/markdown-preview-enhanced)
>

###### Multivariate: Model representation

| Term | Meaning |
| - | - |
| $n$ | # of features |
| $m$ | # of training examples |
| $y$ | input variable/features |
| $x^{(i)}_j$ | value of feature $j$ in $i^{th}$ training example |
| $(x^{(i)}, y^{(i)})$ | $i^{th}$ training example |

###### Multivariate: Cost function

| Term | Meaning |
| - | - |
| $h_\theta(x) = \theta^Tx = \theta_0 + \theta_1x_1 + \theta_2x_2 ... + \theta_nx_n$ | Hypothesis |
| $\theta \in \mathbb{R}^{n+1} = \theta_0, \theta_1..., \theta_n$ | Parameters |
| $J(\theta) = \frac{1}{2m}\sum\limits_{i = 1}^{m}(h_\theta(x^{(i)}) - y^{(i)})^2$ | Cost Function |
| $\min\limits_{\theta}J(\theta)$ | Goal |

###### Multivariate: Gradient Descent

> $\theta_j := \theta_j - \alpha\frac{\partial}{\partial\theta_j}J(\theta) = \theta_j - \alpha\frac{1}{m}\sum\limits_{i = 1}^{m}(h_\theta(x^{(i)}) - y^{(i)})x_j^{(i)}$

- $\alpha \Rightarrow$ Learning Rate
- Updates to all $\theta_j$ must be simultaneous
- Tricks & Tips:
  - Feature Scaling: Get the features in the $-1 \le x_{(i)} \le +1$ range
  - Mean Normalization: Get the features to have approx. 0 mean
  - Debug GD convergence by plotting $J(\theta)$ vs #iter
  - Choose $\alpha$: Too small, GD converges slowly; too large, GD may not converge
  - Polynomial Regression
