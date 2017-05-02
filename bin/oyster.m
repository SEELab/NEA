function data = oyster
% This function returns the composite data matrix for the intertidal 
% oyster reef ecosystem model created by Dame and Patten (1981).  Data
% were taken from Patten (1985).  Model flows are in kcal m^-2 day^-1;
% storage data is kcal m^-2.  This function returns the model data in 
% the appropriate form for use with NEA.m (Fath and Borrett, 2004).
% 
% Dame, R. F., and B. C. Patten. 1981. Analysis of energy flows in an 
% intertidal oyster reef. Marine Ecology Progress Series 5:115-124.
% 
% Patten, B. C. 1985. Energy cycling, length of food chains, and direct 
% versus indirect effects in ecosystems. Can. Bull. Fish. Aqu. Sci. 213:119-138.
%
% To create a model exactly at steady-state, 0.0001 was added to the original 
% y(1) and y(3) and 0.0001 was subtracted from y(4).  
%
% *************************************************************************
% Matrix orientation is from columns to rows.

Compartments={'Filter Feeders';...
              'Deposited Detritus';...
              'Microbiota';...
              'Meiofauna';...
              'Deposit Feeders';...
              'Predators'};     % Compartment Labels

% Steady-State Flow Matrix
F=[      0         0         0         0         0         0
   15.7915         0         0    4.2403    1.9076    0.3262
         0    8.1721         0         0         0         0
         0    7.2745    1.2060         0         0         0
         0    0.6431    1.2060    0.6609         0         0
    0.5135         0         0         0    0.1721         0]; 

% Steady-State Storage Vector
X=[2000 1000 2.4121 24.121 16.274 69.237]';    

% Steady-state Input Vector
z=[41.4697 0 0 0 0 0]'; 
% Steady-State Outputs
y=[25.1646    6.1759    5.7600    3.5794    0.4303    0.3594];

% composite data matrix
data=[F,z,X;y,0,0];
