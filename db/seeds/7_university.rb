2.times do |n|
  name = Faker::Name.name
  code = Faker::Code.ean(base = 9)
  email = "uni-#{n+1}@gmail.com"
  password = "123456"
  University.create!(name: name,
  code: code,
  password: password,
  email: email,
  password_confirmation: password,)
end
