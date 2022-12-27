function p = predictOneVsAll(all_theta, X)

m = size(X, 1);
num_labels = size(all_theta, 1);

% Add ones to the X data matrix
X = [ones(m, 1) X];

pred = sigmoid(X*all_theta');
[dummy p] = max(pred,[],2);

end
