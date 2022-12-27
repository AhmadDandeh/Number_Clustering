function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids


% Set K
% ��� �����
K = size(centroids, 1);

% You need to return the following variables correctly.
% ������ ����� ��� ������ �� ��� ������
idx = zeros(size(X,1), 1);

% length(X) ���� ��� ������
% �� ��� �� ���� �� ���� ������
for i = 1:length(X)
    minDist = Inf;
    % �� ��� �� ���� �� �����
    for j = 1:K
        % ��� ���� ����� ��� �� ���� �������
        dist = norm(X(i,:) - centroids(j,:)) ^ 2;
        
        if dist < minDist
            minDist = dist;
            idx(i) = j;
        end
        % �� ����� ������ ���� ��� ������ ��� �� �� ����
    end
    % �� ����� ������ ���� ����� ���� ��� ���� ������ ������� ������� ���
end

end

