function centroids = computeCentroids(X, idx, K)

[m n] = size(X);

% k ��� �����
% centroids ������ ����� ��� ������ �� k ����������� =2
centroids = zeros(K, n);

% �� ��� �� ����
for i = 1:K
    count = 0;
    % �� ��� �� ����
    for j = 1:m
        % ��� ���� ������ ����� ����
        if idx(j) == i
            % count ��� ����� ���� ������ ����
            count = count + 1;
            % centroids �� ���� ����� ���� ������ ���� ��������� 
            centroids(i,:) = centroids(i,:) + X(j,:);
        end
    end
    % ��� ��� ������� ������� ����� ������ ��� ������ ���� ������ ������
    centroids(i,:) = centroids(i,:) / count;
end

end

