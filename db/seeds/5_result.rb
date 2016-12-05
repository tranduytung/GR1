a = 0
res = Examinee.order(:created_at)
res.each { |resu|
math = rand(10)
literature = rand(10)
english = rand(10)
physical = rand(10)
chemistry = rand(10)
biological = rand(10)
history = rand(10)
geography = rand(10)
resu.create_result!(
  math: math,
  literature: literature,
  english: english,
  physical: physical,
  chemistry: chemistry,
  biological: biological,
  history: history,
  geography: geography
    )
  puts "Tao thanh cong diem thi thu #{a+=1}"
  graduate_score = resu.result.graduate_score_caculation
  graduate_score = 10 if graduate_score > 10
  resu.update_attributes(
    graduate_score: graduate_score)
  resu.update_attributes(
    graduated: resu.result.check_graduted)
}
