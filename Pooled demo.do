svyset psuid, strata(strataid) weight(wt)  singleunit(scaled)
drop if h22==.
svy: tab h22, col count percent
drop if h22==0
drop if antibiotic_m==.
svy: tab antibiotic_m, col count percent
drop if antibiotic_m==0
drop if antibiotic_m==.
svy: tab antibiotic_q, col count percent
svy: tab v024 antibiotic_q, row col count percent


svyset psuid, strata(strataid) weight(wt)  singleunit(scaled)
drop if antibiotic_m==.
svy: tab antibiotic_m, col count percent
drop if antibiotic_m==0
drop if antibiotic_m==.
svy: tab antibiotic_q, col count percent
svy: tab v024 antibiotic_q, row col count percent


svy: logistic antibiotic_q i.v025
svy: tab v025 antibiotic_q,  row col count percent 

svy: logistic antibiotic_q i.v106
svy: tab v106 antibiotic_q ,  row col count percent 

svy: logistic antibiotic_q i.v137
svy: tab v137 antibiotic_q ,  row col count percent 

svy: logistic antibiotic_q i.v190
svy: tab v190 antibiotic_q ,  row col count percent 

svy: logistic antibiotic_q i.b4
svy: tab b4 antibiotic_q ,  row col count percent 

svy: logistic antibiotic_q i.hw1
svy: tab hw1 antibiotic_q ,  row col count percent 

svy: logistic antibiotic_q i.s509 
svy: tab  s509 antibiotic_q ,  row col count percent

svy: logistic antibiotic_q ib5.v130
svy: tab  v130 antibiotic_q ,  row col count percent

svy: logistic antibiotic_q i.v025 i.v025 i.v106 i.v137 i.v190 i.b4 i.hw1 i.s509 i.v130 i.new_country
xtmelogit antibiotic_q i.v025 i.v106 i.v190 i.hw1 i.v130 i.s509 || new_country : , mle variance or
