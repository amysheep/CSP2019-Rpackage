zscoreGated <- function(df,colname) {
  
  zscore <- round(( df[[colname]]-mean(df[[colname]],na.rm=T))/sd(df[[colname]],na.rm=T),2)
  gated <- ifelse(
    zscore <= -2,1,
    ifelse(
      zscore > -2 &
        zscore <= -1,2,
      ifelse(
        zscore > -1 &
          zscore <= 1 , 3,
        ifelse(
          zscore > 1 &
            zscore <= 2 , 4, 5
        ))))
  return(data.frame(df,gated))
}
