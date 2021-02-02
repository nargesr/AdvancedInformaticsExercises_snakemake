data(mtcars)
library(dbplyr)

# Create a connection ("con") to a database file:
con <- DBI::dbConnect(RSQLite::SQLite(), snakemake@output[[1]])
# Write our data frame to the database in a table called "mtcars"
DBI::dbWriteTable(con, "mtcars", mtcars, overwrite = T)
# Disconnect from our database
DBI::dbDisconnect(con)