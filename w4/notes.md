#### Week 4: Neural Networks: Representation

>
> Requires [Markdown Preview Enhanced](https://github.com/shd101wyy/markdown-preview-enhanced)
>

###### Model Representation

| Term | Meaning |
| - | - |
| $a_i^{(j)}$ | Activation of unit i in layer j |
| $\Theta^{(j)}$ | Weights controlling layer function mapping $j \rightarrow$ layer $j + 1$ |
| $\Theta^{(j)} \in \mathbb{R}^{(s_{j+1})*(s_j+1)}$ | Dimension of weights matrix if network has $s_j$ units in layer $j$ |
| Layer 1 | Input layer |
| $x_0 = a_0^{(1)}$, $a_0^{(j)}$| Bias units set to 1 |

###### Forward propagation

- To compute $a^{(j+1)}$
  1. Set $a_0^{(j)} = 1$
  2. $a^{(j+1)} = g(\Theta^{(j)}a^{(j)})$
- Input $x = a^{(1)}$
