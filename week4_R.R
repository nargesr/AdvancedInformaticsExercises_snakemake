data(mtcars)
library(dbplyr)
library("optparse")
 
option_list = list(
  make_option(c("-o", "--out"), type="character", default="mtcars.sqlite3",
              help="dataset file name", metavar="character")
);
 
opt_parser = OptionParser(option_list=option_list);
opt = parse_args(opt_parser);

# Create a connection ("con") to a database file:
con <- DBI::dbConnect(RSQLite::SQLite(), opt$out)
# Write our data frame to the database in a table called "mtcars"
DBI::dbWriteTable(con, "mtcars", mtcars, overwrite = T)
# Disconnect from our database
DBI::dbDisconnect(con)
