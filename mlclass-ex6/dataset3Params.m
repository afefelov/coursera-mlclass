function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and
%   sigma. You should complete this function to return the optimal C and
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C_c = 0.01;
sigma_c = 0.01;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example,
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using
%        mean(double(predictions ~= yval))

x1 = [1 2 1];
x2 = [0 4 -1];
error = -1;
len = 4;
multy = 10;
errors = zeros(len, len);
for i = 1:len
	C = C_c*multy^i
	for j = 1:len
		sigma = sigma_c*multy^j
		model = svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
		predictions = svmPredict(model, Xval);
		errors(i, j) = mean(double(predictions ~= yval));
	endfor
endfor


[row,col] = find(errors==min(min(errors)))
C = C_c*multy^row
sigma = sigma_c*multy^col







% =========================================================================

end
