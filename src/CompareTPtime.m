%% Comparing Tidal Prisms Metronome experiments over time
% Lonneke Roelofs

close all
clear all
clc

%% Load data
experiment  = 'Exp006';
[TP006 timeseries006 X006] = LoadingTPdata(experiment);

% Finding tidal prism at different locations along flume for all time steps
TP006_w4    = [TP006(1,104) TP006(2,104) TP006(3,104)];
TP006_w6    = [TP006(1,184) TP006(2,184) TP006(3,184)];
TP006_w8    = [TP006(1,264) TP006(2,264) TP006(3,264)];
TP006_w12   = [TP006(1,424) TP006(2,424) TP006(3,424)];
TP006_w16   = [TP006(1,584) TP006(2,584) TP006(3,584)];


%% Visualize
customcolor = jet (5);
figure()
plot(timeseries006, TP006_w4,'Color',customcolor(1,:),'LineWidth',2)
hold on
plot(timeseries006, TP006_w6,'Color',customcolor(2,:),'LineWidth',2)
plot(timeseries006, TP006_w8,'Color',customcolor(3,:),'LineWidth',2)
plot(timeseries006, TP006_w12,'Color',customcolor(4,:),'LineWidth',2)
plot(timeseries006, TP006_w16,'Color',customcolor(5,:),'LineWidth',2)
legend('4 m', '6 m', '8 m', '12 m', ' 16 m','Location','northeast')
legend 'Boxoff'
xlabel('Time (cycles)')
ylabel('Tidal prism (m^3)')
