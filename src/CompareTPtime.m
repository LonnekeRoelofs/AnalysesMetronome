%% Comparing Tidal Prisms Metronome experiments over time
% Lonneke Roelofs

close all
clc

%% Load data

experiment  = 'Exp006';
cycle       = 'cycle13076';
TP006_13076 = load(['..\data\processed\',experiment,'\',cycle,'\TidalPrism.ASC']);
cycle       = 'cycle10915';
TP006_10915 = load(['..\data\processed\',experiment,'\',cycle,'\TidalPrism.ASC']);
cycle       = 'cycle08863';
TP006_08863 = load(['..\data\processed\',experiment,'\',cycle,'\TidalPrism.ASC']);
cycle       = 'cycle07869';
TP006_07869 = load(['..\data\processed\',experiment,'\',cycle,'\TidalPrism.ASC']);
cycle       = 'cycle06884';
TP006_06884 = load(['..\data\processed\',experiment,'\',cycle,'\TidalPrism.ASC']);
cycle       = 'cycle05887';
TP006_05887 = load(['..\data\processed\',experiment,'\',cycle,'\TidalPrism.ASC']);
cycle       = 'cycle04401';
TP006_04401 = load(['..\data\processed\',experiment,'\',cycle,'\TidalPrism.ASC']);
cycle       = 'cycle02281';
TP006_02281 = load(['..\data\processed\',experiment,'\',cycle,'\TidalPrism.ASC']);
cycle       = 'cycle00771';
TP006_00771 = load(['..\data\processed\',experiment,'\',cycle,'\TidalPrism.ASC']);
cycle       = 'cycle00291';
TP006_00291 = load(['..\data\processed\',experiment,'\',cycle,'\TidalPrism.ASC']);
% Making time vectors
TP006_time  = [291 771 2281 4401 5887 6884 7869 8863 10915 13076];
TP006_w4    = [TP006_00291(104) TP006_00771(104) TP006_02281(104) TP006_04401(104) TP006_05887(104) TP006_06884(104) TP006_07869(104) TP006_08863(104) TP006_10915(104) TP006_13076(104)];
TP006_w6    = [TP006_00291(184) TP006_00771(184) TP006_02281(184) TP006_04401(184) TP006_05887(184) TP006_06884(184) TP006_07869(184) TP006_08863(184) TP006_10915(184) TP006_13076(184)];
TP006_w8    = [TP006_00291(264) TP006_00771(264) TP006_02281(264) TP006_04401(264) TP006_05887(264) TP006_06884(264) TP006_07869(264) TP006_08863(264) TP006_10915(264) TP006_13076(264)];
TP006_w12   = [TP006_00291(424) TP006_00771(424) TP006_02281(424) TP006_04401(424) TP006_05887(424) TP006_06884(424) TP006_07869(424) TP006_08863(424) TP006_10915(424) TP006_13076(424)];
TP006_w16   = [TP006_00291(584) TP006_00771(584) TP006_02281(584) TP006_04401(584) TP006_05887(584) TP006_06884(584) TP006_07869(584) TP006_08863(584) TP006_10915(584) TP006_13076(584)];

% experiment = 'Exp011';
% cycle      = 'cycle12918';
% TP011_12918=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle11910';
% TP011_11910=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle10909';
% TP011_10909=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle09398';
% TP011_09398=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle08361';
% TP011_08361=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle07360';
% TP011_07360=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle06375';
% TP011_06375=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle05336';
% TP011_05336=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle04400';
% TP011_04400=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle03268';
% TP011_03268=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle02270';
% TP011_02270=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle01271';
% TP011_01271=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle00271';
% TP011_00271=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% % Making time vectors
% TP011_time=[271 1271 2270 3268 4400 5336 6375 7360 8361 9398 10909 11910 12918];
% TP011_w4=[TP011_00271(104) TP011_01271(104) TP011_02270(104) TP011_03268(104) TP011_04400(104) TP011_05336(104) TP011_06375(104) TP011_07360(104) TP011_08361(104) TP011_09398(104) TP011_10909(104) TP011_11910(104) TP011_12918(104)];
% TP011_w6=[TP011_00271(184) TP011_01271(184) TP011_02270(184) TP011_03268(184) TP011_04400(184) TP011_05336(184) TP011_06375(184) TP011_07360(184) TP011_08361(184) TP011_09398(184) TP011_10909(184) TP011_11910(184) TP011_12918(184)];
% TP011_w8=[TP011_00271(264) TP011_01271(264) TP011_02270(264) TP011_03268(264) TP011_04400(264) TP011_05336(264) TP011_06375(264) TP011_07360(264) TP011_08361(264) TP011_09398(264) TP011_10909(264) TP011_11910(264) TP011_12918(264)];
% TP011_w12=[TP011_00271(424) TP011_01271(424) TP011_02270(424) TP011_03268(424) TP011_04400(424) TP011_05336(424) TP011_06375(424) TP011_07360(424) TP011_08361(424) TP011_09398(424) TP011_10909(424) TP011_11910(424) TP011_12918(424)];
% TP011_w16=[TP011_00271(584) TP011_01271(584) TP011_02270(584) TP011_03268(584) TP011_04400(584) TP011_05336(584) TP011_06375(584) TP011_07360(584) TP011_08361(584) TP011_09398(584) TP011_10909(424) TP011_11910(584) TP011_12918(584)];
% 
% experiment = 'Exp019';
% cycle      = 'cycle13000';
% TP019_13000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle12000';
% TP019_12000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle11000';
% TP019_11000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle10000';
% TP019_10000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle09000';
% TP019_09000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle08000';
% TP019_08000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle07000';
% TP019_07000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle06000';
% TP019_06000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle05000';
% TP019_05000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle04000';
% TP019_04000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle03000';
% TP019_03000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle02000';
% TP019_02000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle01000';
% TP019_01000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle00000';
% TP019_00000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% % Making time vectors
% TP019_time=[0 1000 2000 3000 4000 5000 6000 7000 8000 9000 10000 11000 12000 13000];
% TP019_w4=[TP019_00000(104) TP019_01000(104) TP019_02000(104) TP019_03000(104) TP019_04000(104) TP019_05000(104) TP019_06000(104) TP019_07000(104) TP019_08000(104) TP019_09000(104) TP019_10000(104) TP019_11000(104) TP019_12000(104) TP019_13000(104)];
% TP019_w6=[TP019_00000(184) TP019_01000(184) TP019_02000(184) TP019_03000(184) TP019_04000(184) TP019_05000(184) TP019_06000(184) TP019_07000(184) TP019_08000(184) TP019_09000(184) TP019_10000(184) TP019_11000(184) TP019_12000(184) TP019_13000(184)];
% TP019_w8=[TP019_00000(264) TP019_01000(264) TP019_02000(264) TP019_03000(264) TP019_04000(264) TP019_05000(264) TP019_06000(264) TP019_07000(264) TP019_08000(264) TP019_09000(264) TP019_10000(264) TP019_11000(264) TP019_12000(264) TP019_13000(264)];
% TP019_w12=[TP019_00000(424) TP019_01000(424) TP019_02000(424) TP019_03000(424) TP019_04000(424) TP019_05000(424) TP019_06000(424) TP019_07000(424) TP019_08000(424) TP019_09000(424) TP019_10000(424) TP019_11000(424) TP019_12000(424) TP019_13000(424)];
% TP019_w16=[TP019_00000(584) TP019_01000(584) TP019_02000(584) TP019_03000(584) TP019_04000(584) TP019_05000(584) TP019_06000(584) TP019_07000(584) TP019_08000(584) TP019_09000(584) TP019_10000(584) TP019_11000(584) TP019_12000(584) TP019_13000(584)];
% 
% experiment = 'Exp020';
% cycle      = 'cycle13000';
% TP020_13000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle12000';
% TP020_12000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle11000';
% TP020_11000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle10000';
% TP020_10000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle09000';
% TP020_09000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle08000';
% TP020_08000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle07000';
% TP020_07000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle06000';
% TP020_06000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle05000';
% TP020_05000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle04000';
% TP020_04000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle03000';
% TP020_03000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle02000';
% TP020_02000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle01000';
% TP020_01000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle00000';
% TP020_00000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% % Making time vectors
% TP020_time=[0 1000 2000 3000 4000 5000 6000 7000 8000 9000 10000 11000 12000 13000];
% TP020_w4=[TP020_00000(104) TP020_01000(104) TP020_02000(104) TP020_03000(104) TP020_04000(104) TP020_05000(104) TP020_06000(104) TP020_07000(104) TP020_08000(104) TP020_09000(104) TP020_10000(104) TP020_11000(104) TP020_12000(104) TP020_13000(104)];
% TP020_w6=[TP020_00000(184) TP020_01000(184) TP020_02000(184) TP020_03000(184) TP020_04000(184) TP020_05000(184) TP020_06000(184) TP020_07000(184) TP020_08000(184) TP020_09000(184) TP020_10000(184) TP020_11000(184) TP020_12000(184) TP020_13000(184)];
% TP020_w8=[TP020_00000(264) TP020_01000(264) TP020_02000(264) TP020_03000(264) TP020_04000(264) TP020_05000(264) TP020_06000(264) TP020_07000(264) TP020_08000(264) TP020_09000(264) TP020_10000(264) TP020_11000(264) TP020_12000(264) TP020_13000(264)];
% TP020_w12=[TP020_00000(424) TP020_01000(424) TP020_02000(424) TP020_03000(424) TP020_04000(424) TP020_05000(424) TP020_06000(424) TP020_07000(424) TP020_08000(424) TP020_09000(424) TP020_10000(424) TP020_11000(424) TP020_12000(424) TP020_13000(424)];
% TP020_w16=[TP020_00000(584) TP020_01000(584) TP020_02000(584) TP020_03000(584) TP020_04000(584) TP020_05000(584) TP020_06000(584) TP020_07000(584) TP020_08000(584) TP020_09000(584) TP020_10000(584) TP020_11000(584) TP020_12000(584) TP020_13000(584)];
% 
% experiment = 'Exp024';
% cycle      = 'cycle13000';
% TP024_13000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle12000';
% TP024_12000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle11000';
% TP024_11000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle10000';
% TP024_10000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle09000';
% TP024_09000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle08000';
% TP024_08000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle07000';
% TP024_07000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle06000';
% TP024_06000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle05000';
% TP024_05000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle04000';
% TP024_04000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle03000';
% TP024_03000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle02000';
% TP024_02000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle01000';
% TP024_01000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% cycle      = 'cycle00000';
% TP024_00000=load(['C:\Users\4236297\Documents\Onderzoek\EstuarineFloodplainPaper\ScriptsDataIvar\Nays2D - output files\text files\',experiment,'\',cycle,'\TidalPrism.ASC']);
% Making time vectors
% TP024_time=[0 1000 2000 3000 4000 5000 6000 7000 8000 9000 10000 11000 12000 13000];
% TP024_w4=[TP024_00000(104) TP024_01000(104) TP024_02000(104) TP024_03000(104) TP024_04000(104) TP024_05000(104) TP024_06000(104) TP024_07000(104) TP024_08000(104) TP024_09000(104) TP024_10000(104) TP024_11000(104) TP024_12000(104) TP024_13000(104)];
% TP024_w6=[TP024_00000(184) TP024_01000(184) TP024_02000(184) TP024_03000(184) TP024_04000(184) TP024_05000(184) TP024_06000(184) TP024_07000(184) TP024_08000(184) TP024_09000(184) TP024_10000(184) TP024_11000(184) TP024_12000(184) TP024_13000(184)];
% TP024_w8=[TP024_00000(264) TP024_01000(264) TP024_02000(264) TP024_03000(264) TP024_04000(264) TP024_05000(264) TP024_06000(264) TP024_07000(264) TP024_08000(264) TP024_09000(264) TP024_10000(264) TP024_11000(264) TP024_12000(264) TP024_13000(264)];
% TP024_w12=[TP024_00000(424) TP024_01000(424) TP024_02000(424) TP024_03000(424) TP024_04000(424) TP024_05000(424) TP024_06000(424) TP024_07000(424) TP024_08000(424) TP024_09000(424) TP024_10000(424) TP024_11000(424) TP024_12000(424) TP024_13000(424)];
% TP024_w16=[TP024_00000(584) TP024_01000(584) TP024_02000(584) TP024_03000(584) TP024_04000(584) TP024_05000(584) TP024_06000(584) TP024_07000(584) TP024_08000(584) TP024_09000(584) TP024_10000(584) TP024_11000(584) TP024_12000(584) TP024_13000(584)];

%getting X matrix
load(['..\data\processed\',experiment,'\',cycle,'\X_array.ASC']);
maxJ = 118;
maxI = 736;

X = zeros(maxJ,maxI);
for i       = 1:maxJ
    X(i,:) = X_array((i-1)*maxI+1:i*maxI);
end

%% Visualize
customcolor = [255/255 196/255 0; 255/255 157/255 0; 156/255 65/255 0; 41/255 125/255 17/255; 27/255 77/255 15/255];

% figure()
% subplot(5,1,1)
% plot(TP020_time, TP020_w4,'Color',customcolor(2,:),'LineWidth',2)
% hold on 
% plot(TP006_time, TP006_w4,'Color',customcolor(1,:),'LineWidth',2) 
% plot(TP011_time, TP011_w4,'Color',customcolor(3,:),'LineWidth',2)
% plot(TP019_time, TP019_w4,'Color',customcolor(4,:),'LineWidth',2)
% plot(TP024_time, TP024_w4,'Color',customcolor(5,:),'LineWidth',2)
% legend('Sand - new', 'Sand - old', 'Mud', 'Vegetation', 'Vegetation & mud','Location','northeast')
% legend 'Boxoff'
% % xlabel('Time (cycles)')
% set(gca,'xticklabel',[])
% ylabel('Tidal prism (m^3)')
% % ylim([0 0.25])
% % xlim([1 18])
% title('Location 4 m')
% 
% subplot(5,1,2)
% plot(TP020_time, TP020_w6,'Color',customcolor(2,:),'LineWidth',2)
% hold on 
% plot(TP006_time, TP006_w6,'Color',customcolor(1,:),'LineWidth',2) 
% plot(TP011_time, TP011_w6,'Color',customcolor(3,:),'LineWidth',2)
% plot(TP019_time, TP019_w6,'Color',customcolor(4,:),'LineWidth',2)
% plot(TP024_time, TP024_w6,'Color',customcolor(5,:),'LineWidth',2)
% % legend('Sand - new', 'Sand - old', 'Mud', 'Vegetation', 'Vegetation & mud','Location','northeast')
% % legend 'Boxoff'
% % xlabel('Time (cycles)')
% set(gca,'xticklabel',[])
% ylabel('Tidal prism (m^3)')
% % ylim([0 0.25])
% % xlim([1 18])
% title('Location 6 m')
% 
% subplot(5,1,3)
% plot(TP020_time, TP020_w8,'Color',customcolor(2,:),'LineWidth',2)
% hold on 
% plot(TP006_time, TP006_w8,'Color',customcolor(1,:),'LineWidth',2) 
% plot(TP011_time, TP011_w8,'Color',customcolor(3,:),'LineWidth',2)
% plot(TP019_time, TP019_w8,'Color',customcolor(4,:),'LineWidth',2)
% plot(TP024_time, TP024_w8,'Color',customcolor(5,:),'LineWidth',2)
% % legend('Sand - new', 'Sand - old', 'Mud', 'Vegetation', 'Vegetation & mud','Location','northeast')
% % legend 'Boxoff'
% % xlabel('Time (cycles)')
% set(gca,'xticklabel',[])
% ylabel('Tidal prism (m^3)')
% % ylim([0 0.25])
% % xlim([1 18])
% title('Location 8 m')
% 
% subplot(5,1,4)
% plot(TP020_time, TP020_w12,'Color',customcolor(2,:),'LineWidth',2)
% hold on 
% plot(TP006_time, TP006_w12,'Color',customcolor(1,:),'LineWidth',2) 
% plot(TP011_time, TP011_w12,'Color',customcolor(3,:),'LineWidth',2)
% plot(TP019_time, TP019_w12,'Color',customcolor(4,:),'LineWidth',2)
% plot(TP024_time, TP024_w12,'Color',customcolor(5,:),'LineWidth',2)
% % legend('Sand - new', 'Sand - old', 'Mud', 'Vegetation', 'Vegetation & mud','Location','northeast')
% % legend 'Boxoff'
% % xlabel('Time (cycles)')
% set(gca,'xticklabel',[])
% ylabel('Tidal prism (m^3)')
% % ylim([0 0.25])
% % xlim([1 18])
% title('Location 12 m')
% 
% subplot(5,1,5)
% plot(TP020_time, TP020_w16,'Color',customcolor(2,:),'LineWidth',2)
% hold on 
% plot(TP006_time, TP006_w16,'Color',customcolor(1,:),'LineWidth',2) 
% plot(TP011_time, TP011_w16,'Color',customcolor(3,:),'LineWidth',2)
% plot(TP019_time, TP019_w16,'Color',customcolor(4,:),'LineWidth',2)
% plot(TP024_time, TP024_w16,'Color',customcolor(5,:),'LineWidth',2)
% % legend('Sand - new', 'Sand - old', 'Mud', 'Vegetation', 'Vegetation & mud','Location','northeast')
% % legend 'Boxoff'
% xlabel('Time (cycles)')
% ylabel('Tidal prism (m^3)')
% % ylim([0 0.25])
% % xlim([1 18])
% title('Location 16 m')
% set(gcf, 'Position', [0.1300 0.1100 0.7750 0.1197])
% print(gcf,'TidalPrismTimeDifLoc.pdf','-dpdf','-r600');  
