### Data

- `ex1data1.txt`

```
6.1101,17.592
5.5277,9.1302
8.5186,13.662
7.0032,11.854
...
```

### Scala

- `Main.scala`

```scala
import io.Source
import math.pow

object Main {
  
  // h() = theta(0) + theta(1) * x: hypothesis 
  def h(x: Double, theta: Array[Double]) = theta(0) + theta(1) * x

  // x: feature, size of m
  // y: label, size of n
  // theta: parameter, size of 2 for 1 and x
  def computeCost(X: Array[Double], Y: Array[Double], theta: Array[Double]) = {
    val m = X.length
    val sum = for (i <- 0 until m) yield pow(h(X(i), theta) - Y(i), 2)
    sum.reduce(_ + _) / (2 * m)
  }
  
  def gradientDescent(X: Array[Double], Y: Array[Double], theta: Array[Double], alpha: Double) = {
    val m = X.length
    val n = theta.length
    val newTheta = new Array[Double](n)
    for (j <- 0 until n) newTheta(j) = {
      val sum = for (i <- 0 until m) yield (h(X(i), theta) - Y(i))*(if (j == 0) 1 else X(i))
      theta(j) - alpha * sum.reduce(_ + _) / m 
    }
    newTheta
  }
  
  def main(args: Array[String]) {
    val source = Source.fromFile("ex1data1.txt")
    val lines = source.getLines.toArray
    val X = lines.map(x => x.split(",")(0).toDouble)
    val Y = lines.map(x => x.split(",")(1).toDouble)
    var theta = Array(0.0, 0.0)
    val alpha = 0.01
    
    println("initial cost: " + computeCost(X, Y, theta))
    
    for (i <- 1 to 1500) {
      theta = gradientDescent(X, Y, theta, alpha)
    }
    println("theta: " + theta.mkString(" "))
    
    val predict1 = h(3.5, theta)
    println("For population = 35,000, we predict a profit of " + predict1*10000);
    
    val predict2 = h(7, theta)
    println("For population = 70,000, we predict a profit of " + predict2*10000);    
  }
}
```

### Matlab/Octave

- `computeCost.m`

```matlab
function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

J = sum((X * theta - y) .^ 2) / (2 * size(X, 1)); % Compute cost for X and y with theta

% =========================================================================

end
```

- `gradientDescent.m`

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
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

	theta = theta - alpha / m * ((X * theta - y)' * X)';

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
```

- `main.m`

```matlab
%% ======================= Main ==========================

data = load('ex1data1.txt');
X = data(:, 1); y = data(:, 2);
m = length(y); % number of training examples

X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
theta = zeros(2, 1); % initialize fitting parameters

% Some gradient descent settings
iterations = 1500;
alpha = 0.01;

% compute and display initial cost
computeCost(X, y, theta)

% run gradient descent
theta = gradientDescent(X, y, theta, alpha, iterations);

% print theta to screen
fprintf('Theta found by gradient descent: ');
fprintf('%f %f \n', theta(1), theta(2));

% Predict values for population sizes of 35,000 and 70,000
predict1 = [1, 3.5] *theta;
fprintf('For population = 35,000, we predict a profit of %f\n',...
    predict1*10000);
predict2 = [1, 7] * theta;
fprintf('For population = 70,000, we predict a profit of %f\n',...
    predict2*10000);
```
