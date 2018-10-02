function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

size_x = size(z)
for i = 1:size_x(1,1)
    for j = 1:size_x(1,2),
        z(i,j) = 1 / (1 + e^(-z(i,j)));
    endfor
endfor
g = z;






% =============================================================

end
