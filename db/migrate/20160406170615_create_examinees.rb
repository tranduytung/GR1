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
      t.string :exam1, default: 'math'
      t.string :exam2, default: 'literature'
      t.string :exam3, default: 'english'
      t.string :exam4
      t.integer :graduate_score
      t.integer :year
      t.references :cluster, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
