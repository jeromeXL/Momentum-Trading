function [decileReturns] = getDecile(year, month, topBool, crsp)
    allReturns = crsp.adjustedPrice(crsp.year==year & crsp.month==month);
    sortedReturns = sort(allReturns);
    q = quantile(sortedReturns, 10);

    if topBool
        decile_cutoff = q(10);
        decileReturns = mean(sortedReturns(sortedReturns>=decile_cutoff));
    else 
        decile_cutoff = q(1);
        decileReturns = mean(sortedReturns(sortedReturns<=decile_cutoff));
    end
end