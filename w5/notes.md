#### Week 5: Neural Networks: Back propagation and other pieces

>
> Requires [Markdown Preview Enhanced](https://github.com/shd101wyy/markdown-preview-enhanced)
>

###### Cost Function
- $J(\Theta) = -\frac{1}{m}\sum\limits_{xj}[y_jln(a^L_j) + (1 - y_j)ln(1 - a^L_j)] + \frac{\lambda}{2m}\sum\limits_{\theta}\theta^2$
- Generalization of Regularized Logistic Regression cost function

###### Backpropagation  

- Is a way to track small changes in w/b as they propagate through the network and affect the cost.
- 4 Core Equations
  | Equation | Meaning |
  | - | - |
  | (1) $\delta^L = \nabla_aC\odot\sigma^{'}(z^L)$ | Error measure in $L_L$ |
  | (2) $\delta^l = ((w^{l+1})^T\delta^{l+1}) \odot\sigma^{'}(z^l)$ | Error measure in $L_l$ in terms of error measure in $L_{l+1}$ |
  | (3) $\frac{\partial C}{\partial b} = \delta$ | Rate of change of $C$ w.r.t. any bias |
  | (4) $\frac{\partial C}{\partial w} = a_{in}\delta_{out}$ | Rate of change of $C$ w.r.t. any weight |
- Algorithm
  1. Input: Compute $a^{(1)}$
  2. Feedforward: Compute $z^{l}$ and $a^{l}$ $\forall l>1$
  3. Output error: Compute $\delta^L$
  4. Backpropagate error: Compute $\delta^l$ $\forall l<L$
  5. Output: Compute $\frac{\partial}{\partial\Theta^{(l)}_{i,j}}J(\Theta)$

###### Notes
- **Universality**: neural networks with a single hidden layer can be used to approximate any continuous function to any desired precision 
- Gradient checking is a trivial, high accuracy, compute heavy way to double check backpropagation results
- Symmetry breaking with random initialization

