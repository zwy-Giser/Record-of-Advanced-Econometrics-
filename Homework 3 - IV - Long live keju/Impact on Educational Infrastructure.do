use census10_final.dta
eststo clear

regress lnacademis lnjinshipop i.provid lnnightlight tri lncoastdist suitability lnpopdensity urbanrates, vce(cluster provid)
eststo m1
ivreg2 lnacademis (lnjinshipop=bprvdist) rvrdist lnnightlight lncoastdist tri suitability lnpopdensity urbanrates i.provid , cluster(provid)
eststo m2
regress lnschool1900 lnjinshipop i.provid lnnightlight tri lncoastdist suitability lnpopdensity urbanrates, vce(cluster provid)
eststo m3
ivreg2 lnschool1900 (lnjinshipop=bprvdist) rvrdist lnnightlight lncoastdist tri suitability lnpopdensity urbanrates i.provid , cluster(provid)
eststo m4
regress lnuni1947 lnjinshipop i.provid lnnightlight tri lncoastdist suitability lnpopdensity urbanrates, vce(cluster provid)
eststo m5
ivreg2 lnuni1947 (lnjinshipop=bprvdist) rvrdist lnnightlight lncoastdist tri suitability lnpopdensity urbanrates i.provid , cluster(provid)
eststo m6
regress lnschool2010 lnjinshipop i.provid lnnightlight tri lncoastdist suitability lnpopdensity urbanrates, vce(cluster provid)
eststo m7
ivreg2 lnschool2010 (lnjinshipop=bprvdist) rvrdist lnnightlight lncoastdist tri suitability lnpopdensity urbanrates i.provid , cluster(provid)
eststo m8
regress lnuni2010 lnjinshipop i.provid lnnightlight tri lncoastdist suitability lnpopdensity urbanrates, vce(cluster provid)
eststo m9
ivreg2 lnuni2010 (lnjinshipop=bprvdist) rvrdist lnnightlight lncoastdist tri suitability lnpopdensity urbanrates i.provid , cluster(provid)
eststo m10

esttab m1 m2 m3 m4 m5 m6 m7 m8 m9 m10 using impact2.csv, se ar2
