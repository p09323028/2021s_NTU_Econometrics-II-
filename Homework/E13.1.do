*----- 載入檔案 -----;
use "C:/Users/吳金擇/Desktop/Names.dta"

*----- E13.1-a -----;
ttest call_back, by(black) unequal
*Method 2
*reg call_back black, r

*----- E13.1-b -----;
gen black_female = (black==1)*(female==1)
reg call_back black female black_female, r

*----- E13.1-c -----;
ttest call_back, by(high) unequal
gen black_high = (black==1)*(high==1)
reg call_back black high black_high, r

*----- E13.1-d -----;
reg black ofjobs yearsexp honors volunteer military empholes workinschool email computerskills specialskills college, r
