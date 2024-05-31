%level_analysis.m 附件2企业信用综合评级
%R=xlsread('level_analyse2.xlsx');%第二问数据输入
R=xlsread('level_analyse3.xlsx');%第三问数据输入
[rows,cols]=size(R);   % rows为对象个数，cols为指标个数
k=1/log(rows);         % 求k
Rmin = min(R);
Rmax = max(R);
A = max(R) - min(R);
y = R - repmat(Rmin,rows,1);
%y(i,j) = (R - repmat(Rmin,rows,1))/(repmat(A,rows,1));
for j = 1 : size(y,2)
     y(:,j) = y(:,j)/A(j);
end%标准化为0-1的数
%求Y（i,j）
S = sum(y,1);
Y = zeros(rows,cols); 
for i = 1 : size(Y,2)
    Y(:,i) = y(:,i)/S(i);
end%定义标准化
%计算指标信息熵值e和信息效用值d
lnYij=zeros(rows,cols);
for i=1:rows
    for j=1:cols
        if Y(i,j)==0
            lnYij(i,j)=0;
        else
            lnYij(i,j)=log(Y(i,j));
        end
    end
end
ej=-k*(sum(Y.*lnYij,1)); %计算熵值Hj
weights=(1-ej)/(cols-sum(ej));%熵权法评价指标的权重weights
F = zeros(rows,cols);%综合评价矩阵F

%AHP
weight_ahp=AHP();
weights=0.5*weights+0.5*weight_ahp;%熵权法+层次分析法综合权重weights
weights=weights./sum(weights);

%TOPSIS
[rows,cols]=size(R);
c=sqrt(sum(R.*R));
for i=1:rows
  for j=1:cols
    d(i,j)=R(i,j)/c(j);% d为规范化决策矩阵
  end
end

for i=1:rows
  for j=1:cols
    c(i,j)=d(i,j)*weights(j);% c为加权规范矩阵,weights为权重向量
  end
end
cmax=max(c);
cmin=min(c);
for i=1:rows
  c1=c(i,:)-cmax;
  s1(i)=norm(c1);%各方案到正理想解的距离
  c2=c(i,:)-cmin;
  s2(i)=norm(c2);%各方案到负理想解的距离
  T(i)=s2(i)/(s1(i)+s2(i));%计算各方案的综合评价指数
end
T=T';
disp('各企业的综合评价指数T为：')
T
