function y = vout(zl,z0,wl,d)
   beta = 2*pi/wl;
   gamma = (zl-z0)/(zl+z0);
   y =  abs(1 + gamma*exp(-1i*2*beta*d));
end