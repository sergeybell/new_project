clear all
x=0:0.5:40;
n=10;
n2=n/2;
f=1/(2^n2*gamma(n2))*x.^(n2-1).*exp(-x/2);
plot(x,f,'g')

x=0:0.5:40;
X=Norm_1(30,sqrt(60));
plot(x,fff(X,x),'r')
k=0.2:0.2:6;
I=[2 3 4 10 20 30];
figure,
for n=I P=p_Ellipsoid(k,n);
    plot(k,P),hold on,
end
clear all

k=[1 2 3];
P=1-exp(-0.5*k.^2)
W=p_Rayl(0.1:0.1:4,1,0:0.1:0.9);
r=0.1:0.1:3;
d=0:0.3:3;
W=p_Rayl(r,1,d);
[rr,dd]=meshgrid(r,d);
surf(rr,dd,W')
clear all

X=Norm_2([2;3],[3 4],0.4);
R=SmartRec([5;3],[4 8]);
N=1000;
Z=Gen(X,N);
n=Impact(R,Z);
n/N,p=Ver(X,R)
ShowAll(X,R,Z,'r.')

clear all
C=Circ(5);
R=SmartRec([3 6]);
c=[-4 5 7.5 -5 1 -2;6 1 -8.7 -2 -7 -3];
G={};
for i=1:3 
    G{i}=move(C,c(:,i));G{i+3}=move(R,c(:,i+3));
end

X=Norm_2([0;0],[5 3]); 
P=Ver(X,G), figure(5), 
ShowAll(G,'r',X,'g')
N=10000;
Z=Gen (X,N); 
for 
    k=1:6 m=Impact(G{k},Z); 
    Ps(k)=m/N;
end,
Ps

hold on,Show(Z(1:2000),'k.')
fi=2:2:90;
for i=1:45 
    Y=RotAxes(X,fi(i));U(i)=sum(Ver(Y,G)); 
end;
figure,
plot(fi,U)
[Um,I]= max(U)
Xm=RotAxes(X,46), 
figure(5), 
ShowEl(Xm)
U=[];
for i=1:8 
    U(i)=sum(Ver(Xm*0.98^i,G));
end;U

Xh=Xm*0.98^4, 
Z=sum(Ver(Xh*0.5,G))
X0=Xh*0.5+[1;1], 
P=Ver(X0,G), 
P0=sum(P), 
ShowEl(X0,1)