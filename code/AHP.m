function [weight_ahp]=AHP()
%QΪȨֵ��BΪ�ԱȾ���
B=[1,2,5,8;1/2,1,3,4;1/5,1/3,1,2;1/8,1/4,1/2,1];%�����޸Ĵ˴��������б����B��
[rows,cols]=size(B);
%�б���������ȫһ����
for i=1:rows
    for j=1:cols
        if B(i,j)*B(j,i)~=1   
          fprintf('i=%d,j=%d,B(i,j)=%d,B(j,i)=%d\n',i,j,B(i,j),B(j,i))  
        end  
    end
end
%������ֵ��������,�ҵ��������ֵ��Ӧ����������
[V,D]=eig(B);
tz=max(D);
tzz=max(tz);%�������ֵ
c1=find(D(1,:)==max(tz));%�������ֵ���ڵ�λ��
tzx=V(:,c1);%��Ӧ��������
%��Ȩֵ
quan=zeros(rows,1);
for i=1:rows
quan(i,1)=tzx(i,1)/sum(tzx);%����������׼��
end
Q=quan;%��� Ȩֵ����Q
%һ���Լ���
CI=(tzz-rows)/(rows-1);%����һ���Լ���ָ��CI
RI=[0,0,0.58,0.9,1.12,1.24,1.32,1.41,1.45,1.49,1.52,1.54,1.56,1.58,1.59];%��������ȡֵ����ֵ��
%�ж��Ƿ�ͨ��һ���Լ���
CR=CI/RI(1,rows);
if CR>=0.1
  fprintf('�ԱȾ���Bû��ͨ��һ���Լ���\n');
else
  fprintf('�ԱȾ���Bͨ��һ���Լ���\n');
end
weight_ahp=[Q(1) Q(1) Q(2) Q(2) Q(3) Q(3) Q(4) Q(4)];
%end
