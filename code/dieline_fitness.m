%dieline_fitness.m 客户违约率拟合
close all;
clear all;
clc;
x=[1,2,3,4];
y=[0,1/38,2/34,1];
a=zeros(2,1);
fun=@(a,x)(a(1)*exp(a(2)*x));
fit_a=nlinfit(x,y,fun,[0.005,2.8]);
figure
x_0=[1:0.01:4];
plot(x,y,'r.',x_0,fit_a(1)*exp(fit_a(2)*x_0),'r-');
y_0=fit_a(1)*exp(fit_a(2)*x);
xlabel('信用等级：1(A)、2(B)、3(C)、4(D)');
ylabel('客户违约率');
title('客户违约率拟合曲线');