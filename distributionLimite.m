function Pi = distributionLimite(P)

S = size(P,1)-1;

A = P'-diag(ones(1,S+1));
B = zeros(S+1,1);

A(S+2,:) = ones(1,S+1);
B(S+2) = 1;

Pi = A\B;