inverse_id=[];


for i =1:679484
    index=wholeperson.VarName2(i);
    if ~ismember(index, localwholeperson)
        inverse_id=[inverse_id,i];
    end
end