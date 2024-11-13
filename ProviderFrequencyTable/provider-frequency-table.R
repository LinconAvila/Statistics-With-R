# A web page designer wants to understand the profile of individuals who visit his site 
# to better tailor products to their preferences. To achieve this, he conducted a survey 
# in the current year to gather data on the visitors' characteristics, such as sex, age, 
# education level, and internet service provider (ISP). In a pilot sample of 40 people 
# residing in the city of Pelotas, the results for the ISP variable are as follows:
#
# Individual   Provider   Individual   Provider   Individual   Provider   Individual   Provider
# 1            VIVO       11           VIVO       21           OI FIBRA   31           CLARO
# 2            CLARO      12           CLARO      22           CLARO      32           CLARO
# 3            CLARO      13           OI FIBRA   23           CLARO      33           OI FIBRA
# 4            OI FIBRA   14           OSIRNET    24           OI FIBRA   34           VIVO
# 5            VIVO       15           CLARO      25           CLARO      35           OI FIBRA
# 6            OI FIBRA   16           OI FIBRA   26           CLARO      36           OSIRNET
# 7            OSIRNET    17           OI FIBRA   27           OI FIBRA   37           OI FIBRA
# 8            OI FIBRA   18           VIVO       28           OSIRNET    38           OI FIBRA
# 9            OI FIBRA   19           OSIRNET    29           OSIRNET    39           OI FIBRA
# 10           CLARO      20           OI FIBRA   30           VIVO       40           VIVO
#
# Construct a table with absolute frequencies (fj), relative frequencies (frj), and 
# percentage frequencies (fpj) for the "Provider" variable.



# Read data from the "database.txt" file
data <- read.table("database.txt", header = TRUE, sep = " ")

# Calculate the absolute frequency for the 'Provider' column
absolute_frequency <- table(data$Provider)

# Calculate the relative frequency for the 'Provider' column
relative_frequency <- prop.table(table(data$Provider))

# Calculate the percentage frequency for the 'Provider' column
percentage_frequency <- prop.table(table(data$Provider)) * 100

# Create the final table with absolute, relative, and percentage frequencies
final_table <- data.frame(
  Provider = names(absolute_frequency),
  Absolute_Frequency = as.numeric(absolute_frequency),
  Relative_Frequency = as.numeric(relative_frequency),
  Percentage_Frequency = as.numeric(percentage_frequency)
)

# Calculate totals for absolute, relative, and percentage frequencies
total_absolute <- sum(final_table$Absolute_Frequency)
total_relative <- sum(final_table$Relative_Frequency)
total_percentage <- sum(final_table$Percentage_Frequency)

# Add the total row to the final table
final_table <- rbind(final_table, c("Total", total_absolute, total_relative, total_percentage))

# Display the final table
print(final_table)

# Open the table in the RStudio data viewer
View(final_table)
