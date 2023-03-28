use nsw.dta, clear
eststo clear

gen age_squared = age *age 
gen education_squared = education * education 
gen re75_squared = re75 * re75

regress re78 treat
eststo m1
regress re78 treat age age_squared education education_squared black married re75 re75_squared
eststo m2
esttab