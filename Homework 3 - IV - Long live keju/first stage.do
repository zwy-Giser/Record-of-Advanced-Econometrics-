use census10_final.dta
eststo clear

regress lnjinshipop lnprint i.provid, vce(cluster provid)
eststo m1
regress lnjinshipop lnprint i.provid  lnnightlight tri lncoastdist , vce(cluster provid)
eststo m2
regress pcenter bprvdist i.provid, vce(cluster provid)
eststo m3
regress pcenter bprvdist i.provid  lnnightlight tri lncoastdist  , vce(cluster provid)
eststo m4
regress lnprint bprvdist i.provid, vce(cluster provid)
eststo m5
regress lnprint bprvdist i.provid  lnnightlight tri lncoastdist  , vce(cluster provid)
eststo m6
regress lnjinshipop bprvdist i.provid , vce(cluster provid)
eststo m7
regress lnjinshipop bprvdist i.provid  lnnightlight tri lncoastdist  , vce(cluster provid)
eststo m8

esttab m1 m2 m3 m4 m5 m6 m7 m8 using Table2.csv, se ar2