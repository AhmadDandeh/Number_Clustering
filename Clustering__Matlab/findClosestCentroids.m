function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids


% Set K
% ÚÏÏ ÇáÚŞÏ
K = size(centroids, 1);

% You need to return the following variables correctly.
% ãÕİæİÉ ÕİÑíÉ ÚÏÏ ÇÓØÑåÇ åæ ÚÏÏ ÇáäŞÇØ
idx = zeros(size(X,1), 1);

% length(X) ÊÚíÏ ÚÏÏ ÇáäŞÇØ
% ãä ÇÌá ßá äŞØÉ ãä äŞÇØ ÇáÏÇÊÇ
for i = 1:length(X)
    minDist = Inf;
    % ãä ÇÌá ßá ÚŞÏÉ ãä ÇáÚŞÏ
    for j = 1:K
        % äÌÏ ãÑÈÚ ÇáÈÚÏ Èíä ßá äŞØÉ æÇáÚŞÏÉ
        dist = norm(X(i,:) - centroids(j,:)) ^ 2;
        
        if dist < minDist
            minDist = dist;
            idx(i) = j;
        end
        % İí äåÇíÉ ÇáÍáŞÉ íÚíÏ áäÇ ÇáäŞØÉ Çáì Çí Õİ ÊÊÈÚ
    end
    % İí äåÇíÉ ÇáÍáŞÉ íÕÈÍ áÏíäÇ ÔÚÇÚ İíå ÌãíÚ ÇáäŞÇØ æÇáÕİæİ ÇáÊÇÈÚÉ áåÇ
end

end

