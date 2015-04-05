


# rcorpora

[![Linux Build Status](https://travis-ci.org/gaborcsardi/rcorpora.png?branch=master)](https://travis-ci.org/gaborcsardi/rcorpora)
[![Windows Build status](https://ci.appveyor.com/api/projects/status/nx6o75ey4efo213s)](https://ci.appveyor.com/project/gaborcsardi/rcorpora)

> R package with a collection of small corpuses of interesting data

R package that contains all data sets from the fantastic
https://github.com/dariusk/corpora repository.

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
#>  [1] "animals/birds_antarctica"                  
#>  [2] "animals/birds_uk"                          
#>  [3] "animals/common"                            
#>  [4] "animals/dinosaurs"                         
#>  [5] "animals/dogs"                              
#>  [6] "archetypes/artifact"                       
#>  [7] "archetypes/character"                      
#>  [8] "archetypes/event"                          
#>  [9] "archetypes/setting"                        
#> [10] "colors/crayola"                            
#> [11] "colors/web_colors"                         
#> [12] "corporations/cars"                         
#> [13] "corporations/djia"                         
#> [14] "corporations/nasdaq"                       
#> [15] "corporations/newspapers"                   
#> [16] "foods/beer_categories"                     
#> [17] "foods/beer_styles"                         
#> [18] "foods/fruits"                              
#> [19] "foods/herbs_n_spices"                      
#> [20] "foods/hot_peppers"                         
#> [21] "foods/menuItems"                           
#> [22] "foods/pizzaToppings"                       
#> [23] "foods/sandwiches"                          
#> [24] "foods/vegetables"                          
#> [25] "games/cluedo"                              
#> [26] "games/jeopardy_questions"                  
#> [27] "games/pokemon"                             
#> [28] "games/scrabble"                            
#> [29] "games/trivial_pursuit"                     
#> [30] "geography/canada_provinces_and_territories"
#> [31] "geography/countries"                       
#> [32] "geography/english_towns_cities"            
#> [33] "geography/london_underground_stations"     
#> [34] "geography/oceans"                          
#> [35] "geography/rivers"                          
#> [36] "geography/us_cities"                       
#> [37] "geography/venues"                          
#> [38] "governments/nsa_projects"                  
#> [39] "governments/us_federal_agencies"           
#> [40] "governments/us_mil_operations"             
#> [41] "humans/authors"                            
#> [42] "humans/bodyParts"                          
#> [43] "humans/britishActors"                      
#> [44] "humans/firstNames"                         
#> [45] "humans/occupations"                        
#> [46] "humans/prefixes"                           
#> [47] "humans/richpeople"                         
#> [48] "humans/spanishFirstNames"                  
#> [49] "humans/spanishLastNames"                   
#> [50] "humans/spinalTapDrummers"                  
#> [51] "humans/suffixes"                           
#> [52] "humans/us_presidents"                      
#> [53] "humans/wrestlers"                          
#> [54] "instructions/laundry_care"                 
#> [55] "objects/objects"                           
#> [56] "plants/flowers"                            
#> [57] "science/elements"                          
#> [58] "science/hail_size"                         
#> [59] "science/planets"                           
#> [60] "science/pregnancy"                         
#> [61] "science/toxic_chemicals"                   
#> [62] "technology/computer_sciences"              
#> [63] "technology/fireworks"                      
#> [64] "technology/guns_n_rifles"                  
#> [65] "technology/knots"                          
#> [66] "words/adjs"                                
#> [67] "words/adverbs"                             
#> [68] "words/common"                              
#> [69] "words/eggcorns"                            
#> [70] "words/literature/mr_men_little_miss"       
#> [71] "words/literature/shakespeare_phrases"      
#> [72] "words/literature/shakespeare_sonnets"      
#> [73] "words/literature/shakespeare_words"        
#> [74] "words/nouns"                               
#> [75] "words/oprah_quotes"                        
#> [76] "words/prefix_root_suffix"                  
#> [77] "words/proverbs"                            
#> [78] "words/states_of_drunkenness"               
#> [79] "words/us_president_quotes"                 
#> [80] "words/verbs"                               
#> [81] "words/word_clues/clues_five"               
#> [82] "words/word_clues/clues_four"               
#> [83] "words/word_clues/clues_six"
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
