close all, clear all, clc
clear
nn = patternnet(3)
X = [0, 0 , 1 , 1; 0 , 1 , 0 , 1];
Y = [ 0 , 1 , 1 , 0];
nn = configure(nn,X,Y);
nn.divideFcn = '';
nn.trainFcn = 'traingd';
nn.trainParam.showWindow =0;
nn.trainParam.showCommandLine = 1;
[nn, tr] = train(nn, X, Y);
g = nn(X);
