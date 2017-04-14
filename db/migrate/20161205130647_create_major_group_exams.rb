class CreateMajorGroupExams < ActiveRecord::Migration
  def change
    create_table :major_group_exams do |t|
      t.references :major, index: true, foreign_key: true
      t.references :group_exam, index: true, foreign_key: true
      t.float :benchmark1, default: 0

      t.timestamps null: false
    end
  end
end
