%chain_count.m
clear all;
clc;
%����
data1=xlsread('chain1.xlsx');
total_result_out=zeros(302,3);
en=1;
count_sum=1;
I=0;
n=1;
for i=124:425
    count_num=sum(data1(:,1)==i);
    data_0=data1(count_sum:count_sum+count_num-1,:);
    table=tabulate(data_0(:,2));%������������ҵ���ֵ�Ƶ����Ƶ��
    max_t=max(table(:,2));%����Ƶ����ߵ���ҵ���ֵ�Ƶ��
    F=find(table(:,2)==max_t);%����Ƶ����ߵ���ҵ�ı��
    I=table(F,1:2);%[��ţ�����Ƶ��]
    total_result_out(n,1:2)=I(1,:);%��¼ÿ����ҵ
    count_sum=count_sum+count_num;
    n=n+1;
end
for j=1:302
    n=find(data1(:,2)==total_result_out(j,1));%��data��Ѱ�Ҹ���������ҵλ��
    total_result_out(j,3)=sum(data1(n,3));%��������������ҵ��ҵ���ֽ������
end

%����
data2=xlsread('chain2.xlsx');
total_result_in=zeros(302,3);
en=1;
count_sum=1;
I=0;
n=1;
for i=124:425
    count_num=sum(data2(:,1)==i);
    data_0=data2(count_sum:count_sum+count_num-1,:);
    table=tabulate(data_0(:,2));%������������ҵ���ֵ�Ƶ����Ƶ��
    max_t=max(table(:,2));%����Ƶ����ߵ���ҵ���ֵ�Ƶ��
    F=find(table(:,2)==max_t);%����Ƶ����ߵ���ҵ�ı��
    I=table(F,1:2);%[��ţ�����Ƶ��]
    total_result_in(n,1:2)=I(1,:);%��¼ÿ����ҵ
    count_sum=count_sum+count_num;
    n=n+1;
end
for j=1:302
    n=find(data2(:,2)==total_result_in(j,1));%��data��Ѱ�Ҹ���������ҵλ��
    total_result_in(j,3)=sum(data2(n,3));%��������������ҵ��ҵ���ֽ������
end