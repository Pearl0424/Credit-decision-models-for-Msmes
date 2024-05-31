function [weight_ahp]=AHP()
%Q为权值，B为对比矩阵
B=[1,2,5,8;1/2,1,3,4;1/5,1/3,1,2;1/8,1/4,1/2,1];%【请修改此处，输入判别矩阵B】
[rows,cols]=size(B);
%判别矩阵具有完全一致性
for i=1:rows
    for j=1:cols
        if B(i,j)*B(j,i)~=1   
          fprintf('i=%d,j=%d,B(i,j)=%d,B(j,i)=%d\n',i,j,B(i,j),B(j,i))  
        end  
    end
end
%求特征值特征向量,找到最大特征值对应的特征向量
[V,D]=eig(B);
tz=max(D);
tzz=max(tz);%最大特征值
c1=find(D(1,:)==max(tz));%最大特征值所在的位置
tzx=V(:,c1);%对应特征向量
%求权值
quan=zeros(rows,1);
for i=1:rows
quan(i,1)=tzx(i,1)/sum(tzx);%特征向量标准化
end
Q=quan;%结果 权值向量Q
%一致性检验
CI=(tzz-rows)/(rows-1);%计算一致性检验指标CI
RI=[0,0,0.58,0.9,1.12,1.24,1.32,1.41,1.45,1.49,1.52,1.54,1.56,1.58,1.59];%修正因子取值（定值）
%判断是否通过一致性检验
CR=CI/RI(1,rows);
if CR>=0.1
  fprintf('对比矩阵B没有通过一致性检验\n');
else
  fprintf('对比矩阵B通过一致性检验\n');
end
weight_ahp=[Q(1) Q(1) Q(2) Q(2) Q(3) Q(3) Q(4) Q(4)];
%end
