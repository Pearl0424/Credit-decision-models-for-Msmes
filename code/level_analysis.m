%level_analysis.m ����2��ҵ�����ۺ�����
%R=xlsread('level_analyse2.xlsx');%�ڶ�����������
R=xlsread('level_analyse3.xlsx');%��������������
[rows,cols]=size(R);   % rowsΪ���������colsΪָ�����
k=1/log(rows);         % ��k
Rmin = min(R);
Rmax = max(R);
A = max(R) - min(R);
y = R - repmat(Rmin,rows,1);
%y(i,j) = (R - repmat(Rmin,rows,1))/(repmat(A,rows,1));
for j = 1 : size(y,2)
     y(:,j) = y(:,j)/A(j);
end%��׼��Ϊ0-1����
%��Y��i,j��
S = sum(y,1);
Y = zeros(rows,cols); 
for i = 1 : size(Y,2)
    Y(:,i) = y(:,i)/S(i);
end%�����׼��
%����ָ����Ϣ��ֵe����ϢЧ��ֵd
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
ej=-k*(sum(Y.*lnYij,1)); %������ֵHj
weights=(1-ej)/(cols-sum(ej));%��Ȩ������ָ���Ȩ��weights
F = zeros(rows,cols);%�ۺ����۾���F

%AHP
weight_ahp=AHP();
weights=0.5*weights+0.5*weight_ahp;%��Ȩ��+��η������ۺ�Ȩ��weights
weights=weights./sum(weights);

%TOPSIS
[rows,cols]=size(R);
c=sqrt(sum(R.*R));
for i=1:rows
  for j=1:cols
    d(i,j)=R(i,j)/c(j);% dΪ�淶�����߾���
  end
end

for i=1:rows
  for j=1:cols
    c(i,j)=d(i,j)*weights(j);% cΪ��Ȩ�淶����,weightsΪȨ������
  end
end
cmax=max(c);
cmin=min(c);
for i=1:rows
  c1=c(i,:)-cmax;
  s1(i)=norm(c1);%���������������ľ���
  c2=c(i,:)-cmin;
  s2(i)=norm(c2);%���������������ľ���
  T(i)=s2(i)/(s1(i)+s2(i));%������������ۺ�����ָ��
end
T=T';
disp('����ҵ���ۺ�����ָ��TΪ��')
T
