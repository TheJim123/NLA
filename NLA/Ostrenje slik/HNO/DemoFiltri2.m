X = imread('pumpkinsnoisy2.tif');
B = X;

% nalozimo in prikazemo sliko (zamegljeno)
clf
subplot(121)
imagesc(B); axis image; colormap gray
title('Slika');
pause

P1 = ones(3)/9;
Y1 = conv2(X,P1),

subplot(122)
imagesc(Y1); axis image; colormap gray
title('Filter 1');
pause

P2 = 1/10*[1 1 1; 1 2 1; 1 1 1];
Y2 = conv2(X,P2),

subplot(122)
imagesc(Y2); axis image; colormap gray
title('Filter 2');
pause

P3 = 1/16*[1 2 1; 2 4 2; 1 2 1];
Y3 = conv2(X,P3),

subplot(122)
imagesc(Y3); axis image; colormap gray
title('Filter 3');
