function [TP timeseries]=extractTPtime(experimentnr);
% extractTPtime extracts all tidal prism Nays2D results from one experiment
%               and gives timeseries. Note that vectors are resized to the 
%               first time step.
% IN
% experimentnr  experiment you want the TP of (Exp006, Exp011 etc.)
%
% OUT
% TP            cross-section average tidal prism along length flume for
%               different time steps
% timeseries    cycle number corresponding to TP

MyFileInfo   = dir(['..\data\processed\', experimentnr]);
MyFileInfo(ismember({MyFileInfo.name},{'.','..'})) = [];
NumberCycles = length(MyFileInfo);

Names = {zeros(1,NumberCycles)};
for i = 1:NumberCycles
    Names(i) = {([MyFileInfo(i).name])};
end

firstcycle = char(Names(1));
firstTP    = load(['..\data\processed\',x,'\',firstcycle,'\TidalPrism.ASC']);
lengthTP   = length(firstTP);

for i = 1:NumberCycles
    cycle   = char(Names(i));
    TP(i,:) = imresize(load(['..\data\processed\',x,'\',cycle,'\TidalPrism.ASC']),[1 lengthTP]);
end


for i = 1:NumberCycles
    Index = strfind(string(Names(i)),Key);
    Value = sscanf(string(Names(i)), 'cycle%d');
    timeseries(i)=Value;
end


