# Remove cancelled runs from dataset

gen_df <- function(in_path, out_path) {
  df  <- read.csv(in_path, sep=",")
  clean_df <- df[(is.na(df$cancelledAt) | df$cancelledAt==""),]
  write.csv(clean_df,out_path, row.names = FALSE)
}

gen_df('data/realWorldSchemas/combined_results.csv', 'data/realWorldSchemas/clean_data.csv')
gen_df('data/kubernetes/13062022_193343_results.csv', 'data/kubernetes/clean_data.csv')
gen_df('data/snowplow/14062022_071754_results.csv', 'data/snowplow/clean_data.csv')
gen_df('data/wp/13062022_215812_results.csv', 'data/wp/clean_data.csv')
gen_df('data/wp/oneOf/13062022_215827_results.csv', 'data/wp/oneOf/clean_data.csv')


