#### Week 6: Machine Learning System Design

>
> Requires [Markdown Preview Enhanced](https://github.com/shd101wyy/markdown-preview-enhanced)
>

###### Recommended Approach

1. Implement a simple algorithm quickly, test on cross-validation data.
2. Plot curves to decide what to do next:
  a. Bias vs Variance: Cost vs Model complexity
  b. Bias vs Variance - Regularization: Cost vs $\lambda$
  c. Bias vs Variance - Learning Curve: Cost vs Training set size
3. Error analysis:
  a. Manually examine errors in cross-validation set to spot any systematic trends 
  b. Assign a number to the algorithm's performance to reason about improvements/regressions.
  c. Precision/Recall/Trade-off vs Accuracy for Skewed and normal data sets

###### Data split

| Data set | Size | Purpose |
| - | - | - |
| Training | 60% | Train the model |
| Cross Validation | 20% | Estimate how well model is trained + tune model properties |
| Training | 20% | Final performance assessment of model, must not tune model any further |

###### Deciding What to Do Next

| What next | Helps what? |
| - | - |
| Getting more training examples | High Variance |
| Try with smaller sets of features | High Variance |
| Adding features | High Bias |
| Adding polynomial features | High Bias | 
| Decreasing $\lambda$ | High Bias | 
| Increasing $\lambda$ | High Variance | 

###### Rationale for more data

Given $X \in \mathbb{R}^{n+1}$ has enough features to predict $y$ AND a human expert in the domain can do the prediction AND we have a low-Bias model - it makes sense to look for more data.

