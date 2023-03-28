use nsw.dta, clear
drop if treat == 0
append using psid_controls.dta


psmatch2 treat age education married hispanic black nodegree re75, out(re78) 

use nsw.dta, clear
drop if treat == 0
append using psid_controls.dta


psmatch2 treat age education married hispanic black nodegree re75, out(re78) radius

use nsw.dta, clear
drop if treat == 0
append using psid_controls.dta


psmatch2 treat age education married hispanic black nodegree re75, out(re78) kernel
