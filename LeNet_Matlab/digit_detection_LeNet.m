%% CNN: Lenet
%% Digit Detection: LeNet
%Students: Juan Sebastián Barreto Jimenez y Juan Camilo Devia Bastos
%Consultant: Ing. Eduardo Andrés Gerlien Reyes
%Client: Ing. Olga Lucía Quintero Montoya
%% Read Data from Python
s = load('matlab_matrix.mat');

trainData = s.trainData;
testData = s.testData;
trainLabels = categorical(s.trainLabels)';
testLabels = categorical(s.testLabels)';

%% Mount CNN: LeNet
numChannels = 1;
imgRows = 28; 
imgCols = 28;
numClasses = 10;
inputShape = [imgRows, imgCols, numChannels];
layers = [
    imageInputLayer(inputShape) % Input of CNN
    
    convolution2dLayer(5, 20,'Padding','same') % Conv 2D
    reluLayer
    
    maxPooling2dLayer(2 ,'Stride',2) % MaxPooling2D
    
    convolution2dLayer(5, 50,'Padding','same') % Conv 2D
    reluLayer
    
    maxPooling2dLayer(2 ,'Stride',2) % MaxPooling2D

    fullyConnectedLayer(500)
    reluLayer
    fullyConnectedLayer(numClasses)
    softmaxLayer
    classificationLayer
    ];
%% Compile and Train CNN: LeNet
options = trainingOptions('sgdm', 'InitialLearnRate', 0.01, 'ValidationData', {testData, testLabels}, 'MiniBatchSize', 128, 'MaxEpochs',20,'Verbose',1, 'Plots','training-progress');

net = trainNetwork(trainData,trainLabels,layers,options);