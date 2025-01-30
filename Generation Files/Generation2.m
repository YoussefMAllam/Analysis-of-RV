size=1000000;

%X2~N(3,4) Y2~N(-5,2)
X2J=3+4*randn(1,size);
Y2J=-5+2*randn(1,size);
Joint_XY2=[X2J; Y2J];

%X3~Gamma(2,10) Y3~Bin(4,0.5)
X3J=gamrnd(2,10,1,size);
Y3J=binornd(4,0.5,1,size);
Joint_XY3=[X3J;Y3J];

%X4~exp(0.05) Y4=3X4+2
X4J=exprnd(0.05,1,size);
Y4J=3*X4J+2;
Joint_XY4=[X4J; Y4J];

%X5~U={-1,1} Y5=X5+n n~N(0,0.5)
X5J=zeros(1,size);
for i=1: 2: size
    X5J(i)=-1;
    X5J(i+1)=1;
end
n1=0.5*randn(1,size);
Y5J=X5J+n1;
Joint_XY5=[X5J;Y5J];
