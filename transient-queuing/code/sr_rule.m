f1 = figure;
c = 1.42;
r = 1:1:50;
b = round(c*sqrt(r));
k = r + b; 

%-------n1
costB = b*0.0230084;
costR = r*0.04749975;
totalCosr = costR + costB;

costOnlyR = costR + b*0.04749975;

savings = (costOnlyR - totalCosr)./costOnlyR;
yi = smooth(savings);
plot(k,yi*100,'LineWidth',2, 'color', 'b');

hold on

%------e2
over = 1.25;
k = r*over + c*sqrt(r*over); 
b_over = round(k) - r;
costB = b_over*0.0230084;
costR = r*0.04749975;
totalCosr = costR + costB;

costOnlyR = round(k)*0.04749975;

savings = (costOnlyR - totalCosr)./costOnlyR;
yi = smooth(savings);
max(savings)
plot(k,yi*100,'--','LineWidth',2, 'color', 'r');
hold off
title('Cost Savings Using Burstable Instances','FontSize',26);
ylim([0 40])
xlim([0 60]);
ylabel('Savings (%)','FontSize',26) ;
a = legend('No Overprovisioning', 'With Overprovisioning of 25%')
set(gca,'xtick',[5:5:60],'FontSize',20)
set(gca,'ytick',[0:5:40],'FontSize',20)
f1.Position = [10 10 900 500]; 
xlabel('# of servers (k)','FontSize',26) 
print -depsc burstable