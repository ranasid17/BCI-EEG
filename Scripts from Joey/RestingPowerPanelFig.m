% %%Motor
% figure
% 
% subplot(2,5,1)
% [r p] = corr(d_ipsi_mean_relDiff,ARATchange,'type','Spearman');
% sprintf('Ipsilateral Motor Electrode Relative Delta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
% plot(d_ipsi_mean_relDiff,ARATchange,'b.','MarkerSize',24)
% title(sprintf('Ipsi Delta, r = %5.4f, p = %5.4f',r,p))
% ylabel('Motor Recovery (ARAT Change)')
% h = lsline;
% set(h(1),'LineWidth',4);
% if p>0.05
%     set(h(1),'LineStyle',':');
% end
% 
% subplot(2,5,2)
% [r p] = corr(t_ipsi_mean_relDiff,ARATchange,'type','Spearman');
% sprintf('Ipsilateral Motor Electrode Relative Theta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
% plot(t_ipsi_mean_relDiff,ARATchange,'b.','MarkerSize',24)
% title(sprintf('Ipsi Theta, r = %5.4f, p = %5.4f',r,p))
% h = lsline;
% set(h(1),'LineWidth',4);
% if p>0.05
%     set(h(1),'LineStyle',':');
% end
% 
% subplot(2,5,3)
% [r p] = corr(a_ipsi_mean_relDiff,ARATchange,'type','Spearman');
% sprintf('Ipsilateral Motor Electrode Relative Alpha Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
% plot(a_ipsi_mean_relDiff,ARATchange,'b.','MarkerSize',24)
% title(sprintf('Ipsi Mu, r = %5.4f, p = %5.4f',r,p))
% h = lsline;
% set(h(1),'LineWidth',4);
% if p>0.05
%     set(h(1),'LineStyle',':');
% end
% 
% subplot(2,5,4)
% [r p] = corr(b_ipsi_mean_relDiff,ARATchange,'type','Spearman');
% sprintf('Ipsilateral Motor Electrode Relative Beta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
% plot(b_ipsi_mean_relDiff,ARATchange,'b.','MarkerSize',24)
% title(sprintf('Ipsi Beta, r = %5.4f, p = %5.4f',r,p))
% h = lsline;
% set(h(1),'LineWidth',4);
% if p>0.05
%     set(h(1),'LineStyle',':');
% end
% 
% subplot(2,5,5)
% [r p] = corr(f_ipsi_mean_relDiff,ARATchange,'type','Spearman');
% sprintf('Ipsilateral Motor Electrode Relative Feature Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
% plot(f_ipsi_mean_relDiff,ARATchange,'b.','MarkerSize',24)
% title(sprintf('Ipsi Feature, r = %5.4f, p = %5.4f',r,p))
% h = lsline;
% set(h(1),'LineWidth',4);
% if p>0.05
%     set(h(1),'LineStyle',':');
% end
% 
% subplot(2,5,6)
% [r p] = corr(d_contra_mean_relDiff,ARATchange,'type','Spearman');
% sprintf('Contralateral Motor Electrode Relative Delta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
% plot(d_contra_mean_relDiff,ARATchange,'r.','MarkerSize',24)
% title(sprintf('Contra Delta, r = %5.4f, p = %5.4f',r,p))
% xlabel('Power Change Relative to Baseline')
% ylabel('Motor Recovery (ARAT Change)')
% h = lsline;
% set(h(1),'LineWidth',4);
% if p>0.05
%     set(h(1),'LineStyle',':');
% end
% 
% subplot(2,5,7)
% [r p] = corr(t_contra_mean_relDiff,ARATchange,'type','Spearman');
% sprintf('Contralateral Motor Electrode Relative Theta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
% plot(t_contra_mean_relDiff,ARATchange,'r.','MarkerSize',24)
% title(sprintf('Contra Theta, r = %5.4f, p = %5.4f',r,p))
% h = lsline;
% set(h(1),'LineWidth',4);
% if p>0.05
%     set(h(1),'LineStyle',':');
% end
% 
% subplot(2,5,8)
% [r p] = corr(a_contra_mean_relDiff,ARATchange,'type','Spearman');
% sprintf('Contralateral Motor Electrode Relative Alpha Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
% plot(a_contra_mean_relDiff,ARATchange,'r.','MarkerSize',24)
% title(sprintf('Contra Mu, r = %5.4f, p = %5.4f',r,p))
% h = lsline;
% set(h(1),'LineWidth',4);
% if p>0.05
%     set(h(1),'LineStyle',':');
% end
% 
% subplot(2,5,9)
% [r p] = corr(b_contra_mean_relDiff,ARATchange,'type','Spearman');
% sprintf('Contralateral Motor Electrode Relative Beta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
% plot(b_contra_mean_relDiff,ARATchange,'r.','MarkerSize',24)
% title(sprintf('Contra Beta, r = %5.4f, p = %5.4f',r,p))
% h = lsline;
% set(h(1),'LineWidth',4);
% if p>0.05
%     set(h(1),'LineStyle',':');
% end
% 
% subplot(2,5,10)
% [r p] = corr(f_contra_mean_relDiff,ARATchange,'type','Spearman');
% sprintf('Contralateral Motor Electrode Relative Feature Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
% plot(f_contra_mean_relDiff,ARATchange,'r.','MarkerSize',24)
% title(sprintf('Contra Feature, r = %5.4f, p = %5.4f',r,p))
% h = lsline;
% set(h(1),'LineWidth',4);
% if p>0.05
%     set(h(1),'LineStyle',':');
% end
% 
% %% Frontal
% figure
% 
% subplot(2,5,1)
% [r p] = corr(fr_d_ipsi_mean_relDiff,ARATchange,'type','Spearman');
% sprintf('Ipsilateral Frontal Electrode Relative Delta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
% plot(fr_d_ipsi_mean_relDiff,ARATchange,'b.','MarkerSize',24)
% title(sprintf('Frontal Ipsi Delta, r = %5.4f, p = %5.4f',r,p))
% ylabel('Motor Recovery (ARAT Change)')
% h = lsline;
% set(h(1),'LineWidth',4);
% if p>0.05
%     set(h(1),'LineStyle',':');
% end
% 
% subplot(2,5,2)
% [r p] = corr(fr_t_ipsi_mean_relDiff,ARATchange,'type','Spearman');
% sprintf('Ipsilateral Frontal Electrode Relative Theta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
% plot(fr_t_ipsi_mean_relDiff,ARATchange,'b.','MarkerSize',24)
% title(sprintf('Ipsi Theta, r = %5.4f, p = %5.4f',r,p))
% h = lsline;
% set(h(1),'LineWidth',4);
% if p>0.05
%     set(h(1),'LineStyle',':');
% end
% 
% subplot(2,5,3)
% [r p] = corr(fr_a_ipsi_mean_relDiff,ARATchange,'type','Spearman');
% sprintf('Ipsilateral Frontal Electrode Relative Alpha Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
% plot(fr_a_ipsi_mean_relDiff,ARATchange,'b.','MarkerSize',24)
% title(sprintf('Ipsi Mu, r = %5.4f, p = %5.4f',r,p))
% h = lsline;
% set(h(1),'LineWidth',4);
% if p>0.05
%     set(h(1),'LineStyle',':');
% end
% 
% subplot(2,5,4)
% [r p] = corr(fr_b_ipsi_mean_relDiff,ARATchange,'type','Spearman');
% sprintf('Ipsilateral Frontal Electrode Relative Beta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
% plot(fr_b_ipsi_mean_relDiff,ARATchange,'b.','MarkerSize',24)
% title(sprintf('Ipsi Beta, r = %5.4f, p = %5.4f',r,p))
% h = lsline;
% set(h(1),'LineWidth',4);
% if p>0.05
%     set(h(1),'LineStyle',':');
% end
% 
% subplot(2,5,5)
% [r p] = corr(fr_f_ipsi_mean_relDiff,ARATchange,'type','Spearman');
% sprintf('Ipsilateral Frontal Electrode Relative Feature Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
% plot(fr_f_ipsi_mean_relDiff,ARATchange,'b.','MarkerSize',24)
% title(sprintf('Ipsi Feature, r = %5.4f, p = %5.4f',r,p))
% h = lsline;
% set(h(1),'LineWidth',4);
% if p>0.05
%     set(h(1),'LineStyle',':');
% end
% 
% subplot(2,5,6)
% [r p] = corr(fr_d_contra_mean_relDiff,ARATchange,'type','Spearman');
% sprintf('Contralateral Frontal Electrode Relative Delta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
% plot(fr_d_contra_mean_relDiff,ARATchange,'r.','MarkerSize',24)
% title(sprintf('Contra Delta, r = %5.4f, p = %5.4f',r,p))
% xlabel('Power Change Relative to Baseline')
% ylabel('Motor Recovery (ARAT Change)')
% h = lsline;
% set(h(1),'LineWidth',4);
% if p>0.05
%     set(h(1),'LineStyle',':');
% end
% 
% subplot(2,5,7)
% [r p] = corr(fr_t_contra_mean_relDiff,ARATchange,'type','Spearman');
% sprintf('Contralateral Frontal Electrode Relative Theta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
% plot(fr_t_contra_mean_relDiff,ARATchange,'r.','MarkerSize',24)
% title(sprintf('Contra Theta, r = %5.4f, p = %5.4f',r,p))
% h = lsline;
% set(h(1),'LineWidth',4);
% if p>0.05
%     set(h(1),'LineStyle',':');
% end
% 
% subplot(2,5,8)
% [r p] = corr(fr_a_contra_mean_relDiff,ARATchange,'type','Spearman');
% sprintf('Contralateral Frontal Electrode Relative Alpha Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
% plot(fr_a_contra_mean_relDiff,ARATchange,'r.','MarkerSize',24)
% title(sprintf('Contra Mu, r = %5.4f, p = %5.4f',r,p))
% h = lsline;
% set(h(1),'LineWidth',4);
% if p>0.05
%     set(h(1),'LineStyle',':');
% end
% 
% subplot(2,5,9)
% [r p] = corr(fr_b_contra_mean_relDiff,ARATchange,'type','Spearman');
% sprintf('Contralateral Frontal Electrode Relative Beta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
% plot(fr_b_contra_mean_relDiff,ARATchange,'r.','MarkerSize',24)
% title(sprintf('Contra Beta, r = %5.4f, p = %5.4f',r,p))
% h = lsline;
% set(h(1),'LineWidth',4);
% if p>0.05
%     set(h(1),'LineStyle',':');
% end
% 
% subplot(2,5,10)
% [r p] = corr(fr_f_contra_mean_relDiff,ARATchange,'type','Spearman');
% sprintf('Contralateral Frontal Electrode Relative Feature Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
% plot(fr_f_contra_mean_relDiff,ARATchange,'r.','MarkerSize',24)
% title(sprintf('Contra Feature, r = %5.4f, p = %5.4f',r,p))
% h = lsline;
% set(h(1),'LineWidth',4);
% if p>0.05
%     set(h(1),'LineStyle',':');
% end

%% Motor - UPDATES FOR PAPER

%define colors
rd = [0.7 0.1 0.1];
% blu = [0 0.447 0.741];
blu = [0.301 0.745 0.933]; %actually cyan
grn = [0.466 0.674 0.188];
% oj = [0.85 0.325 0.098];
oj = [0.494 0.184 0.556]; %actually purple

figure

subplot(2,5,1)
[r p] = corr(d_ipsi_mean_relDiff,ARATchange,'type','Spearman');
sprintf('Contralesional Motor Electrode Relative Delta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
plot(d_ipsi_mean_relDiff,ARATchange,'.','Color',blu,'MarkerSize',24)
title(sprintf('r = %5.4f, p = %5.4f',r,p))
ylabel('Motor Recovery (ARAT Change)')
conditional_lsline;

subplot(2,5,2)
[r p] = corr(t_ipsi_mean_relDiff,ARATchange,'type','Spearman');
sprintf('Contralesional Motor Electrode Relative Theta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
plot(t_ipsi_mean_relDiff,ARATchange,'.','Color',blu,'MarkerSize',24)
title(sprintf('r = %5.4f, p = %5.4f',r,p))
conditional_lsline;

subplot(2,5,3)
[r p] = corr(a_ipsi_mean_relDiff,ARATchange,'type','Spearman');
sprintf('Contralesional Motor Electrode Relative Alpha Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
plot(a_ipsi_mean_relDiff,ARATchange,'.','Color',blu,'MarkerSize',24)
title(sprintf('r = %5.4f, p = %5.4f',r,p))
conditional_lsline;

subplot(2,5,4)
[r p] = corr(b_ipsi_mean_relDiff,ARATchange,'type','Spearman');
sprintf('Contralesional Motor Electrode Relative Beta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
plot(b_ipsi_mean_relDiff,ARATchange,'.','Color',blu,'MarkerSize',24)
title(sprintf('r = %5.4f, p = %5.4f',r,p))
conditional_lsline;

subplot(2,5,5)
[r p] = corr(f_ipsi_mean_relDiff,ARATchange,'type','Spearman');
sprintf('Contralesional Motor Electrode Relative Feature Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
plot(f_ipsi_mean_relDiff,ARATchange,'.','Color',blu,'MarkerSize',24)
title(sprintf('r = %5.4f, p = %5.4f',r,p))
conditional_lsline;

subplot(2,5,6)
[r p] = corr(d_contra_mean_relDiff,ARATchange,'type','Spearman');
sprintf('Ipsilesional Motor Electrode Relative Delta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
plot(d_contra_mean_relDiff,ARATchange,'.','Color',rd,'MarkerSize',24)
title(sprintf('r = %5.4f, p = %5.4f',r,p))
xlabel('Power Change Relative to Baseline')
ylabel('Motor Recovery (ARAT Change)')
conditional_lsline;

subplot(2,5,7)
[r p] = corr(t_contra_mean_relDiff,ARATchange,'type','Spearman');
sprintf('Ipsilesional Motor Electrode Relative Theta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
plot(t_contra_mean_relDiff,ARATchange,'.','Color',rd,'MarkerSize',24)
title(sprintf('r = %5.4f, p = %5.4f',r,p))
conditional_lsline;

subplot(2,5,8)
[r p] = corr(a_contra_mean_relDiff,ARATchange,'type','Spearman');
sprintf('Ipsilesional Motor Electrode Relative Alpha Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
plot(a_contra_mean_relDiff,ARATchange,'.','Color',rd,'MarkerSize',24)
title(sprintf('r = %5.4f, p = %5.4f',r,p))
conditional_lsline;

subplot(2,5,9)
[r p] = corr(b_contra_mean_relDiff,ARATchange,'type','Spearman');
sprintf('Ipsilesional Motor Electrode Relative Beta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
plot(b_contra_mean_relDiff,ARATchange,'.','Color',rd,'MarkerSize',24)
title(sprintf('r = %5.4f, p = %5.4f',r,p))
conditional_lsline;

subplot(2,5,10)
[r p] = corr(f_contra_mean_relDiff,ARATchange,'type','Spearman');
sprintf('Ipsilesional Motor Electrode Relative Feature Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
plot(f_contra_mean_relDiff,ARATchange,'.','Color',rd,'MarkerSize',24)
title(sprintf('r = %5.4f, p = %5.4f',r,p))
conditional_lsline;

%% Frontal
figure

subplot(2,5,1)
[r p] = corr(fr_d_ipsi_mean_relDiff,ARATchange,'type','Spearman');
sprintf('Contralesional Frontal Electrode Relative Delta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
plot(fr_d_ipsi_mean_relDiff,ARATchange,'.','Color',grn,'MarkerSize',24)
title(sprintf('r = %5.4f, p = %5.4f',r,p))
ylabel('Motor Recovery (ARAT Change)')
conditional_lsline;

subplot(2,5,2)
[r p] = corr(fr_t_ipsi_mean_relDiff,ARATchange,'type','Spearman');
sprintf('Contralesional Frontal Electrode Relative Theta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
plot(fr_t_ipsi_mean_relDiff,ARATchange,'.','Color',grn,'MarkerSize',24)
title(sprintf('r = %5.4f, p = %5.4f',r,p))
conditional_lsline;

subplot(2,5,3)
[r p] = corr(fr_a_ipsi_mean_relDiff,ARATchange,'type','Spearman');
sprintf('Contralesional Frontal Electrode Relative Alpha Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
plot(fr_a_ipsi_mean_relDiff,ARATchange,'.','Color',grn,'MarkerSize',24)
title(sprintf('r = %5.4f, p = %5.4f',r,p))
conditional_lsline;

subplot(2,5,4)
[r p] = corr(fr_b_ipsi_mean_relDiff,ARATchange,'type','Spearman');
sprintf('Contralesional Frontal Electrode Relative Beta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
plot(fr_b_ipsi_mean_relDiff,ARATchange,'.','Color',grn,'MarkerSize',24)
title(sprintf('r = %5.4f, p = %5.4f',r,p))
conditional_lsline;

subplot(2,5,5)
[r p] = corr(fr_f_ipsi_mean_relDiff,ARATchange,'type','Spearman');
sprintf('Contralesional Frontal Electrode Relative Feature Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
plot(fr_f_ipsi_mean_relDiff,ARATchange,'.','Color',grn,'MarkerSize',24)
title(sprintf('r = %5.4f, p = %5.4f',r,p))
conditional_lsline;

subplot(2,5,6)
[r p] = corr(fr_d_contra_mean_relDiff,ARATchange,'type','Spearman');
sprintf('Ipsilesional Frontal Electrode Relative Delta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
plot(fr_d_contra_mean_relDiff,ARATchange,'.','Color',oj,'MarkerSize',24)
title(sprintf('r = %5.4f, p = %5.4f',r,p))
xlabel('Power Change Relative to Baseline')
ylabel('Motor Recovery (ARAT Change)')
conditional_lsline;

subplot(2,5,7)
[r p] = corr(fr_t_contra_mean_relDiff,ARATchange,'type','Spearman');
sprintf('Ipsilesional Frontal Electrode Relative Theta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
plot(fr_t_contra_mean_relDiff,ARATchange,'.','Color',oj,'MarkerSize',24)
title(sprintf('r = %5.4f, p = %5.4f',r,p))
conditional_lsline;

subplot(2,5,8)
[r p] = corr(fr_a_contra_mean_relDiff,ARATchange,'type','Spearman');
sprintf('Ipsilesional Frontal Electrode Relative Alpha Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
plot(fr_a_contra_mean_relDiff,ARATchange,'.','Color',oj,'MarkerSize',24)
title(sprintf('r = %5.4f, p = %5.4f',r,p))
conditional_lsline;

subplot(2,5,9)
[r p] = corr(fr_b_contra_mean_relDiff,ARATchange,'type','Spearman');
sprintf('Ipsilesional Frontal Electrode Relative Beta Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
plot(fr_b_contra_mean_relDiff,ARATchange,'.','Color',oj,'MarkerSize',24)
title(sprintf('r = %5.4f, p = %5.4f',r,p))
conditional_lsline;

subplot(2,5,10)
[r p] = corr(fr_f_contra_mean_relDiff,ARATchange,'type','Spearman');
sprintf('Ipsilesional Frontal Electrode Relative Feature Power Change Correlation with ARAT Change: \nr = %5.4f, p = %5.4f',r,p)
plot(fr_f_contra_mean_relDiff,ARATchange,'.','Color',oj,'MarkerSize',24)
title(sprintf('r = %5.4f, p = %5.4f',r,p))
conditional_lsline;