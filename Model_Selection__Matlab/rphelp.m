function [ rp1 ] = rphelp( rp )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[n m]=size(rp);
rp1=[];
for i=1:m 
    if rp(1,i)<51
        rp1(1,i)=rp(1,i)+50;
    elseif rp(1,i)<101
        rp1(1,i)=rp(1,i)+50+(450*1);
    elseif rp(1,i)<151
        rp1(1,i)=rp(1,i)+50+(450*2);
    elseif rp(1,i)<201
        rp1(1,i)=rp(1,i)+50+(450*3);
    elseif rp(1,i)<251
        rp1(1,i)=rp(1,i)+50+(450*4);
    elseif rp(1,i)<301
        rp1(1,i)=rp(1,i)+50+(450*5);
    elseif rp(1,i)<351
        rp1(1,i)=rp(1,i)+50+(450*6);
    elseif rp(1,i)<401
        rp1(1,i)=rp(1,i)+50+(450*7);
    elseif rp(1,i)<451
        rp1(1,i)=rp(1,i)+50+(450*8);
    else
        rp1(1,i)=rp(1,i)+50+(450*9);
    end
    fprintf('\n Prediction: %d (digit %d)\n',rp(i),rp1(i));
    
    
end

end

