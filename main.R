#Hello!
#TODO: Create a list of dummy data
#1. Addresses
#2. Phone numbers
#3. ZIP codes
#4. Names


#This will clear up excess whitespace with 4 options----
#1. Leading spaces
#2. Trailing spaces
#3. Spaces in between
#4. All of the above

CleanSpaces <- function(data, option=c("leading", "trailing", "between", "all"), spacing = 1){
                        
  
  SPACE <- paste(rep(" ",spacing), collapse = "")
  
  Leading <- function(data){
    data <- gsub("^\\s+", "", data)
    return(data)
  }
  
  Trailing <- function(data){
    data <- gsub("\\s+$", "", data)
    return(data)
  }
  
  Between <- function(data){
    data <- gsub("\\s+", SPACE, data)
    return(data)
  }
  
  All <- function(data){
    data <- gsub("^\\s+|\\s+$", "", data)
    data <- gsub("\\s+", SPACE, data)
    return(data)
  }
  
  x <- data
  
  OUT <- switch(option,
                leading = Leading(x),
                trailing = Trailing(x),
                between = Between(x),
                all = All(x))
  return(OUT)
}