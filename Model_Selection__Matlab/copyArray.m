function [ X1 ] = copyArray( X,a,b,X1 )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

for i=a:b
    [n m]=size(X1);
    for j=1:400
       X1(n+1,j)=X(i,j); 
end

end

