function Z = PartitionFunction(beta,D)

Z = sum(exp((-beta')*sum(D.^2)),2)';

end