function [J, grad] = lrCostFunction(theta, X, y, lambda)

m = length(y); % number of training examples

h = sigmoid(X*theta);
J = -sum (y.*log(h) + (1-y).*log(1-h))/m;
temp = theta;
temp(1) = 0;
temp = (lambda/(2*m))*temp.^2;
s = sum(temp);
J = J + s;

grad = X' * (h-y)/m;
temp = theta;
temp(1) = 0;
temp = (lambda/m)*temp;
grad = grad + temp;

% =============================================================

grad = grad(:);

end
