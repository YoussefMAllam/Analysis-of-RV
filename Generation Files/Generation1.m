size=1000000;

%X2=U~(-5,2)
Single_X2=zeros(1,size);
for i=1: size
    Single_X2(i)=-5+7*i/size;
end

%X3~N(3,4)
Single_X3=3+4*randn(1,size);

%X4~Bin(5,0.3)
Single_X4=binornd(5,0.3,1,size);

%X5~Poisson(10)
Single_X5=poissrnd(10, 1,size);


