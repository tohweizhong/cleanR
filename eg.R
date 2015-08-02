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

# testing
CleanSpaces(lead1, option = "leading", returnType = "vector")
CleanSpaces(trail1, option = "trailing", returnType = "vector")
CleanSpaces(between1, option = "between", returnType = "vector")
CleanSpaces(all1, option = "all", returnType = "vector")
CleanSpaces(lead1, option = "abc")
