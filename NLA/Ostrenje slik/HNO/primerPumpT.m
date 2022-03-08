[B,Ac,Ar,X]=challengePump(0.1);

% nalozimo in prikazemo sliko (zamegljeno)
clf
subplot(121)
imagesc(B); axis image; colormap gray
title('Zmotena testna slika, B=Ac*Xn*Ar^T + motnje');
pause

% originalna slike
subplot(122)
imagesc(X); axis image; colormap gray
title('Originalna slika');
pause

% Ac in Ar sta matriki transformacij po vrsticah in stolpcih

% odrezani singularni razcep na obeh matrikah, k=10

% odrezani singularni razcep na obeh matrikah, k=10
Xn = tikhon(Ac,10)*B*tikhon(Ar,10)';
subplot(122)
imagesc(Xn); axis image; colormap gray
title('Tikhonov, alpha=10');
pause

% odrezani singularni razcep na obeh matrikah, k=10
Xn = tikhon(Ac,1)*B*tikhon(Ar,1)';
subplot(122)
imagesc(Xn); axis image; colormap gray
title('Tikhonov, alpha=1');
pause

% odrezani singularni razcep na obeh matrikah, k=10
Xn = tikhon(Ac,0.5)*B*tikhon(Ar,0.5)';
subplot(122)
imagesc(Xn); axis image; colormap gray
title('Tikhonov, alpha=0.5');
pause

Xn = tikhon(Ac,0.1)*B*tikhon(Ar,0.1)';
subplot(122)
imagesc(Xn); axis image; colormap gray
title('Tikhonov, alpha=0.1');
pause

% odrezani singularni razcep na obeh matrikah, k=20
Xn = tikhon(Ac,0.01)*B*tikhon(Ar,0.01)';
subplot(122)
imagesc(Xn); axis image; colormap gray
title('Tikhonov, alpha=0.01');
