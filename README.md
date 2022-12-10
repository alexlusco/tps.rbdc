# tps.rbdc

## Install

```r
install.packages("devtools") 
devtools::install_github("alexlusco/tps.rbdc")
```

## Example

```r
>library(tps.rbdc)
>strip_search_data <- import_data()
Select a dataset to import: 

1: Arrests & Strip Searches
2: Use of Force: Call Sources by Month
3: Use of Force: Time of Day Trends
4: Use of Force: Location of Occurrences
5: Use of Force: Call for Service Types
6: Use of Force: Occurrence Category
7: Use of Force: Gender Composition
8: Use of Force Types and Perceived Weapons

Selection: 1
> strip_search_data
# A tibble: 65,276 × 25
   arrest_year arrest_month event_id arrest_id person_id perceived_race    sex   age_group_at_arrest
         <int> <chr>           <int>     <int>     <int> <chr>             <chr> <chr>              
 1        2020 July-Sept     1005907   6017884    326622 White             M     Aged 35 to 44 years
 2        2020 July-Sept     1014562   6056669    326622 White             M     Aged 35 to 44 years
 3        2020 Oct-Dec       1029922   6057065    326622 Unknown or Legacy M     Aged 35 to 44 years
 4        2021 Jan-Mar       1052190   6029059    327535 Black             M     Aged 25 to 34 years
 5        2021 Jan-Mar       1015512   6040372    327535 South Asian       M     Aged 25 to 34 years
 6        2021 Apr-June      1019145   6060688    327535 South Asian       M     Aged 25 to 34 years
 7        2021 Jan-Mar       1035445   6053833    330778 Black             M     Aged 25 to 34 years
 8        2021 Jan-Mar       1050464   6063477    330778 Black             M     Aged 25 to 34 years
 9        2021 Jan-Mar       1045486   6053929    330778 Black             M     Aged 25 to 34 years
10        2021 Apr-June      1012287   6004570    330778 Black             M     Aged 25 to 34 years
# … with 65,266 more rows, and 17 more variables: youth_at_arrest_under_18_years <chr>,
#   arrest_loc_div <chr>, strip_search <int>, booked <int>, occurrence_category <chr>,
#   actions_at_arrest_concealed_i <int>, actions_at_arrest_combative <int>,
#   actions_at_arrest_resisted_d <int>, actions_at_arrest_mental_inst <int>,
#   actions_at_arrest_assaulted_o <int>, actions_at_arrest_cooperative <int>,
#   search_reason_cause_injury <int>, search_reason_assist_escape <int>,
#   search_reason_possess_weapons <int>, search_reason_possess_evidence <int>, items_found <int>, …
```
