clear all
% Part 1
crsp=readtable("testData.csv");

% Part 2
crsp.DateOfObservation=num2str(crsp.DateOfObservation);
crsp.datenum=datenum(crsp.DateOfObservation,'yyyymmdd');
crsp.year=year(crsp.datenum);
crsp.month=month(crsp.datenum);

% Part 4
crsp.momentum = NaN(height(crsp),1);
for i = 1:height(crsp)
    crsp.momentum(i) = getMomentum(crsp.PERMNO(i), crsp.year(i), crsp.month(i), crsp)
end

% Part 5
dates = unique(crsp.datenum);
momentum = table(dates, year(dates), month(dates), 'VariableNames', {'Date','Year','Month'});
for j = 1:size(dates)
    momentum.mom1(j) = getDecile(momentum.Year(j), momentum.Month(j), false, crsp);
    momentum.mom10(j) = getDecile(momentum.Year(j), momentum.Month(j), true, crsp);
    momentum.mom(j) = momentum.mom10(j) - momentum.mom1(j);
end

% Part 6
momentum.cumulativeRet = cumsum(momentum.mom);
