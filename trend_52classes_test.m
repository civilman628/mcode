clc;

% for i = 1:32
%     currentlabel = womenlabels(i);
%     disp(currentlabel);
%     temp =womenlabelprob.prob( womenlabelprob.label==currentlabel & womenlabelprob.prob>0.4);
%     disp(numel(temp));
%     hist(temp);
%     
% end


for i = 1:20
    currentlabel = menlabels(i);
    disp(currentlabel);
    temp =menlabelprob.prob( menlabelprob.label==currentlabel & menlabelprob.prob>0.3);
    disp(numel(temp));
    hist(temp);
    
end