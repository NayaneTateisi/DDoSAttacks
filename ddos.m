% Processing

%Creation of the neural network
rna=feedforwardnet([20 3],'trainlm');

%Sigmoid tangent activation function
rna.layers{1}.transferFcn= 'tansig';
rna.layers{2}.transferFcn= 'tansig';
rna.layers{3}.transferFcn= 'tansig';


%Neural network training
[rna,trecords]= train(rna,amostras_treino,saidas_desej_treino);

%Outputs for the set of tests and training
restestes= rna(amostras_testes);
restreino= rna(amostras_treino);
