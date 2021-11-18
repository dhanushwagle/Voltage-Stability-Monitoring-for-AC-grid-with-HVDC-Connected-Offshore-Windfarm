data = readtable('video.csv');
V1 = data.V1_R + data.V1_I;
V2 = data.V2_R + data.V2_I;
I2 = data.I2_R + data.I2_I;
Z1 = (V1-V2)./I2;
Z2 = V2./I2;
Zthev = abs(Z1);
Zload = abs(Z2);
plot(data.t,Zthev,'b-');
xlabel('Time (sec)');
ylabel('Impedance (p.u.)');
hold on;
plot(data.t,Zload,'r--');
hold off;
title('Impedance Plots');
legend('|Zth|','|Zload|');