class CreateGroupExams < ActiveRecord::Migration
  def change
    create_table :group_exams do |t|
      t.string :exam1
      t.string :exam2
      t.string :exam3

      t.timestamps null: false
    end
  end
end
