load challenge2

% nalozimo in prikazemo sliko (zamegljeno)
clf
subplot(121)
imagesc(B); axis image; colormap gray
title('Zmotena testna slika, B=Ac*Xn*Ar^T + motnje');
pause

% Ac in Ar sta matriki transformacij po vrsticah in stolpcih

% naivna resitev
Xn = tikhon(Ac,1)*B*tikhon(Ar,1)';
subplot(122)
imagesc(Xn); axis image; colormap gray
title('Tikhonov, alpha=1');
pause

% odrezani singularni razcep na obeh matrikah, k=10

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
pause

% odrezani singularni razcep na obeh matrikah, k=20
Xn = tikhon(Ac,0.001)*B*tikhon(Ar,0.001)';
subplot(122)
imagesc(Xn); axis image; colormap gray
title('Tikhonov, alpha=0.001');
pause

% odrezani singularni razcep na obeh matrikah, k=20
Xn = tikhon(Ac,0.04)*B*tikhon(Ar,0.04)';
subplot(122)
imagesc(Xn); axis image; colormap gray
title('Tikhonov, alpha=0.04');
pause
