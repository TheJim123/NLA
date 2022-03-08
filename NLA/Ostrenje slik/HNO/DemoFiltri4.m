X = imread('pumpkinsblurred1.tif');
B = X;

% nalozimo in prikazemo sliko (zamegljeno)
clf
subplot(121)
imagesc(B); axis image; colormap gray
title('Slika');
pause

P1 = [0 -1 0; -1 4 -1; 0 -1 0];
Y1 = conv2(X,P1),

subplot(122)
imagesc(X+uint8(0.1*Y1(2:end-1,2:end-1))); axis image; colormap gray
title('Filter 1 (10%)');
pause

P2 = [-1 -1 -1; -1 8 -1; -1 -1 -1 ];
Y2 = conv2(X,P2),

subplot(122)
imagesc(X+uint8(0.2*Y2(2:end-1,2:end-1))); axis image; colormap gray
title('Filter 2 (20%)');
