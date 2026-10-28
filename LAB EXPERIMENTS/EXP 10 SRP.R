exam_data <- data.frame(
  name = c("Ravi", "Sita", "Ram", "Rani", "Kiran"),
  score = c(85, 90, 65, 75, 55),
  attempts = c(1, 2, 1, 3, 2),
  qualify = c(TRUE, TRUE, FALSE, TRUE, FALSE)
)
print(exam_data)
print(exam_data$name)
print(exam_data[1, ])
print(exam_data[, "score"])
exam_data$grade <- c("A", "A", "C", "B", "C")
print(exam_data)
new_row <- data.frame(
  name = "Anu",
  score = 95,
  attempts = 1,
  qualify = TRUE,
  grade = "A"
)
exam_data <- rbind(exam_data, new_row)
print(exam_data)
exam_data$city <- c("Chennai", "Hyderabad", "Mumbai",
                    "Delhi", "Pune", "Bangalore")
print(exam_data)
sorted_data <- exam_data[order(exam_data$score), ]
print(sorted_data)
write.csv(exam_data, "exam_data.csv", row.names = FALSE)
print("Data saved successfully")