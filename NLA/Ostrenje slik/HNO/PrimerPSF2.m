% primer PSF

n = 16;

[B,Ac,Ar,X] = challenge1(n,n,0.1);

X = zeros(n);
X(8,8)=1;

B=Ac*X*Ar';
B=B/sum(sum(B)); % skaliramo, da je vsota vseh elementov 1

imagesc(X), axis image, colormap gray
pause
imagesc(B), axis image, colormap gray
