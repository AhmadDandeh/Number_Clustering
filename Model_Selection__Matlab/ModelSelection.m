%% Machine Learning

%% Initialization

clear ; close all; clc

input_layer_size  = 400;  % 20x20 Input Images of Digits
num_labels = 10;          % 10 labels, from 1 to 10   
                          % (note that we have mapped "0" to label 10)
                          
%% =========== Part 1: Loading and Visualizing Data =============

% Load Training Data
fprintf('Loading and Visualizing Data ...\n')
load('ex5data.mat'); % training data stored in arrays X, y
m = size(X, 1);

rand_indices = randperm(m);

sel = X(rand_indices(1:100), :);

displayData(sel);

fprintf('Program paused. Press enter to continue.\n');
pause;

%% ============ Part 2: Vectorize Logistic Regression ============

fprintf('\nTraining One-vs-All Logistic Regression...\n')
X1=[];
X1=copyArray( X,1,50,X1);
X1=copyArray( X,101,550,X1);
X1=copyArray( X,601,1050,X1);
X1=copyArray( X,1101,1550,X1);
X1=copyArray( X,1601,2050,X1);
X1=copyArray( X,2101,2550,X1);
X1=copyArray( X,2601,3050,X1);
X1=copyArray( X,3101,3550,X1);
X1=copyArray( X,3601,4050,X1);
X1=copyArray( X,4101,4550,X1);
X1=copyArray( X,4601,5000,X1);

y1=[y(1:50) ;y(101:550) ;y(601:1050);y(1101:1550);y(1601:2050);y(2101:2550);y(2601:3050);y(3101:3550);y(3601:4050);y(4101:4550);y(4601:5000)];
lambda = 3.8;
[all_theta] = oneVsAll(X1, y1, num_labels, lambda);

pred = predictOneVsAll(all_theta, X1);

fprintf('\nTraining Set Accuracy of the training: %f\n', mean(double(pred == y1)) * 100);

fprintf('Program paused. Press enter to continue.\n');
pause;

%% ================ Part 3: Predict for One-Vs-All ====================
%  After ...
 
%X2=[X(451:500,400) ;X(951:1000,400);X(1451:1500,400);X(1951:2000,400);X(2451:2500,400);X(2951:3000,400);X(3451:3500,400);X(3951:4000,400);X(4451:4500,400);X(4951:5000,400)];
X2=[];

X2=copyArray(X,51,100,X2);
X2=copyArray(X,551,600,X2);
X2=copyArray(X,1051,1100,X2);
X2=copyArray(X,1551,1600,X2);
X2=copyArray(X,2051,2100,X2);
X2=copyArray(X,2551,2600,X2);
X2=copyArray(X,3051,3100,X2);
X2=copyArray(X,3551,3600,X2);
X2=copyArray(X,4051,4100,X2);
X2=copyArray(X,4551,4600,X2);

y2=[y(51:100) ;y(551:600);y(1051:1100);y(1551:1600);y(2051:2100);y(2551:2600);y(3051:3100);y(3551:3600);y(4051:4100);y(4551:4600)];

pred = predictOneVsAll(all_theta, X2);

fprintf('\nTraining Set Accuracy of the test: %f\n', mean(double(pred == y2)) * 100);

%% ================================= part 4: testing group =================================

m=size(X2);

%  Randomly permute examples
rp = randperm(m);
rp1=rphelp(rp);

for i = 1:5
    % Display 
    fprintf('\nDisplaying Example Image\n');
    displayData(X(rp1(i), :));

    pred = predictOneVsAll(all_theta, X(rp1(i),:));
    fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
    
    fprintf('Program paused. Press enter to continue.\n');
    pause;
end

%% ============================== part 5: test a image ========================================

I=imread('0.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('1.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('2.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('3.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('4.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('5.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('6.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('7.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('8.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('9.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('10.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('11.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('12.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('13.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('14.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('15.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('16.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('17.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('18.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('19.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('20.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('21.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('22.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('23.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('24.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('25.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('26.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('27.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('28.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('29.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('30.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('31.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('32.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('33.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('34.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('35.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('36.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('37.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('38.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('39.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('40.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('41.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('42.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('43.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('44.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('45.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('46.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('47.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('48.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;

I=imread('49.png');
I1=double(rgb2gray(I))/255;
I=I1(:)';
displayData(I);
pred = predictOneVsAll(all_theta,I);
fprintf('\n Prediction: %d (digit %d)\n', pred, mod(pred, 10));
pause;
