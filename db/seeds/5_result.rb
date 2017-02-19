Result.delete_all
Result.reset_pk_sequence
# CONN = ActiveRecord::Base.connection
Result.transaction do
  result_inserts = []
  TIMES.times do |m|
    puts "5 - Tao thanh cong result #{m+1}"
    math = (rand(0..10.0) * 4).round(0).to_f/4
    literature = (rand(0..9.0) * 4).round(0).to_f/4
    english = (rand(0..10.0) * 4).round(0).to_f/4
    physical = (rand(0..10.0) * 4).round(0).to_f/4
    chemistry = (rand(0..10.0) * 4).round(0).to_f/4
    biological = (rand(0..10.0) * 4).round(0).to_f/4
    history = (rand(0..9.5) * 4).round(0).to_f/4
    geography = (rand(1..9.5) * 4).round(0).to_f/4
    created_at = Time.now
    result_inserts.push "('#{m+1}','#{math}','#{literature}', '#{physical}','#{english}',
      '#{chemistry}', '#{biological}', '#{history}', '#{geography}',
      '#{created_at}', 'null')"
  end
  sql_2 = "INSERT INTO results ('examinee_id', 'math', 'literature', 'physical',
    'english', 'chemistry', 'biological', 'history', 'geography', 'created_at',
    'updated_at') VALUES #{result_inserts.join(", ")}"
  CONN.execute sql_2
  puts 'done results'
end
