%最终贷款额拟合结果的可视化
%money_fitness_result.m
close all;
money2=xlsread('最终贷款系数(附件2).xlsx');
money3=xlsread('最终贷款系数(附件3).xlsx');
figure
plot(money2(:,2),money2(:,3),'r.');
figure
plot(money3(:,2),money3(:,3),'r.');