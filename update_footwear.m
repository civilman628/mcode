

for i = 1:2:78086
    if strcmp(footwear.newlabel(i), footwear.newlabel(i+1))
        continue
    else
        disp(i);
        footwear.newlabel(i+1)=footwear.newlabel(i);
    end
end