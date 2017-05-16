CONN = ActiveRecord::Base.connection
TIMES = 1000
Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each do |seed|
  load seed
end
# load "/home/duytung/GR/GR1/db/seeds/1_admin.rb"
# load "/home/duytung/GR/GR1/db/seeds/4_examinee.rb"
# load "/home/duytung/GR/GR1/db/seeds/5_result.rb"
# load "/home/duytung/GR/GR1/db/seeds/5_update_examinee.rb"
# load "/home/duytung/GR/GR1/db/seeds/6_group_exam.rb"
# load "/home/duytung/GR/GR1/db/seeds/7_0_delete.rb"
# load "/home/duytung/GR/GR1/db/seeds/7_dcn.rb"
# load "/home/duytung/GR/GR1/db/seeds/7_ftu.rb"
# load "/home/duytung/GR/GR1/db/seeds/7_nuce.rb"
# load "/home/duytung/GR/GR1/db/seeds/7_university_bk.rb"
# load "/home/duytung/GR/GR1/db/seeds/7_university_ktqd.rb"
# load "/home/duytung/GR/GR1/db/seeds/7_utc.rb"
# load "/home/duytung/GR/GR1/db/seeds/9_register.rb"
