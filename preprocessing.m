%preprocessing 

%Conversion of table data into matrix
bng = bng{:,:};
ddos = ddos{:,:};

%Matrix transpose
bngP = bng'
ddosP = ddos'

%Normalization of input data
[bngP,PS] = mapminmax(bngP, -1, 1);
[ddosP,PS] = mapminmax(ddosP, -1, 1);

% Definition of the percentage of samples for training
ptreino= 90/100;

% Separation of training and test data
amostras_treino= [bngP(1:7,1:round(8927*ptreino)) ddosP(1:7,1:round(128024*ptreino))];
amostras_testes= [bngP(1:7,round(8927*ptreino)+1:8927)  ddosP(1:7,round(128024*ptreino)+1:128024)];
 
% Desired Exits Vector
saidas_desej_treino= [ones(round(8927*ptreino),1);-ones(round(128024*ptreino),1)]';
saidas_desej_testes= [ones(8927-round(8927*ptreino),1);-ones(128024-round(128024*ptreino),1)]';
