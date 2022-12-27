function [ t ] = test( centroids,previous_centroids)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

for i=1:length(centroids)
    for j=1:2
       if centroids(i,j)==previous_centroids(i,j) 
           t=true;
       else
           t=false;
           break;
       end
    end
    
end
end

