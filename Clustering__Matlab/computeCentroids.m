function centroids = computeCentroids(X, idx, K)

[m n] = size(X);

% k ÚÏÏ ÇáÚŞÏ
% centroids ãÕİæİÉ ÕİÑíÉ ÚÏÏ ÇÓØÑåÇ åæ k æÚÏÏÇÚãÏÊåÇ =2
centroids = zeros(K, n);

% ãä ÇÌá ßá ÚŞÏÉ
for i = 1:K
    count = 0;
    % ãä ÇÌá ßá äŞØÉ
    for j = 1:m
        % ÇĞÇ ßÇäÊ ÇáÚŞÏÉ ÊäÊãí ááÕİ
        if idx(j) == i
            % count ÚÏÏ ÇáÚŞÏ Çááí ÈÊäÊãí ááÕİ
            count = count + 1;
            % centroids Úã äÌãÚ ÇáäŞØ Çááí ÈÊäÊãí ááÕİ ÈÇáãÍæÑíä 
            centroids(i,:) = centroids(i,:) + X(j,:);
        end
    end
    % ÕÇÑ ÚäÇ ÇáäÚŞÏÉ ÈÇáãßÇä ÇáæÓØ ÇáÌÏíÏ Èíä ÇáäŞÇØ Çááí ÈÊäÊãí áåÇáÕİ
    centroids(i,:) = centroids(i,:) / count;
end

end

