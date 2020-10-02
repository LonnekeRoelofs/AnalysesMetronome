function [TP timeseries X]=LoadingTPdata(experimentnr);
% LoadingTPdata extracts all tidal prism Nays2D results from one experiment
%               and gives timeseries. Note that vectors are resized to the 
%               first time step. Assumptions are: experiments numbers are
%               put in as Exp006 etc, cycle folders are named cycle....
% IN
% experimentnr  experiment you want the TP of (Exp006, Exp011 etc.)
%
% OUT
% TP            cross-section average tidal prism along length flume for
%               different time steps
% timeseries    cycle number corresponding to TP

%getting information of the folder structure for importing data
MyFileInfo   = dir(['..\data\processed\', experimentnr]);
MyFileInfo(ismember({MyFileInfo.name},{'.','..'})) = [];
NumberCycles = length(MyFileInfo);

Names = {zeros(1,NumberCycles)};
for i = 1:NumberCycles
    Names(i) = {([MyFileInfo(i).name])};
end

%determining size of first data file because data files could have
%different sizes
firstcycle = char(Names(1));
firstTP    = load(['..\data\processed\',experimentnr,'\',firstcycle,'\TidalPrism.ASC']);
lengthTP   = length(firstTP);

%extracting TP data
for i = 1:NumberCycles
    cycle   = char(Names(i));
    TP(i,:) = imresize(load(['..\data\processed\',experimentnr,'\',cycle,'\TidalPrism.ASC']),[1 lengthTP]);
end

%extrating timeseries based on file names
for i = 1:NumberCycles
    Value = sscanf(string(Names(i)), 'cycle%d');
    timeseries(i)=Value;
end

%extracting x coordinates from first data file
load(['..\data\processed\',experimentnr,'\',char(Names(1)),'\X_array.ASC']);
maxI = length(TP);
maxJ = length(X_array)/length(TP);

X = zeros(maxJ,maxI);
for i       = 1:maxJ
    X(i,:) = X_array((i-1)*maxI+1:i*maxI);
end


end


