function B=tpinv(A,k)

% Truncated pseudoinverse

[U,S,V]=svd(A);
s=diag(S);
s(k+1:end)=0;
s(1:k)=1./s(1:k);
pS=diag(s);
B=V*pS*U';
