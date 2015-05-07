library(dplyr)
target <- c(201952, 200768, 203487, 101181,
             201937, 201144, 202391, 201939)

data_pg <- filter(data, PlAYER_ID == '201952', PlAYER_ID == '200768', PlAYER_ID == '203487', PlAYER_ID == '101181', PlAYER_ID == '201937', PlAYER_ID == '201144', PlAYER_ID == '202391', PlAYER_ID == '201939')

str(data)