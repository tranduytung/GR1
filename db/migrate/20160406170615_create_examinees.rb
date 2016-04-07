class CreateExaminees < ActiveRecord::Migration
  def change
    create_table :examinees do |t|
      t.string :name
      t.string :password
      t.string :people_id
      t.boolean :graduated
      t.string :exam1, default: 'math'
      t.string :exam2, default: 'literature'
      t.string :exam3, default: 'english'
      t.string :exam4
      t.integer :score
      t.integer :year
      t.references :cluster, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
