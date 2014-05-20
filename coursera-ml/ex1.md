Programming Exercise 1: Linear Regression
=========================================

### 1. Simple octave function

#### create a 5 x 5 identity matrix

```matlab
A = eye(5);
```

### 2. Linear regression with one variable

In this part of this exercise, you will implement linear regression with one variable to predict profits for a food truck.

The file `ex1data1.txt` contains the dataset for our linear regression problem. The first column is the population of a city and the second column is the profit of a food truck in that city. A negative value for profit indicates a loss. It looks like:

```
6.1101,17.592
5.5277,9.1302
8.5186,13.662
7.0032,11.854
```

### 2.1 Plotting the Data

#### load the dataset from data file into the variables `X` and `y`

```matlab
data = load('ex1data1.txt');	% read comma separated data
X = data(:, 1); y = data(:, 2);
m = length(y);					% number of training examples
```

#### create a scatter plot of the data

```matlab
plot(x, y, 'rx', 'MarkerSize', 10);			% Plot the data
ylabel('Profit in $10,000s');				% Set the y-axis label
xlabel('Population of City in 10,000s');	% Set the x-axis label
```

- `rx`: change the marker to red `x`

### 2.2 Gradient Descent

The objective of linear regression is to minimize the cost function: $$ J(\theta) = \frac{1}{2m}\sum_{i=1}^{m}(h_{\theta}(x^{(i)})-y^{(i)})^2 $$ where the hypothesis is given by the linear model $$ h_{\theta}(x)=\theta^{T}x=\theta_{0}+\theta_{1}x $$

The parameters of your model are the $\theta_{j}$ values. These are the values you will adjust to minimize cost $J(\theta)$. One way to do this is to use the batch gradient descent algorithm. In batch gradient descent, each iteration performs the update simultaneously for all j $$ \theta_{j}:=\theta_{j}-\alpha\frac{1}{m}\sum_{i=1}^{m}(h_{\theta}(x^{(i)})-y^{(i)})x_{j}^{(i)} $$

With each step of gradient descent, your parameters $\theta_j$ come closer to the optimal values that will achieve the lowest cost $J(\theta)$.

> We store each example as a row in the the `X` matrix in Octave. To take into account the intercept term ($\theta_{0}$), we add an additional first column to `X` and set it to all ones. This allows us to treat $\theta_{0}$ as simply another "feature".

#### initialize parameters

Add another dimension to accommodate the $\theta_{0}$ intercept term. Set initial parameters to 0 and learning rate $\alpha$ to 0.01.

```matlab
X = [ones(m, 1), data(:,1)];	% Add a column of ones to x
theta = zeros(2, 1); 			% initialize fitting parameters
iterations = 1500;
alpha = 0.01;
```

#### compute the cost $J(\theta)$

```matlab
J = sum((X * theta - y) .^ 2) / (2 * size(X, 1));	% Compute cost for X and y with theta
```

### 2.2.4 Gradient descent

The cost $J(\theta)$ is parameterized by the vector $\theta$, not $X$ and $y$. That is, we minimize the value of $J(\theta)$ by changing the values of the vector $\theta$, not by changing $X$ or $y$.

```matlab
function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================

	theta = theta - alpha / m * ((X * theta - y)' * X)';

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
```

### Visualizing $J(\theta)$

```matlab
% initialize J_vals to a matrix of 0's
J_vals = zeros(length(theta0_vals), length(theta1_vals));

% Fill out J_vals
for i = 1:length(theta0_vals)
    for j = 1:length(theta1_vals)
	  t = [theta0_vals(i); theta1_vals(j)];    
	  J_vals(i,j) = computeCost(X, y, t);
    end
end
```

