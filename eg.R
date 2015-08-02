# eg.R
# sample data for checking purposes

# from main.R:
# # This will clear up excess whitespace with 4 options----
# # 1. Leading spaces
# # 2. Trailing spaces
# # 3. Spaces in between
# # 4. All of the above

lead1 <- " foo"
trail1 <- "bar "
between1 <- "foo bar"
all1 <- " foo bar"

StreetNames <- c("BUGIS   STREET #01-05 ", " ORCHARD ROAD #09 - 123 ", "   CHANGI   AIRPORT #08- 08",
                 "MANDAI ZOO #12- 100  ", " NATIONAL  UNIVERSITY  OF   SINGAPORE S1 #01 - 10", 
                 " CITY  HALL B1 - 10A", "RAFFLES  PLACE B3 - 12")

# testing
CleanSpaces(lead1, option = "leading", returnType = "tokenized")
CleanSpaces(trail1, option = "trailing", returnType = "tokenized")
CleanSpaces(between1, option = "between", returnType = "tokenized")
CleanSpaces(all1, option = "all", returnType = "tokenized")
CleanSpaces(lead1, option = "abc")

CleanSpaces(StreetNames, option="all")
CleanSpaces(StreetNames, option="leading")


ExtractNum(StreetNames)
ExtractChar(StreetNames)
