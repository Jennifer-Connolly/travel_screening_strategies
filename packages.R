if (!require(pacman)){
  install.packages("pacman")
}

pacman::p_load(char = c("tidyverse",
                        "grid",
                        "ggh4x",
                        "stringi",
                        "scales",
                        "mgcv",
                        "furrr",
                        "countrycode",
                        "eurostat",
                        "conflicted",
                        "magrittr",
                        "epitools",
                        "patchwork",
                        "ggnewscale",
                        "formula.tools",
                        "magick",
                        "measurements"))

conflicted::conflict_prefer("set_names", "purrr")
conflicted::conflict_prefer("melt", "reshape2")
map(.x = c("mutate", "select", "filter"), 
    .f = function(x){conflicted::conflict_prefer(name = x, "dplyr")})

