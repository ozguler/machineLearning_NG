function p = predict(theta, X)
%PREDICT Predict whether the label is 0 or 1 using learned logistic
%regression parameters theta
%   p = PREDICT(theta, X) computes the predictions for X using a
%   threshold at 0.5 (i.e., if sigmoid(theta'*x) >= 0.5, predict 1)

m = size(X, 1); % Number of training examples

% You need to return the following variables correctly
p = zeros(m, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned logistic regression parameters.
%               You should set p to a vector of 0's and 1's
%

theta

data = load('ex2data1.txt');
y = data(:, 3);
count = 0
for i = 1:size(X)(1,1)
    p_i = sigmoid(theta'*X(i,:)');

    if (p_i>=0.5)
        p(i) = 1;
    else
        p(i) = 0;
    endif

%    if (p_i == y(i))
%        count = count + 1
%        p(i)
%    endif
endfor

fprintf('Count is %d',count)
%p = count / size(X)(1,1)
% =========================================================================


end
