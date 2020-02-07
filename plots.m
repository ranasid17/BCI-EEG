% Motor - UPDATES FOR PAPER
close all

%define colors
rd = [0.7 0.1 0.1];
% blu = [0 0.447 0.741];
blu = [0.301 0.745 0.933]; %actually cyan
grn = [0.466 0.674 0.188];
% oj = [0.85 0.325 0.098];
oj = [0.494 0.184 0.556]; %actually purple

figure
%ALPHA ipsi med change
subplot(2,5,3)
[r, p] = corrcoef(centDist_alpha_ipsi, ARATchange);
sprintf('Contralesional Motor Electrode Relative Delta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r(1,2),p(1,2))
plot(centDist_alpha_ipsi, ARATchange,'.','Color',blu,'MarkerSize',24)
title(sprintf('Alpha Band, r = %5.4f, p = %5.4f',r(1,2),p(1,2)))


%ALPHA contra med change
subplot(2,5,8)
[r p] = corrcoef(centDist_alpha_contra, ARATchange);
sprintf('Contralesional Motor Electrode Relative Theta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r(1,2),p(1,2))
plot(centDist_alpha_contra, ARATchange,'.','Color',rd,'MarkerSize',24)
title(sprintf('Alpha Band, r = %5.4f, p = %5.4f',r(1,2),p(1,2)))

%BETA ipsi med change
subplot(2,5,4)
[r p] = corrcoef(centDist_beta_ipsi, ARATchange);
sprintf('Contralesional Motor Electrode Relative Alpha Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r(1,2),p(1,2))
plot(centDist_beta_ipsi,ARATchange,'.','Color',blu,'MarkerSize',24)
title(sprintf('Beta Band, r = %5.4f, p = %5.4f',r(1,2),p(1,2)))

%BETA contra med change
subplot(2,5,9)
[r p] = corrcoef(centDist_beta_contra, ARATchange);
sprintf('Contralesional Motor Electrode Relative Alpha Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r(1,2),p(1,2))
plot(centDist_beta_contra,ARATchange,'.','Color',rd,'MarkerSize',24)
title(sprintf('Beta Band, r = %5.4f, p = %5.4f',r(1,2),p(1,2)))

%DELTA Ipsi med change
subplot(2,5,1)
[r p] = corrcoef(centDist_delta_ipsi, ARATchange);
sprintf('Contralesional Motor Electrode Relative Alpha Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r(1,2),p(1,2))
plot(centDist_delta_ipsi,ARATchange,'.','Color',blu,'MarkerSize',24)
title(sprintf('Delta Band, r = %5.4f, p = %5.4f',r(1,2),p(1,2)))
xlabel({'Average Change in ';
'Ipsilateral Band Variation'})
ylabel('Motor Recovery (ARAT Change)') 

%DELTA contra med change
subplot(2,5,6)
[r p] = corrcoef(centDist_delta_contra, ARATchange);
sprintf('Contralesional Motor Electrode Relative Alpha Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r(1,2),p(1,2))
plot(centDist_delta_contra,ARATchange,'.','Color',rd,'MarkerSize',24)
title(sprintf('Delta Band, r = %5.4f, p = %5.4f',r(1,2),p(1,2)))
xlabel({'Average Change in ';
'Contralateral Band Variation'})
ylabel('Motor Recovery (ARAT Change)') 

%FT FRQ ipsi med change
subplot(2,5,5)
[r p] = corrcoef(centDist_featfrq_ipsi, ARATchange);
sprintf('Contralesional Motor Electrode Relative Alpha Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r(1,2),p(1,2))
plot(centDist_featfrq_ipsi,ARATchange,'.','Color',blu,'MarkerSize',24)
title(sprintf('Feat. Frq. Band, r = %5.4f, p = %5.4f',r(1,2),p(1,2)))

%FT FRQ contra med change
subplot(2,5,10)
[r p] = corrcoef(centDist_featfrq_contra, ARATchange);
sprintf('Contralesional Motor Electrode Relative Alpha Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r(1,2),p(1,2))
plot(centDist_beta_contra,ARATchange,'.','Color',rd,'MarkerSize',24)
title(sprintf('Feat. Frq. Band, r = %5.4f, p = %5.4f',r(1,2),p(1,2)))

%THETA ipsi med change
subplot(2,5,2)
[r p] = corrcoef(centDist_theta_ipsi, ARATchange);
sprintf('Contralesional Motor Electrode Relative Alpha Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r(1,2),p(1,2))

plot(centDist_theta_ipsi,ARATchange,'.','Color',blu,'MarkerSize',24)
title(sprintf('Theta Band, r = %5.4f, p = %5.4f',r(1,2),p(1,2)))

%THETA contra med change
subplot(2,5,7)
[r p] = corrcoef(centDist_theta_contra, ARATchange);
sprintf('Contralesional Motor Electrode Relative Alpha Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r(1,2),p(1,2))
plot(centDist_theta_contra,ARATchange,'.','Color',rd,'MarkerSize',24)
title(sprintf('Contralat Theta Band, r = %5.4f, p = %5.4f',r(1,2),p(1,2)))

