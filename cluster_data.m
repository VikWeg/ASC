N=500;

K1=mvnrnd([-2 0],0.5*[1 0;0 1],N);
K2=mvnrnd([2 0],0.5*[1 0;0 1],N);
K3=mvnrnd([0 2],0.5*[1 0;0 1],N);
K4=mvnrnd([0 -2],0.5*[1 0;0 1],N);
X1=[K1;K2;K3;K4];

K1=mvnrnd([-2 0],0.5*[1 0;0 1],N);
K2=mvnrnd([2 0],0.5*[1 0;0 1],N);
K3=mvnrnd([0 2],0.5*[1 0;0 1],N);
K4=mvnrnd([0 -2],0.5*[1 0;0 1],N);
X2=[K1;K2;K3;K4];

hold on
 scatter(K1(:,1),K1(:,2))
 scatter(K2(:,1),K2(:,2))
 scatter(K3(:,1),K3(:,2))
 scatter(K4(:,1),K4(:,2))
hold off


D=zeros(6,200);i=2;
while i<=6
    
    j=1;
    while j<=200;
    [idx1,C1,sum1,D1]=kmeans(X1,i);
    [idx2,C2,sum2,D2]=kmeans(X2,i);
    D(i,j)=delta(C1,C2);
    j=j+1;
    end
    
i=i+1;
end

hold on
plot(X1(idx1==1,1),X1(idx1==1,2),'r.','MarkerSize',12)

plot(X1(idx1==2,1),X1(idx1==2,2),'b.','MarkerSize',12)

plot(X1(idx1==3,1),X1(idx1==3,2),'g.','MarkerSize',12)

plot(X1(idx1==4,1),X1(idx1==4,2),'k.','MarkerSize',12)
hold off

%{
plot(C1(:,1),C1(:,2),'kx',...
     'MarkerSize',15,'LineWidth',3)
legend('Cluster 1','Cluster 2','Cluster 3','Centroids',...
       'Location','NW')
title 'Cluster Assignments and Centroids'
hold off
%}