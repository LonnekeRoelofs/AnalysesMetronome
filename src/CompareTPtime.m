%% Comparing Tidal Prisms Metronome experiments over time
% Lonneke Roelofs

close all
clear all
clc

%% Load data
experiment  = 'Exp006';
[TP006 timeseries006] = LoadingTPdata(experiment);

% Finding tidal prism at different locations along flume for all time steps
TP006_w4    = [TP006_00291(104) TP006_00771(104) TP006_02281(104) TP006_04401(104) TP006_05887(104) TP006_06884(104) TP006_07869(104) TP006_08863(104) TP006_10915(104) TP006_13076(104)];
TP006_w6    = [TP006_00291(184) TP006_00771(184) TP006_02281(184) TP006_04401(184) TP006_05887(184) TP006_06884(184) TP006_07869(184) TP006_08863(184) TP006_10915(184) TP006_13076(184)];
TP006_w8    = [TP006_00291(264) TP006_00771(264) TP006_02281(264) TP006_04401(264) TP006_05887(264) TP006_06884(264) TP006_07869(264) TP006_08863(264) TP006_10915(264) TP006_13076(264)];
TP006_w12   = [TP006_00291(424) TP006_00771(424) TP006_02281(424) TP006_04401(424) TP006_05887(424) TP006_06884(424) TP006_07869(424) TP006_08863(424) TP006_10915(424) TP006_13076(424)];
TP006_w16   = [TP006_00291(584) TP006_00771(584) TP006_02281(584) TP006_04401(584) TP006_05887(584) TP006_06884(584) TP006_07869(584) TP006_08863(584) TP006_10915(584) TP006_13076(584)];

%getting X matrix for plotting
load(['..\data\processed\',experiment,'\cycle',num2str(timeseries006(end)),'\X_array.ASC']);
maxJ = 118;
maxI = 736;

X = zeros(maxJ,maxI);
for i       = 1:maxJ
    X(i,:) = X_array((i-1)*maxI+1:i*maxI);
end

%% Visualize
customcolor = jet (5);
figure()
plot(TP006_time, TP006_w4,'Color',customcolor(1,:),'LineWidth',2)
hold on
plot(TP006_time, TP006_w6,'Color',customcolor(2,:),'LineWidth',2)
plot(TP006_time, TP006_w8,'Color',customcolor(3,:),'LineWidth',2)
plot(TP006_time, TP006_w12,'Color',customcolor(4,:),'LineWidth',2)
plot(TP006_time, TP006_w16,'Color',customcolor(5,:),'LineWidth',2)
legend('4 m', '6 m', '8 m', '12 m', ' 16 m','Location','northeast')
legend 'Boxoff'
xlabel('Time (cycles)')
ylabel('Tidal prism (m^3)')
