Exam.delete_all
Exam.reset_pk_sequence
exam = ["Math", "Literature", "English", "Physical", "Chemistry",
  "Biological", "History", "Geography"]

exam.each{ |exam|
  Exam.create! name: exam
}
