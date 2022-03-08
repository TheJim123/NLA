load challenge2

% nalozimo in prikazemo sliko (zamegljeno)
clf
subplot(121)
imagesc(B); axis image; colormap gray
title('Zmotena testna slika, B=Ac*Xn*Ar^T + motnje');
pause

% Ac in Ar sta matriki transformacij po vrsticah in stolpcih

% naivna resitev
Xn = Ac\B/(Ar');
subplot(122)
imagesc(Xn); axis image; colormap gray
title('Naivna rešitev X=Ac\\B/Ar^T');
pause

% odrezani singularni razcep na obeh matrikah, k=10
Xn = tpinv(Ac,10)*B*tpinv(Ar,10)';
subplot(122)
imagesc(Xn); axis image; colormap gray
title('Odrezani SVD X=Ac_k\\B/Ar_k^T,  k=10');
pause

% odrezani singularni razcep na obeh matrikah, k=20
Xn = tpinv(Ac,10)*B*tpinv(Ar,20)';
subplot(122)
imagesc(Xn); axis image; colormap gray
title('Odrezani SVD X=Ac_k\\B/Ar_k^T,  k=20');
pause

% odrezani singularni razcep na obeh matrikah, k=30
Xn = tpinv(Ac,30)*B*tpinv(Ar,30)';
subplot(122)
imagesc(Xn); axis image; colormap gray
title('Odrezani SVD X=Ac_k\\B/Ar_k^T,  k=30');
pause

% odrezani singularni razcep na obeh matrikah, k=40
Xn = tpinv(Ac,40)*B*tpinv(Ar,40)';
subplot(122)
imagesc(Xn); axis image; colormap gray
title('Odrezani SVD X=Ac_k\\B/Ar_k^T,  k=40');
pause

% odrezani singularni razcep na obeh matrikah, k=40
Xn = tpinv(Ac,50)*B*tpinv(Ar,50)';
subplot(122)
imagesc(Xn); axis image; colormap gray
title('Odrezani SVD X=Ac_k\B/Ar_k^T,  k=50');
pause

% odrezani singularni razcep na obeh matrikah, k=60
Xn = tpinv(Ac,60)*B*tpinv(Ar,60)';
subplot(122)
imagesc(Xn); axis image; colormap gray
title('Odrezani SVD X=Ac_k\B/Ar_k^T,  k=60');
pause

