use census10_final.dta
eststo clear



ivreg2 lneduyear (lnjinshipop=bprvdist) lnnightlight lncoastdist tri suitability lnpopdensity urbanrates i.provid , rf first cluster(provid)
eststo m1
ivreg2 lneduyear (lnjinshipop=bprvdist) rvrdist lnnightlight lncoastdist tri suitability lnpopdensity urbanrates i.provid , rf first cluster(provid)
eststo m2
ivreg2 lnhighpop (lnjinshipop=bprvdist) rvrdist lnnightlight lncoastdist tri suitability lnpopdensity urbanrates i.provid , rf first cluster(provid)
eststo m3
ivreg2 lnunipop (lnjinshipop=bprvdist) rvrdist lnnightlight lncoastdist tri suitability lnpopdensity urbanrates i.provid , rf first cluster(provid)
eststo m4

esttab m1 m2 m3 m4 using iv2.csv, se ar2
