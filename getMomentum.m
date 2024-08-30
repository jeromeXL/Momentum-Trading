function [momentum] = getMomentum(ThisPermo, thisYear, thisMonth, crsp)
    % finding end date
    if thisMonth==1
        endMonth=12;
    else 
        endMonth=thisMonth-1;
    end
   %finding start date (just different year)
   startdate=thisMonth;
    year=thisYear;
    momentum=crsp.adjustedPrice(crsp.PERMNO == ThisPermo & crsp.year == year & crsp.month==endMonth)/crsp.adjustedPrice(crsp.PERMNO == ThisPermo & crsp.year == year-1 & crsp.month==startdate);
        if isempty(momentum)
            momentum=NaN;
        end 
end