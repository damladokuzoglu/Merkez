help
help()



library(RODBC)
dsn.name <- "PROD"
user.name <- "odemtpe"

con1 <- odbcConnect(dsn=dsn.name,uid=user.name,"bucak095")

table.list <- sqlTables(con1,tableType="TABLE", schema="ODEBISP")
cat("There are", nrow(table.list), "tables in the DB2INST1 schema.\n")

table.name <- "ODEBISP.TODEAYR6"
head(table.name)
table.name

my_con <- odbcConnect("PROD", uid = "odemtpe", pwd = "bucak095")
my_query <- "SELECT * FROM ODEBISP.TODEAYR6"
my_result <- sqlQuery(my_con, my_query, errors= TRUE)
View(my_result)