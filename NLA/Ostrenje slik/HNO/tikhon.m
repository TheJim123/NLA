function B=tikhon(A,alpha)

% Matrika Tikhonova izracunana preko SVD

[U,S,V]=svd(A);
s=diag(S);
f=s.^2./(s.^2+alpha^2);
pS=diag(f./s);
[m,n]=size(A);
pS(n,m)=0;
B=V*pS*U';
