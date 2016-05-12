class CreateExaminees < ActiveRecord::Migration
  def change
    create_table :examinees do |t|
      t.string :name
      t.string :people_id
      t.string :student_id
      t.string :phone
      t.string :home_town
      t.string :hight_school
      t.datetime :birthday, :null => false
      t.boolean :graduated
      t.integer :graduate_score
      t.integer :year
      t.references :cluster, index: true, foreign_key: true
      t.references :group_graduated_exam, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :examinees, :people_id, unique: true
  end
end
