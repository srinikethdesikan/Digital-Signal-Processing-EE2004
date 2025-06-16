%The DFT as a Matrix Computation
disp('Enter first the signal and then the zero padding below.');%For some reason, the input statements are not displayed sometimes
x=input('Enter Signal');
Z=input('Enter zero padding');
L=length(x);
N=L+Z;
xb=zeros(Z,1);
x=[x;xb];
W_N=zeros(N,N);
for i=0:N-1
    for j=0:N-1
        W_N(i+1,j+1)=exp(1j*2*pi*i*j/N);
    end
end
X=W_N*x;
disp(X);


% Plotting
n = 0:N-1;

subplot(2,1,1);
stem(n, real(X), 'filled');
title('Real Part of DFT');
xlabel('Index');
ylabel('Real(X)');

subplot(2,1,2);
stem(n, imag(X), 'filled');
title('Imaginary Part of DFT');
xlabel('Index');
ylabel('Imag(X)');
