N=500;
K1=mvnrnd([-1.5 0],[1 1.5;1.5 3],N);
K2=mvnrnd([1.5 0],[1 1.5;1.5 3],N);
X=[K1; K2];

% plot(K1(:,1),K1(:,2),'x',K2(:,1),K2(:,2),'o')
[idx,C]=kmeans(X,3);

figure;
plot(X(idx==1,1),X(idx==1,2),'r.','MarkerSize',12)
hold on
plot(X(idx==2,1),X(idx==2,2),'b.','MarkerSize',12)

plot(X(idx==3,1),X(idx==3,2),'g.','MarkerSize',12)

plot(C(:,1),C(:,2),'kx',...
     'MarkerSize',15,'LineWidth',3)
legend('Cluster 1','Cluster 2','Cluster 3','Centroids',...
       'Location','NW')
title 'Cluster Assignments and Centroids'
hold off