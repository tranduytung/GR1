class CreateGroupExams < ActiveRecord::Migration
  def change
    create_table :group_exams do |t|
      t.integer :math, default: 0
      t.integer :literature, default: 0
      t.integer :english, default: 0
      t.integer :physical, default: 0
      t.integer :chemistry, default: 0
      t.integer :biological, default: 0
      t.integer :history, default: 0
      t.integer :geography, default: 0

      t.timestamps null: false
    end
  end
end
