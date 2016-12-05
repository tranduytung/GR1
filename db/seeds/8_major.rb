major = University.order(:created_at)
2.times do
major.each{ |major|
  name = Faker::Name.name
  year = 2015
  benchmark1 = rand(10)+17
  benchmark2 = rand(10)+10
  benchmark3 = rand(15)
  last_year_benchmark = rand(10)+10
  deadline1 = DateTime.new(2015, 8, 1, 12, 00)
  deadline2 = DateTime.new(2015, 8, 15, 12, 00)
  if benchmark3 > 0
    deadline3 = DateTime.new(2015, 8, 25, 12, 00)
  else deadline3 = nil
  end
  major.majors.create!(
    name: name,
    year: year,
    benchmark1: benchmark1,
    benchmark2: benchmark2,
    benchmark3: benchmark3,
    deadline1: deadline1,
    deadline2: deadline2,
    deadline3: deadline3,
    last_year_benchmark: last_year_benchmark
    )
}
end
