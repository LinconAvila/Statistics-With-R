'Given the following frequencies of responses from a survey on software quality,
where respondents were asked to identify the most important feature (a) Easy access interface,
(b) System performance, (c) Advanced analysis methods, (d) Maintenance and support, (e) Customization,
(f) Information reliability, and (g) Data security, create a table displaying the absolute frequencies
and calculate the percentage frequencies for each item.

The response frequencies are as follows: (a) 8, (b) 7, (c) 7, (d) 12, (e) 4, (f) 21, (g) 6.

Output a table that lists the items, absolute frequencies, and their corresponding percentage frequencies.'

# Define the absolute frequencies
absolute_frequencies <- c(8, 7, 7, 12, 4, 21, 6)

# Calculate the total
total_responses <- sum(absolute_frequencies)

# Calculate the percentage frequencies
percentage_frequencies <- (absolute_frequencies / total_responses) * 100

# Define the items
items <- c("Easy access interface", "System performance", "Advanced analysis methods", 
           "Maintenance and support", "Customization", "Information reliability", "Data security")

# Create the table
table <- data.frame(Item = items, 
                    Absolute_Frequency = absolute_frequencies, 
                    Percentage_Frequency = round(percentage_frequencies, 1))

# Display the table
print(table)

# Display the total
cat("Total responses:", total_responses, "\n")
