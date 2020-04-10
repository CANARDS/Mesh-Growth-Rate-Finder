syms k
%defines a symbolic variable k
prompt= 'Enter the length of the edge:';
L=input(prompt);
%prompts user to input edge length 
prompt1= 'Enter the number of divisions:';
n=input(prompt1);
%prompts user to input number of divisions
prompt2= 'Enter first cell height:';
ds=input(prompt2);
%prompts user to input the first cell height. The first height for
%turbulent flows should be found from Y+ calculation
eq=ds*((1-k^n)/(1-k))==L;
%Since L = ds + ds*GR + ds*GR^2 + ds*GR^3 +....+ GR^n-1 => L =
%ds*(1+GR+GR^2+GR^3+....GR^n-1). We use the formula for the sum of the
%finite series to get the above equation
k=double(solve(eq,k));
%Gets values for the growth rate in decimal form
k=k(real(k)>0&imag(k)==0)
%selects only positive real number(s) from the many roots of the equation