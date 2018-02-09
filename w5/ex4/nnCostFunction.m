function [J grad] = nnCostFunction(nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)
%NNCOSTFUNCTION Implements the neural network cost function for a two layer
%neural network which performs classification
%   [J grad] = NNCOSTFUNCTON(nn_params, hidden_layer_size, num_labels, ...
%   X, y, lambda) computes the cost and gradient of the neural network. The
%   parameters for the neural network are "unrolled" into the vector
%   nn_params and need to be converted back into the weight matrices. 
% 
%   The returned parameter grad should be a "unrolled" vector of the
%   partial derivatives of the neural network.
%

% Reshape nn_params back into the parameters Theta1 and Theta2, the weight matrices
% for our 2 layer neural network
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));

% Setup some useful variables
m = size(X, 1);
         
% You need to return the following variables correctly 
J = 0;
Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));

% ====================== YOUR CODE HERE ======================
% Instructions: You should complete the code by working through the
%               following parts.
%
% Part 1: Feedforward the neural network and return the cost in the
%         variable J. After implementing Part 1, you can verify that your
%         cost function computation is correct by verifying the cost
%         computed in ex4.m
%
% Part 2: Implement the backpropagation algorithm to compute the gradients
%         Theta1_grad and Theta2_grad. You should return the partial derivatives of
%         the cost function with respect to Theta1 and Theta2 in Theta1_grad and
%         Theta2_grad, respectively. After implementing Part 2, you can check
%         that your implementation is correct by running checkNNGradients
%
%         Note: The vector y passed into the function is a vector of labels
%               containing values from 1..K. You need to map this vector into a 
%               binary vector of 1's and 0's to be used with the neural network
%               cost function.
%
%         Hint: We recommend implementing backpropagation using a for-loop
%               over the training examples if you are implementing it for the 
%               first time.
%
% Part 3: Implement regularization with the cost function and gradients.
%
%         Hint: You can implement this around the code for
%               backpropagation. That is, you can compute the gradients for
%               the regularization separately and then add them to Theta1_grad
%               and Theta2_grad from Part 2.
%

K = num_labels;

% Feedforward
a1 = X;
a1 = [ones(size(a1, 1), 1) a1];

z2 = a1 * Theta1';
a2 = sigmoid(z2);
a2 = [ones(size(a2, 1), 1) a2];

z3 = a2 * Theta2';
a3 = sigmoid(z3);

% Cost function
function yVec = makeYVec(y)
    yVec = zeros(1,10);
    yVec(y) = 1;
end
y = cell2mat(arrayfun(@(x) makeYVec(x), y, 'UniformOutput', false));
hTheta = a3;

function val = regTheta(theta)
    thetaNoBias = theta(:, 2:end);
    val = sum(sum(thetaNoBias .* thetaNoBias));
end 

J = ((-1 / m) .* sum(sum((y(:, [1:K]) .* log(hTheta) .+ (1 .- y(:, [1:K])) .* log(1 .- hTheta)))));
JRegDelta = (lambda/(2 * m) .* (regTheta(Theta1) + regTheta(Theta2)));
J = J .+ JRegDelta;

% Backpropagation %

% Step 1: Feedforward 
% - done above

% Step 2: Set delta3
d3 = a3 - y(:, 1:K);  

% Step 3: Set delta2
d2 = (d3 * Theta2(:, 2:end)) .* sigmoidGradient(z2);

% Step 4: Populate graidient accumulators
D2 = d3' * a2;
D1 = d2' * a1;

% Step 5: Unregularized gradients
L1 = eye(size(Theta1, 2));
L1(1, 1) = 0;
Theta1_grad = (1/m) .* D1 + ((lambda/m) * L1 * Theta1')';

L2 = eye(size(Theta2, 2));
L2(1, 1) = 0;
Theta2_grad = (1/m) .* D2 + ((lambda/m) * L2 * Theta2')';

% -------------------------------------------------------------

% =========================================================================

% Unroll gradients
grad = [Theta1_grad(:) ; Theta2_grad(:)];


end
