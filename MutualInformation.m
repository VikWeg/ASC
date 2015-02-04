function I = MutualInformation(beta,D1,D2,C2,X1,idx1)

P=tabulate(idx1);
P=P(:,3)/100;

n=length(X1);

I = -repmat(sum(P.*log(P)),1,length(beta))...
    -(1/n)*log(PartitionFunction(beta,D1))...
    -(1/n)*log(PartitionFunction(beta,D2))...
    +(1/n)*log(JointPartitionFunction(beta,X1,C2,D2));

end