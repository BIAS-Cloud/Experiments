cpuB = history1(9:117,2);
cpuR = history1(9:117,3);

mean_burstable = mean(cpuB)*100
mean_regular = mean(cpuR)*100

total = (mean_burstable + mean_regular)/2