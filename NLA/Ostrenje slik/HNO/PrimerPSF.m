% primer PSF

n = 30;

[B,Ac,Ar,X] = challenge1(n,n,0.1);

X = zeros(n);
X(15,15)=1;

B=Ac*X*Ar';

subplot(121)
imagesc(X), colormap gray
subplot(122)
imagesc(B), colormap gray
