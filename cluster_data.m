N=500;

K1=mvnrnd([-1.5 0],[1 1.5;1.5 3],N);
K2=mvnrnd([1.5 0],[1 1.5;1.5 3],N);
X1=[K1; K2];

K1=mvnrnd([-1.5 0],[1 1.5;1.5 3],N);
K2=mvnrnd([1.5 0],[1 1.5;1.5 3],N);
X2=[K1; K2];

% plot(K1(:,1),K1(:,2),'x',K2(:,1),K2(:,2),'o')
[idx1,C1,~,D1]=kmeans(X1,5);
[idx2,C2,~,D2]=kmeans(X2,5);

figure;
plot(X1(idx1==1,1),X1(idx1==1,2),'r.','MarkerSize',12)
hold on
plot(X1(idx1==2,1),X1(idx1==2,2),'b.','MarkerSize',12)

plot(X1(idx1==3,1),X1(idx1==3,2),'g.','MarkerSize',12)

plot(C1(:,1),C1(:,2),'kx',...
     'MarkerSize',15,'LineWidth',3)
legend('Cluster 1','Cluster 2','Cluster 3','Centroids',...
       'Location','NW')
title 'Cluster Assignments and Centroids'
hold off