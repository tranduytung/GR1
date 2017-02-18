Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each do |seed|
  load seed
end
# load "/home/duytung/GR/GR1/db/seeds/9_register.rb"
