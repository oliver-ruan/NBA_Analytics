#------------------Function: Create Dynamic Section Function-------------------#
SectionFunction <- function(insert){
  text <- stringr::str_pad(insert, 78, pad = "-", side = "both")
  print(paste0("#", text, "#"))
}
