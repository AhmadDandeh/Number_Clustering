%% Machine Learning
%  K-Means Clustering

%% Initialization

clear ; close all; clc

% the number of the points
X=8*rand(300,2);

% the number of the centroids
K = 3;

% the initial value of the centroids

% chose the centroid's value
%initial_centroids = [];

% get random centroids value
initial_centroids=8*rand(K,2);

%% ================= Part 1:  K-Means Clustering with iterations ======================

max_iters = 10;

% the progress of K-Means
[centroids, idx] = runkMeansFor(X, initial_centroids, max_iters, true);
fprintf('\nK-Means Done.\n\n');

fprintf('Program paused. Press enter to continue.\n');
pause;

%% =================== Part 2: K-Means Clustering without iterations ======================

% the progress of K-Means
[centroids, idx] = runkMeansWhile(X, initial_centroids, true);

fprintf('\nK-Means Done.\n\n');
fprintf('Program paused. Press enter to continue.\n');
pause;
