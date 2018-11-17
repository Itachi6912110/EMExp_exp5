d = linspace(1.5, 7.5);
%e = 0.1;
lamda = 4;
z0 = 50;
%gamma = 0.768;
%gamma = 0.359;
gamma = 0.2024;

zl= (1+gamma)/(1-gamma);
ve = zeros(1,length(d));
for i = 1:length(d)
   vtemp = vout(zl,z0,lamda,d(i));
   ve(i) = vtemp^2;
end

dexp = [7.5	7.3	7.1	6.9	6.7	6.5	6.3	6.1	5.9	5.7	5.5	5.3	5.1	4.9	4.7	4.5	4.3	4.1	3.9	3.7	3.5	3.3	3.1	2.9	2.7	2.5	2.3	2.1	1.9	1.7	1.5]
%veexp = [0.085	0.234	0.287	0.288	0.275	0.252	0.218	0.171	0.089	0.007	0.099	0.238	0.286	0.29	0.275	0.252	0.223	0.184	0.103	0.007	0.094	0.239	0.282	0.289	0.276	0.257	0.225	0.181	0.104	0.005	0.086]
%veexp = [0.169	0.219	0.234	0.232	0.221	0.195	0.157	0.106	0.063	0.081	0.157	0.205	0.221	0.22	0.209	0.187	0.151	0.11	0.052	0.088	0.162	0.208	0.231	0.226	0.212	0.19	0.148	0.101	0.055	0.073	0.156]
veexp = [0.164	0.192	0.2	0.193	0.181	0.16	0.13	0.098	0.088	0.112	0.165	0.191	0.193	0.188	0.176	0.159	0.127	0.096	0.09	0.12	0.158	0.185	0.195	0.194	0.183	0.162	0.131	0.1	0.09	0.118	0.159]

k = mean(veexp) / mean(ve);

for i = 1:length(d)
   ve(i) = k * ve(i);
end

figure;
plot(d, ve, dexp, veexp);
legend('Ideal','Experiment');
xlabel('distance(cm) (load->generator)')
ylabel('e(V^2)')
title('e distribution on transmission line (VSWR=1.507)');