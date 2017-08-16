## [Coursera: Machine Learning](https://www.coursera.org/learn/machine-learning)

#### Notes: 
- Regression vs Classification: 

  || Regression | Classification |
  | - | - | - |
  | Predicted values | Continuous | Discrete | 
  | Intuition | Predictions are points on a hyper-plane. | Predictions are points in hyper-volumes divided by a hyper-plane | 
  | Linear vs Polynomial | Hyper-plane vs Hyper-surface | Hyper-volumes on 'either side'  of Hyper-plane vs Hyper-surface | 
  | E.g. for $n = 1$, output is | Straight line in $\mathbb{R}^2$ | Areas on either side  of a straight line in $\mathbb{R}^2$  |
  | Linear vs Polynomial | Hyper-plane vs Curved Hyper-surface in $\mathbb{R}^{n+1}$ | Hyper-volumes on 'either side' of Hyper-plane vs Curved Hyper-surface in in $\mathbb {R} ^{n+1}$ | 

- Octave cheatsheet:
  
  | Command  | Action  |
  | - | - |
  | pinv/inv | matrix (psuedo)inverse |
  | format long/short | Precision of double display |
  | sprintf/printf/disp | Format strings/Display value |
  | 1.0:0.1:2.9 | Range |
  | zeros/ones/rand/eye(r, c) | Commonly used matrices |
  | size, length | Dimensions of matrix |
  | who/whos | List objects |
  | save/load | serialization of data |
  | A(r, c)/A(2, :)/A([1 4], :) | read/write cells/rows/columns |
  | [A, [...]] | append row/columns |
  | A(:) | unroll  |
  | [A B]/[A; B] | Concat column/row wise |
  | */.* | matrix multiply/matrix element-wise multiply |
  | [val ind] = max/max | Value/index of max |
  | elementwise compare op | |
  | find(compare op) | |
  | sum/prod/floor/ceil | |
  | flip/fliplr/flipup | Flip stuff |
  | plot | |
  | hold on/off | Reuse/Create new figure |
  | clear | |
  | close | |
  | print -dpng | print the plot in a bmp |
  | figure | select figure |
  | subplot | picture - in - picture |
  | axis | change axis |
  | imagesc | visualize matrix as grid of colors |
  | colorbar, colormap | |
  | , | chain commands |
  | ; | dont print command output |
  | timeit/tick-tock | Time steps |
