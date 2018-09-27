%str = '{"name":"North Carolina","capital":"Raleigh","population":"9,752,073"}';
%wheretobuy=textread('C:\Users\ming\Downloads\meta\meta\json\train_pairs_bags.json','%s')

path='C:\Users\ming\Downloads\meta\meta\json\';
imagepath='';

listing = dir(path);

for i=3:numel(listing)
    fname=listing(i).name;
    [a ,b]= strread(fname, '%s %s', 'delimiter','.');
    [c ,d, cname]=strread(a{1}, '%s %s %s', 'delimiter','_');
    classname=cname{1};
    fid = fopen(strcat(path,fname));
    raw = fread(fid,inf);
    str = char(raw');
    fclose(fid);
    data = JSON.parse(str);
    
%     for i =1:numel(data)
%         filename = data{i}.photo;
%         fullname = strcat(imagepath,filename,'.jpg');
%         if exist(fullname,'file')
%             image=imread(fullname);
%             [height ,width ,depth]=size(image);
%             bbox=data{i}.bbox;
%             xmin=bbox.left;
%             ymin=bbox.top;
%             xmax=xmin+bbox.width;
%             ymax=ymin+bbox.height;
%             
%             createxmldocwheretobuy(filename,classname,width,height,depth,xmin,ymin,xmax,ymax);
%         else
%             disp
%             
%         end
%         
%         
% 
%     end

    
    
end




