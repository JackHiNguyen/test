*_____________________Information_____________________
*_____________________Name: Trong Nguyen (Jack)
*_____________________Date: June 1, 2024
*_____________________Project: STATA Coding Sample

* Stata package used: estout (for outputting regression results into LaTeX)
* Command to install: ssc install estout, replace

* Preliminary: Redirect all datasets into the same folder
* and set that folder as the working directory.

*_____________________Preliminary: Standardizing Datasets_____________________

// log using "stata_log.log", replace //generating log file if needed

*_______________Standardizing the sale data 



*_______________Standardizing the Ownership dataset 
use "ownership_raw.dta", clear

rename sic SIC  //renaming
rename cusip CUSIP
rename ihhi IHHI
gen SIC_str = string(SIC)
drop SIC
rename SIC_str SIC

label var CUSIP "company ID"
label var SIC "industry ID"
label var IHHI "Common Ownership Index of company"

order CUSIP year SIC IHHI
save "ownership_modified.dta", replace


*_______________


*______________________________Question 1: Messy Merge__________________________


*______________Modifying sale data 


*_______________Merging the data together 

* Generating a list of iteration keys for merging datasets.

*_______________Outputing summary statistics of HHI over year


*_______________



*ending of coding sample
// log close //generating log files

*_____________________Trong Nguyen_____________________
* Thank you for your time!











