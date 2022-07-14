# Remove cancelled runs from dataset

gen_df <- function(in_path, out_path) {
  df  <- read.csv(in_path, sep=",")
  clean_df <- df[(is.na(df$cancelledAt) | df$cancelledAt==""),]
  write.csv(clean_df,out_path, row.names = FALSE)
}

gen_df('data/realWorldSchemas/github.csv', 'data/realWorldSchemas/clean_data.csv')
gen_df('data/kubernetes/kubernetes.csv', 'data/kubernetes/clean_data.csv')
gen_df('data/snowplow/snowplow.csv', 'data/snowplow/clean_data.csv')
gen_df('data/wp/wp.csv', 'data/wp/clean_data.csv')


