
% Coded by Swapan Masanta - 28-Mar-2019 11:27:36


city={'Mettuppalaiyam';'Udagamandalam';'Mettur';'Udagamandalam';'Satyamangalam';'Heggadadevankote';'Hassan';'Udagamandalam'};
for i=1:length(city)
    city{i}
    LatLong=Function_Google_MatLab_Lat_Long(city{i})
end

