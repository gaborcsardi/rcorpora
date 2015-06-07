


# rcorpora

[![Linux Build Status](https://travis-ci.org/gaborcsardi/rcorpora.svg?branch=master)](https://travis-ci.org/gaborcsardi/rcorpora)
[![Windows Build status](https://ci.appveyor.com/api/projects/status/github/gaborcsardi/rcorpora?svg=true)](https://ci.appveyor.com/project/gaborcsardi/rcorpora)
[![CRAN version](http://www.r-pkg.org/badges/version/rcorpora)](http://www.r-pkg.org/pkg/rcorpora)
[![CRAN RStudio mirror downloads](http://cranlogs.r-pkg.org/badges/rcorpora)](http://cran.r-project.org/web/packages/rcorpora/index.html)

R package that contains all data sets from
https://github.com/dariusk/corpora 

## Installation


```r
devtools::install_github("gaborcsardi/rcorpora")
```

## Usage

Calling the `corpora()` function without arguments lists all
data sets in the package, calling it with the name of a data
set, returns the data set itself. For example


```r
library(rcorpora)
corpora()
```

```
#>   [1] "animals/birds_antarctica"                  
#>   [2] "animals/birds_uk"                          
#>   [3] "animals/common"                            
#>   [4] "animals/dinosaurs"                         
#>   [5] "animals/dogs"                              
#>   [6] "archetypes/artifact"                       
#>   [7] "archetypes/character"                      
#>   [8] "archetypes/event"                          
#>   [9] "archetypes/setting"                        
#>  [10] "architecture/rooms"                        
#>  [11] "art/isms"                                  
#>  [12] "colors/crayola"                            
#>  [13] "colors/web_colors"                         
#>  [14] "corporations/cars"                         
#>  [15] "corporations/djia"                         
#>  [16] "corporations/fortune500"                   
#>  [17] "corporations/nasdaq"                       
#>  [18] "corporations/newspapers"                   
#>  [19] "foods/beer_categories"                     
#>  [20] "foods/beer_styles"                         
#>  [21] "foods/breads_and_pastries"                 
#>  [22] "foods/condiments"                          
#>  [23] "foods/curds"                               
#>  [24] "foods/fruits"                              
#>  [25] "foods/herbs_n_spices"                      
#>  [26] "foods/hot_peppers"                         
#>  [27] "foods/menuItems"                           
#>  [28] "foods/pizzaToppings"                       
#>  [29] "foods/sandwiches"                          
#>  [30] "foods/vegetables"                          
#>  [31] "games/cluedo"                              
#>  [32] "games/jeopardy_questions"                  
#>  [33] "games/pokemon"                             
#>  [34] "games/scrabble"                            
#>  [35] "games/street_fighter_ii"                   
#>  [36] "games/trivial_pursuit"                     
#>  [37] "geography/canada_provinces_and_territories"
#>  [38] "geography/countries"                       
#>  [39] "geography/english_towns_cities"            
#>  [40] "geography/london_underground_stations"     
#>  [41] "geography/oceans"                          
#>  [42] "geography/rivers"                          
#>  [43] "geography/us_cities"                       
#>  [44] "geography/venues"                          
#>  [45] "governments/nsa_projects"                  
#>  [46] "governments/uk_political_parties"          
#>  [47] "governments/us_federal_agencies"           
#>  [48] "governments/us_mil_operations"             
#>  [49] "humans/authors"                            
#>  [50] "humans/bodyParts"                          
#>  [51] "humans/britishActors"                      
#>  [52] "humans/firstNames"                         
#>  [53] "humans/moods"                              
#>  [54] "humans/occupations"                        
#>  [55] "humans/prefixes"                           
#>  [56] "humans/richpeople"                         
#>  [57] "humans/spanishFirstNames"                  
#>  [58] "humans/spanishLastNames"                   
#>  [59] "humans/spinalTapDrummers"                  
#>  [60] "humans/suffixes"                           
#>  [61] "humans/us_presidents"                      
#>  [62] "humans/wrestlers"                          
#>  [63] "instructions/laundry_care"                 
#>  [64] "materials/abridged-body-fluids"            
#>  [65] "materials/building-materials"              
#>  [66] "materials/carbon-allotropes"               
#>  [67] "materials/decorative-stones"               
#>  [68] "materials/fabrics"                         
#>  [69] "materials/fibers"                          
#>  [70] "materials/layperson-metals"                
#>  [71] "materials/metals"                          
#>  [72] "materials/natural-materials"               
#>  [73] "materials/packaging"                       
#>  [74] "materials/plastic-brands"                  
#>  [75] "materials/sculpture-materials"             
#>  [76] "materials/technical-fabrics"               
#>  [77] "music/genres"                              
#>  [78] "music/mtv_day_one"                         
#>  [79] "mythology/lovecraft"                       
#>  [80] "objects/objects"                           
#>  [81] "plants/flowers"                            
#>  [82] "science/elements"                          
#>  [83] "science/hail_size"                         
#>  [84] "science/planets"                           
#>  [85] "science/pregnancy"                         
#>  [86] "science/toxic_chemicals"                   
#>  [87] "technology/appliances"                     
#>  [88] "technology/computer_sciences"              
#>  [89] "technology/fireworks"                      
#>  [90] "technology/guns_n_rifles"                  
#>  [91] "technology/knots"                          
#>  [92] "words/adjs"                                
#>  [93] "words/adverbs"                             
#>  [94] "words/common"                              
#>  [95] "words/eggcorns"                            
#>  [96] "words/literature/mr_men_little_miss"       
#>  [97] "words/literature/shakespeare_phrases"      
#>  [98] "words/literature/shakespeare_sonnets"      
#>  [99] "words/literature/shakespeare_words"        
#> [100] "words/nouns"                               
#> [101] "words/oprah_quotes"                        
#> [102] "words/prefix_root_suffix"                  
#> [103] "words/proverbs"                            
#> [104] "words/states_of_drunkenness"               
#> [105] "words/us_president_quotes"                 
#> [106] "words/verbs"                               
#> [107] "words/word_clues/clues_five"               
#> [108] "words/word_clues/clues_four"               
#> [109] "words/word_clues/clues_six"
```

```r
corpora("foods/pizzaToppings")
```

```
#> $description
#> [1] "A list of pizza toppings."
#> 
#> $pizzaToppings
#>  [1] "anchovies"        "artichoke"        "bacon"           
#>  [4] "cheese"           "chicken"          "chili peppers"   
#>  [7] "garlic"           "green peppers"    "ham"             
#> [10] "hot sauce"        "meatballs"        "mushrooms"       
#> [13] "olives"           "onions"           "pepperoni"       
#> [16] "pineapple"        "sausage"          "spinach"         
#> [19] "sun-dried tomato" "tomatoes"
```

## License

CC0
