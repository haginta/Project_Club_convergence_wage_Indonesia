**Imputation for wage A and wage B for North Kalimantan

import excel "C:\Users\Harry\QUARCS Lab Dropbox\Harry Aginta\Statistik Ecommerce\wage convergence\WS Labour_new.xlsx", sheet("mv_A") firstrow
cd "C:\Users\Harry\QUARCS Lab Dropbox\Harry Aginta\Statistik Ecommerce\wage convergence"
label var Yr Year
tset Yr
impute NorthKalimantan EastKalimantan Yr, gen(NorKal_Im)
export excel Yr EastKalimantan NorthKalimantan NorKal_Im using "NorKal_wage_A", firstrow(variables)
clear all

import excel "C:\Users\Harry\QUARCS Lab Dropbox\Harry Aginta\Statistik Ecommerce\wage convergence\WS Labour_new.xlsx", sheet("mv_B") firstrow
cd "C:\Users\Harry\QUARCS Lab Dropbox\Harry Aginta\Statistik Ecommerce\wage convergence"
label var Yr Year
tset Yr
impute NorthKalimantan EastKalimantan Yr, gen(NorKal_Im)
export excel Yr EastKalimantan NorthKalimantan NorKal_Im using "NorKal_wage_B", firstrow(variables)
