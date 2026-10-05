Case_3V = readtable('VG_3V.csv','NumHeaderLines',10,'ReadVariableNames',false);
Case_4V = readtable('VG_4V.csv','NumHeaderLines',10,'ReadVariableNames',false);
Case_5V = readtable('VG_5V.csv','NumHeaderLines',10,'ReadVariableNames',false);

y1 = smoothdata(Case_3V.Var2,'sgolay',15);
y2 = smoothdata(Case_4V.Var2,'sgolay',15);
y3 = smoothdata(Case_5V.Var2,'sgolay',15);

figure;
hold on;

plot(Case_3V.Var1, y1, 'LineWidth', 2);
plot(Case_4V.Var1, y2, 'LineWidth', 2);
plot(Case_5V.Var1, y3, 'LineWidth', 2);

xlabel('V_{DS} (V)', 'FontSize', 14);
ylabel('I_D (A)', 'FontSize', 14);

legend('V_G = 3V', 'V_G = 4V', 'V_G = 5V', ...
       'Location', 'best', 'FontSize', 16);

grid on;
xlim([0 7]);
ylim([0 7e-3]);

set(gca, 'FontSize', 16);

text(0.8,1.0e-3,'Triode','FontSize',12);
text(3.5,1.9e-3,'Saturation','FontSize',12);

text(1.2,2.3e-3,'Triode','FontSize',12);
text(4.0,3.7e-3,'Saturation','FontSize',12);

text(1.8,4.0e-3,'Triode','FontSize',12);
text(5.0,5.9e-3,'Saturation','FontSize',12);
hold off;