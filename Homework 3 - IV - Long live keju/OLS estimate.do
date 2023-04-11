use census10_final.dta
eststo clear
regress lneduyear lnjinshipop i.provid, vce(cluster provid)
eststo m1

regress lneduyear lnjinshipop i.provid lnnightlight tri lncoastdist , vce(cluster provid)
eststo m2

regress lneduyear lnjinshipop i.provid lnnightlight tri lncoastdist suitability lnpopdensity urbanrates, vce(cluster provid)
eststo m3

regress lneduyear lnjinshipopm i.provid lnnightlight tri lncoastdist suitability lnpopdensity urbanrates, vce(cluster provid)
eststo m4

regress lnnspop lnjinshipop i.provid lnnightlight tri lncoastdist suitability lnpopdensity urbanrates , vce(cluster provid)
eststo m5

regress lnmppop lnjinshipop i.provid lnnightlight tri lncoastdist suitability lnpopdensity urbanrates , vce(cluster provid)
eststo m6

regress lnhighpop lnjinshipop i.provid lnnightlight tri lncoastdist suitability lnpopdensity urbanrates , vce(cluster provid)
eststo m7

regress lnunipop lnjinshipop i.provid lnnightlight tri lncoastdist suitability lnpopdensity urbanrates , vce(cluster provid)
eststo m8

esttab m1 m2 m3 m4 m5 m6 m7 m8 using Table21.csv, se ar2


