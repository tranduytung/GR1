exam = ["Math", "Literature", "English", "Physical", "Chemistry",
  "Biological", "History", "Geography"]

exam.each{ |exam|
  Exam.create! name: exam
}
