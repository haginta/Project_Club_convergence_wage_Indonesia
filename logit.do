import excel "C:\Users\Harry\QUARCS Lab Dropbox\Harry Aginta\Statistik Ecommerce\wage convergence\Project_Club_convergence_wage_Indonesia\WS Labour_new.xlsx", sheet("logit") firstrow
quietly generate lngrdp = log(grdp)
quietly generate lngrdp2008 = log(gdp_2008)
tabulate clubs
tabulate clubs_real
tabulate clubs_real08

logit clubs real_wage_2008 lbr_prod_g lngrdp poverty
ologit club_real real_wage_2008 emp_manu pmtb_gdrp tpak lngrdp
ologit club_real08 real_wage_2008 emp_manu pmtb_gdrp tpak lngrdp

	mfx, predict(outcome(1))
	mfx, predict(outcome(2))
	mfx, predict(outcome(3))
