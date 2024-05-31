%chain_count.m
clear all;
clc;
%销项
data1=xlsread('chain1.xlsx');
total_result_out=zeros(302,3);
en=1;
count_sum=1;
I=0;
n=1;
for i=124:425
    count_num=sum(data1(:,1)==i);
    data_0=data1(count_sum:count_sum+count_num-1,:);
    table=tabulate(data_0(:,2));%计算上下游企业出现的频数和频率
    max_t=max(table(:,2));%求交易频率最高的企业出现的频数
    F=find(table(:,2)==max_t);%求交易频率最高的企业的编号
    I=table(F,1:2);%[编号，出现频数]
    total_result_out(n,1:2)=I(1,:);%记录每个企业
    count_sum=count_sum+count_num;
    n=n+1;
end
for j=1:302
    n=find(data1(:,2)==total_result_out(j,1));%在data中寻找该上下游企业位置
    total_result_out(j,3)=sum(data1(n,3));%将其与上下游企业的业务现金流相加
end

%进项
data2=xlsread('chain2.xlsx');
total_result_in=zeros(302,3);
en=1;
count_sum=1;
I=0;
n=1;
for i=124:425
    count_num=sum(data2(:,1)==i);
    data_0=data2(count_sum:count_sum+count_num-1,:);
    table=tabulate(data_0(:,2));%计算上下游企业出现的频数和频率
    max_t=max(table(:,2));%求交易频率最高的企业出现的频数
    F=find(table(:,2)==max_t);%求交易频率最高的企业的编号
    I=table(F,1:2);%[编号，出现频数]
    total_result_in(n,1:2)=I(1,:);%记录每个企业
    count_sum=count_sum+count_num;
    n=n+1;
end
for j=1:302
    n=find(data2(:,2)==total_result_in(j,1));%在data中寻找该上下游企业位置
    total_result_in(j,3)=sum(data2(n,3));%将其与上下游企业的业务现金流相加
end