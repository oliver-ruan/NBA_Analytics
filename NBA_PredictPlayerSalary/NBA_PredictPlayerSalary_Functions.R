#---------------------Function: Get Player Slugs From BBR----------------------#
GetPlayerSlugs <- function(){
  # Initiate empty list
  PlayersSlugList <- list()
  
  # Start for loop for each letter of the alphabet
  for(i in 1:length(letters)){
    # Use bbr::get_players pre-built function to extract bbr slugs 
    ExtractedSlug <- bbr::get_players(letters[i]) %>% 
      select(slug)
    
    # Store slugs into empty list
    PlayersSlugList[i] <- ExtractedSlug
  }
  # Transform list items into data frames
  PlayersSlugList <- lapply(PlayersSlugList, as.data.frame)
  
  # Bind list items
  AllPlayerSlugs <- bind_rows(PlayersSlugList, .id = "column_label")
  
  # Return final data frame of bbr player slugs
  return(AllPlayerSlugs)
}