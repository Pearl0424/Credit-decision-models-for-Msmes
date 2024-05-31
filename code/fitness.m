%fitness.m �ͻ���ʧ�����
close all;
clear all;
clc;
data=xlsread('rate_refuse_data.xlsx');
x=data(:,1);
a=zeros(3,1);
y_0=data(:,2:4);
for i=1:3
    y=y_0(:,i);
   fun=@(a,x)(a(1)*x+a(2));
   fit_a=nlinfit(x,y,fun,[-0.5,-0.1 1]);
   figure
   plot(x,y,'r.',x,fit_a(1)*x+fit_a(2),'r-');
   if(i==1)
       title('level A �ͻ���ʧ���������');
   end
   if(i==2)
       title('level B �ͻ���ʧ���������');
   end
   if(i==3)
       title('level C �ͻ���ʧ���������');
   end
   total_fit_a(:,i)=fit_a';
end