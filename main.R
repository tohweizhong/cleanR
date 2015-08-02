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

CleanSpaces <- function(data,
                        option=c("leading", "trailing", "between", "all"),
                        spacing = 1,
                        returnType = c("string", "tokenized")){
  ###
  # Check safe
  optionS <- c("leading", "trailing", "between", "all")
  returnTypeS <- c("string", "tokenized")

  if(missing(option)){
    cat("Using default option: all");
    cat("\n")
    option = "all"
  }
  if(missing(returnType)){
    cat("Using returnType default: string")
    cat("\n")
    returnType = "string"
  }
  
    if(!(option %in% optionS)) stop("Invalid option")
    if(!(returnType %in% returnTypeS)) stop("Invalid return type")
  ###
  
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
  
  if(returnType == "string") return(OUT)
  else if(returnType == "tokenized") return(unlist(strsplit(OUT, "\\s+")))
}


ExtractNumbers <- function(data){
  OUT <- gsub("\\D+", " ", data)
  OUT <- gsub("^\\s+","", OUT)
  OUT <- strsplit(OUT, " ")
  return(OUT)
}