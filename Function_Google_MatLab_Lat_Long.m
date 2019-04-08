function [LatLong]=Function_Google_MatLab_Lat_Long(var)
% Coded by Swapan Masanta - 28-Mar-2019 11:27:36


a=[var '+' 'lat' '+' 'long'];
a=regexprep(a,' ','%20');
urlp=['http://www.google.co.in/search?hl=en&q=' a];
txt=urlread(urlp);
f=strfind(txt,'gl=in&amp;sa=X&amp;ll=');
dt=txt(f:f+100);
x = regexp(dt,'-?\d+\.?\d*|-?\d*\.?\d+','match');
for i=1:2
    if ~isempty(x)
        k{1,i} =x{1,i};
    else
        f=strfind(txt,'</li></ul></div></div></div><span class="st">');
        dt2=txt(f:f+1000);
        x2 = regexp(dt2,'-?\d+\.?\d*|-?\d*\.?\d+','match');
        k{1,i} =x2{1,i};
        disp('Check Results...!!')
    end
end
LatLong=str2double(k);
end





