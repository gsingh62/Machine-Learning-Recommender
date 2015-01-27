function [ U, V ] = myRecommender( rateMatrix, lowRank )
    % Please type your name here:
    name = 'Gayatri Singh';
    disp(name); % Do not delete this line.

    % Parameters
    maxIter = 1000; % Choose your own.
    learningRate = 0.00035; % Choose your own.
    regularizer = .00012; % Choose your own.
    
    % Random initialization:
    [n1, n2] = size(rateMatrix);
    U = rand(n1, lowRank) / lowRank;
    V = rand(n2, lowRank) / lowRank;

    % Gradient Descent:
    
    % IMPLEMENT YOUR CODE HERE.
    
    for iter=1:maxIter
        U = U + 2 * learningRate * (rateMatrix - (U * V').*(rateMatrix > 0)) * V - 2 * regularizer * learningRate * U;
        V = V + 2 * learningRate * (rateMatrix - (U * V').*(rateMatrix > 0))' * U - 2 * regularizer * learningRate * V;
    end
end