%Pré processamento

% bng = bng{:,:};
% ddos = ddos{:,:};
% bngP = bng'
% ddosP = ddos'
% [bngP,PS] = mapminmax(bngP, -1, 1);
% [ddosP,PS] = mapminmax(ddosP, -1, 1);

%  %definição do percentual de amostras para treino 
% ptreino= 90/100;

% % separação dos dados de treinamento e teste
% amostras_treino= [bngP(1:7,1:round(8927*ptreino)) ddosP(1:7,1:round(128024*ptreino))];
% amostras_testes= [bngP(1:7,round(8927*ptreino)+1:8927)  ddosP(1:7,round(128024*ptreino)+1:128024)];
% 
% % Vetor de saídas desejadas (classeA= 1 e classeB= -1)
% saidas_desej_treino= [ones(round(8927*ptreino),1);-ones(round(128024*ptreino),1)]';
% saidas_desej_testes= [ones(8927-round(8927*ptreino),1);-ones(128024-round(128024*ptreino),1)]';
% 

%criação da rede neural
rna=feedforwardnet([20 3],'trainlm');

%configuração da função de ativação das camadas da rede neural
rna.layers{1}.transferFcn= 'tansig';
rna.layers{2}.transferFcn= 'tansig';
rna.layers{3}.transferFcn= 'tansig';



%treinamento da rede neural
[rna,trecords]= train(rna,amostras_treino,saidas_desej_treino);

%teste da rede neural para o conjunto de testes e treinamento
restestes= rna(amostras_testes);
restreino= rna(amostras_treino);
