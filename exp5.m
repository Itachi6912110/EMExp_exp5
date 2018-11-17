d = linspace(0, 6, 1000); 
lamda = 4;
z0 = 50;
zl = [0,1000000, z0, 4*z0, 0.25*z0];
v1 = zeros(1,length(d));
v2 = zeros(1,length(d));
v3 = zeros(1,length(d));
v4 = zeros(1,length(d));
v5 = zeros(1,length(d));
i1 = zeros(1,length(d));
i2 = zeros(1,length(d));
i3 = zeros(1,length(d));
i4 = zeros(1,length(d));
i5 = zeros(1,length(d));
for i = 1:length(d)
	v1(i) = vout(zl(1),z0,lamda,d(i));
    v2(i) = vout(zl(2),z0,lamda,d(i));
    v3(i) = vout(zl(3),z0,lamda,d(i));
    v4(i) = vout(zl(4),z0,lamda,d(i));
    v5(i) = vout(zl(5),z0,lamda,d(i));
    i1(i) = iout(zl(1),z0,lamda,d(i));
    i2(i) = iout(zl(2),z0,lamda,d(i));
    i3(i) = iout(zl(3),z0,lamda,d(i));
    i4(i) = iout(zl(4),z0,lamda,d(i));
    i5(i) = iout(zl(5),z0,lamda,d(i));
end

figure;
plot(d, v1, d, v2, d, v3, d, v4, d, v5);
legend('ZL=0','ZL=Inf','ZL=Z0','ZL=4Z0','ZL=Z0/4');
xlabel('distance(cm) (load->generator)')
ylabel('Voltage(V)')
title('Voltage distribution on transmission line with various load');

figure;
plot(d, i1, d, i2, d, i3, d, i4, d, i5);
legend('ZL=0','ZL=Inf','ZL=Z0','ZL=4Z0','ZL=Z0/4');
xlabel('distance(cm) (load->generator)')
ylabel('Current(A)')
title('Current distribution on transmission line with various load');
