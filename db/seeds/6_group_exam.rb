GroupExam.delete_all
GroupExam.reset_pk_sequence
GroupExam.create!(
  math: 1,
  literature: 1,
  english: 1,
  physical: 0,
  chemistry: 0,
  biological: 0,
  history: 0,
  geography: 0
  )
GroupExam.create!(
  math: 1,
  literature: 0,
  english: 0,
  physical: 1,
  chemistry: 1,
  biological: 0,
  history: 0,
  geography: 0
  )
GroupExam.create!(
  math: 1,
  literature: 0,
  english: 1,
  physical: 1,
  chemistry: 0,
  biological: 0,
  history: 0,
  geography: 0
  )
GroupExam.create!(
  math: 1,
  literature: 0,
  english: 0,
  physical: 0,
  chemistry: 1,
  biological: 1,
  history: 0,
  geography: 0
  )
GroupExam.create!(
  math: 1,
  literature: 0,
  english: 1,
  physical: 0,
  chemistry: 1,
  biological: 0,
  history: 0,
  geography: 0
  )
GroupExam.create!(
  math: 1,
  literature: 1,
  english: 2,
  physical: 0,
  chemistry: 0,
  biological: 0,
  history: 0,
  geography: 0
  )
GroupExam.create!(
  math: 0,
  literature: 1,
  english: 1,
  physical: 0,
  chemistry: 0,
  biological: 0,
  history: 1,
  geography: 0
  )

GroupExam.create!(
  math: 0,
  literature: 1,
  english: 0,
  physical: 0,
  chemistry: 0,
  biological: 0,
  history: 1,
  geography: 1
  )
