use nsw.dta, clear
drop if treat == 0
append using psid_controls.dta


eststo clear
psmatch2 treat age education married re75, out(re78) neighbor(1)
eststo m1
psmatch2 treat age education married re75, radius out(re78) 
eststo m2
psmatch2 treat age education married re75, kernel out(re78) 
eststo m3
psmatch2 treat age education married re75, out(re78) neighbor(5)
eststo m4

esttab
