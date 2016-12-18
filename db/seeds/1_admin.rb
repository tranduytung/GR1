Admin.delete_all
Admin.reset_pk_sequence
RegisterTime.delete_all
RegisterTime.reset_pk_sequence
Admin.create(
  name: "Admin",
  email: "admin@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  phone: "123456780")
RegisterTime.create(
  year: Time.now.year
  )
