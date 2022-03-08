[B,Ac,Ar,X]=challenge1(256,256,0.1);

[U1,S1,V1] = svd(Ac);
[U2,S2,V2] = svd(Ar);

imagesc(V1(:,1)*V2(:,1)'), colormap gray, title ('(1,1)'), pause
imagesc(V1(:,2)*V2(:,1)'), colormap gray, title ('(2,1)'), pause
imagesc(V1(:,1)*V2(:,2)'), colormap gray, title ('(1,2)'), pause
imagesc(V1(:,2)*V2(:,2)'), colormap gray, title ('(2,2)'), pause
imagesc(V1(:,4)*V2(:,4)'), colormap gray, title ('(4,4)'), pause
imagesc(V1(:,10)*V2(:,10)'), colormap gray, title ('(10,10)'), pause
imagesc(V1(:,40)*V2(:,40)'), colormap gray, title ('(40,40)'), pause
imagesc(V1(:,80)*V2(:,80)'), colormap gray, title ('(80,80)'),
