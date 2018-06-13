for i =1:2422404
    vec=char(strings(i));
    for j=1:2048
        singlechar=vec(j);
        a(i,j)=str2double(singlechar);
    end
end