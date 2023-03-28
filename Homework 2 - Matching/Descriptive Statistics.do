use nsw.dta, clear
estimates clear

local vars age education black hispanic married nodegree re75

foreach i of varlist `vars' {
    regress `i' treat
	forvalues j = 0/1{
		qui sum `i' if treat == `j'
		estadd scalar mean_`j' = r(mean)
	}
	est store `i'
}

esttab `vars', b(%9.1f) se(%9.1f) label ///
s(mean_0 mean_1, labels("Group 1 (25 schools)" "Group 2 (25 schools)") ///
fmt(%9.2f)) ///
starlevels(* 0.1 ** 0.05 *** 0.01) ///
drop(_cons)
