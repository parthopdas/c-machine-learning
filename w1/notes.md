#### Week 1: Linear Regression with One Variable

>
> Requires [Markdown Preview Enhanced](https://github.com/shd101wyy/markdown-preview-enhanced)
>

###### Model representation

| Term | Meaning |
| - | - |
| $m$ | # of training examples |
| $y$ | input variable/features |
| $(x, y)$ | output/target variable |
| $(x^{(i)}, y^{(i)})$ | $i^{th}$ training example |

###### Cost function

| Term | Meaning |
| - | - |
| $h_\theta(x) = \theta_0 + \theta_1x$ | Hypothesis |
| $\theta_0, \theta_1$ | Parameters |
| $J(\theta_0, \theta_1) = \frac{1}{2m}\sum\limits_{i = 1}^{m}(h_\theta(x^{(i)}) - y^{(i)})^2$ | Cost Function |
| $\min\limits_{\theta_0, \theta_1}J(\theta_0, \theta_1)$ | Goal |

###### Gradient Descent

> $\theta_j := \theta_j - \alpha\frac{\partial}{\partial\theta_j}J(\theta_0, \theta_1)$
- $\alpha \Rightarrow$ Learning Rate
- Updates to all $\theta_j$ must be simultaneous
