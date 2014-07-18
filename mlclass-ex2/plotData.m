function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%


mask = logical(y);
X_pos = [X(:,1)(mask), X(:,2)(mask)];
X_neg = setdiff(X, X_pos, "rows");

plot(X_pos(:,1),X_pos(:,2),'@k+', X_neg(:,1),X_neg(:,2),'@ro');








% =========================================================================



hold off;

end
