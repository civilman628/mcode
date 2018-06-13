
%% load embedding
% clc;

clc;
%x=data1(:,2:3);
%x=tsne_2d;
%x=tsne_outerwear;
x=Y;
rows = size(x,1);
S = 32000;
files=skirtslistwomen;
imagename='skirts_women_32000.jpg';


x = bsxfun(@minus, x, min(x));
x = bsxfun(@rdivide, x, max(x));

newxy=ones(rows,2);


%% load validation image filenames


% fs = textread('val_imgs_med.txt', '%s');
%N = length(fs);

%% create an embedding image

% size of full embedding image
G = zeros(S, S, 3, 'uint8');
s = 119; % size of every single image

for i=1:rows
    
    if mod(i, 100)==0
        fprintf('%d/%d...\n', i, rows);
    end
    
    % location
    a = ceil(x(i, 1) * (S-s)+1);
    b = ceil(x(i, 2) * (S-s)+1);
    a = a-mod(a-1,s)+1;
    b = b-mod(b-1,s)+1;
   
    
    newxy(i,1)=b;
    newxy(i,2)=a;
 
    if G(a,b,1) ~= 0
        continue % spot already filled
    end
    
    %img=strcat('/home/scopeserver/RaidDisk/DeepLearning/mwang/data/scopestyle_all/',num2str(files(i)),'.jpg');
    img=char(files(i));
    
    if exist(img, 'file')
        I = imread(img);
        if size(I,3)==1, I = cat(3,I,I,I); end
        
        [m,n,z]=size(I);
        if m>=n
            I=imresize(I,[s NaN]);
        else
            I=imresize(I,[NaN s]);
        end
        
        [m,n,z]=size(I);
        
        G(a:a+m-1, b:b+n-1,:) = I;
    end
    
%     I = imread(char(files(i)));l
%     if size(I,3)==1, I = cat(3,I,I,I); end
%     
%     [m,n,z]=size(I);
%     if m>=n
%         I=imresize(I,[60 NaN]);
%     else
%         I=imresize(I,[NaN 60]);
%     end
    
%     [m,n,z]=size(I);

%     G(a:a+m-1, b:b+n-1,:) = I;
    %fileid=data1(i,1);n 
    

        
end

%imshow(G);

%%
imwrite(G, imagename, 'jpg');