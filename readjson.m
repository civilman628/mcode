fname = 'C:\Users\ming\Downloads\scope_style_with_bbox.json';
fid = fopen(fname);
raw = fread(fid,inf);
str = char(raw');
fclose(fid);
data = JSON.parse(str);