function Zjoint = JointPartitionFunction(beta,X1,C2,D2)

dim=size(C2);
n=length(X1);

D1=(repmat(X1,1,dim(1))-repmat(reshape(C2,1,dim(1)*dim(2)),n,1)).^2;
D1=D1(:,1:2:end) + D1(:,2:2:end);

Zjoint = sum(exp((-beta')*sum(D1+D2.^2)),2)';

end