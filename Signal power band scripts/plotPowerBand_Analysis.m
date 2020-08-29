% Goal: 
%   1) Plot results of 'PCA_xFrqBand.m' scripts in publishable format 
%   2) Calculate Spearman Corr Coeff and test it for significance

% NOTE: This plotting script is NOT compatable with 'PowerBand_Analysis.m' (file contained in this directory)! 
%       This is to prevent unauthorized access to printed figures. Please contact author directly for PCA_xFrqBand.m 
%       scripts which are compatable with this file. Else use provided graphing functions in 'PB_A.m'. 

%Contra, delta
subplot(2,5,1)
[r_delta_contra, p_delta_contra] = corrcoef(centDist_delta_contra, ARATchange);
scatter(centDist_delta_ipsi,ARATchange,'b')
xlabel('Delta Band')
ylabel('Motor Recovery (ARAT Change)')
conditional_lsline;

%Contra, Theta
subplot(2,5,2)
[r_theta_contra, p_theta_contra] = corrcoef(centDist_theta_contra, ARATchange);
scatter(centDist_theta_contra, ARATchange, 'b')
xlabel('Delta Band')
ylabel('Motor Recovery (ARAT Change)')
conditional_lsline;

%Contra, alpha
subplot(2,5,3)
[r_alpha_contra, p_alpha_contra] = corrcoef(centDist_alpha_contra, ARATchange);
scatter(centDist_alpha_ipsi,ARATchange,'b')
title('Change in Mean Contralateral Power Band Spectra Post-BCI Therapy')
xlabel('Alpha Band')
ylabel('Motor Recovery (ARAT Change)')
conditional_lsline;

%Contra, Beta
subplot(2,5,4)
[r_beta_contra, p_beta_contra] = corrcoef(centDist_beta_contra, ARATchange);
scatter(centDist_beta_contra,ARATchange,'b')
xlabel('Beta Band')
ylabel('Motor Recovery (ARAT Change)')
conditional_lsline;

%Contra, Ft Frq
subplot(2,5,5)
[r_ft_contra, p_ft_contra] = corrcoef(centDist_ft_contra, ARATchange);
scatter(centDist_beta_contra, ARATchange,'b')
xlabel('Control Feat Frq')
ylabel('Motor Recovery (ARAT Change)')
conditional_lsline;


%Ipsi, delta
subplot(2,5,6)
[r_delta_ipsi, p_delta_ipsi] = corrcoef(centDist_delta_ipsi, ARATchange);
scatter(centDist_delta_ipsi,ARATchange,'r')
xlabel('Delta Band')
ylabel('Motor Recovery (ARAT Change)')
conditional_lsline;

%Ipsi, theta
subplot(2,5,7)
[r_theta_ipsi, p_theta_ipsi] = corrcoef(centDist_delta_ipsi, ARATchange); 
scatter(centDist_delta_ipsi, ARATchange, 'r')
xlabel('Theta Band') 
ylabel('Motor Recovery (ARAT Change)') 
conditional_lsline

%Ipsi, Alpha 
subplot(2,5,8)
[r_alpha_ipsi, p_alpha_ipsi] = corrcoef(centDist_alpha_ipsi, ARATchange);
scatter(centDist_alpha_ipsi,ARATchange,'r')
title('Change in Mean Ispilateral Power Band Spectra Post-BCI Therapy')
xlabel('Alpha Band')
ylabel('Motor Recovery (ARAT Change)')
conditional_lsline;

%Ipsi, beta
subplot(2,5,9)
[r_beta_ipsi, p_beta_ipsi] = corrcoef(centDist_beta_ipsi, ARATchange);
scatter(centDist_beta_ipsi,ARATchange,'r')
xlabel('Beta Band')
ylabel('Motor Recovery (ARAT Change)')
conditional_lsline;

%Ipsi, FT FRQ 
subplot(2,5,10)
[r_ft_ipsi, p_ft_ipsi] = corrcoef(centDist_ft_ipsi, ARATchange);
scatter(centDist_ft_ipsi, ARATchange,'r')
xlabel('Control Feat. Frq')
ylabel('Motor Recovery (ARAT Change)')
conditional_lsline;

