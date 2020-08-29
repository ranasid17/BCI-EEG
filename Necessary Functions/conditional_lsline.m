% adds bold, solid least square regression trend line if p < 0.05
% adds dotted lsline if 0.05 < p < 0.10
% adds nothing if p > 0.10

if p <= 0.05
    h = lsline;
    set(h(1),'LineWidth',4);
elseif (p>0.05) & (p<=0.1)
    h = lsline;
    set(h(1),'LineWidth',4,'LineStyle',':');
end