a = -sqrt(2);
b = 1;

alpha = 1.1;

f = @(x) abs(x).^ alpha;
int_esatto = (1 + 2.^((alpha+1)/2)) / (alpha+1);

toll = 10^-6;
maxN = 1024;

[int_trap, I_trap, step_trap, flag_trap] = RefineQuad(a,b,f,1,toll,maxN);
[int_cav, I_cav, step_cav, flag_cav] = RefineQuad(a,b,f,2,toll,maxN);



