class CreateMajors < ActiveRecord::Migration
  def change
    create_table :majors do |t|
      t.references :university, index: true, foreign_key: true
      t.string :code
      t.integer :year
      t.integer :target
      t.integer :benchmark1
      t.integer :benchmark2
      t.integer :benchmark3
      t.datetime :deadline1
      t.datetime :deadline2
      t.datetime :deadline3

      t.timestamps null: false
    end
  end
end
