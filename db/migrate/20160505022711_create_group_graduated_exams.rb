class CreateGroupGraduatedExams < ActiveRecord::Migration
  def change
    create_table :group_graduated_exams do |t|
      t.integer :exam_id_1
      t.integer :exam_id_2
      t.integer :exam_id_3
      t.integer :exam_id_4

      t.timestamps null: false
    end
  end
end
