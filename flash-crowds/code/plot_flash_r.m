
f1 = figure;
t = 1:1:2000;
req = test(51:2050,2);
plot(t,req,'LineWidth',2,'color', 'k');
%grid;
title('(a)','FontSize',18);
set(gca,'xtick',[0:500:2050],'FontSize',15)
xlim([0 2050])
ylabel('Requests/s','FontSize',18) ;
set(gca, 'XTickLabel', [])
f1.Position = [10 10 900 250]; 
print -depsc plotg


f2 = figure;
av = test(51:2050,4);
av95 = test(51:2050,3);
%slo = 2*ones(1);

plot(t,av,'-', 'color', 'r','MarkerIndices',250:1000:length(av), 'MarkerSize',8,'LineWidth',2);
hold on
plot(t,av95,'--', 'color', 'b','MarkerIndices',250:1000:2050, 'MarkerSize',8,'LineWidth',2);
hold off
hold on
%grid;
set(gca,'xtick',[0:500:2050],'FontSize',15)
xlim([0 2050])
title('(b)','FontSize',18);
a = legend( 'Average Response Time', '95th Percentile')
ylabel('Response Time (ms)','FontSize',18) 
ylim([0 500])
set(a,'location','best')


f2.Position = [10 10 900 250]; 
set(gca, 'XTickLabel', [])
print -depsc ploth

hold off



f6 = figure;
nB = history(6:39,9);
nR = history(6:39,10);
nk = nB + nR;
t = 1:60:2000;
plot(t,nk,'-', 'color', 'm','MarkerIndices',250:1000:2000,'MarkerSize',8,'LineWidth',2);
title('(c)','FontSize',18);
ylim([0 9])
set(gca,'xtick',[0:500:2000],'FontSize',15)
xlim([0 2000])
ylabel('# of Instances','FontSize',18) 
set(a,'location','best')

f6.Position = [10 10 900 250]; 
set(gca, 'XTickLabel', [])
print -depsc ploti



f3 = figure;
cpuB = history(6:39,4)*100;
t = 1:60:2000;
plot(t,cpuB,'-', 'color', 'm','MarkerIndices',250:1000:2000,'MarkerSize',8,'LineWidth',2);
%grid;
set(gca,'xtick',[0:500:2000],'FontSize',15)
xlim([0 2000])
ylim([0 100])
title('(d)','FontSize',18);
ylabel('CPU Utilization (%)','FontSize',18) 
xlabel('Time (s)','FontSize',18) 
set(a,'location','best')

f3.Position = [10 10 900 250]; 
print -depsc plotj
