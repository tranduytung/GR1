class CreateMajors < ActiveRecord::Migration
  def change
    create_table :majors do |t|
      t.references :university, index: true, foreign_key: true
      t.string :code
      t.integer :year
      t.integer :target
      t.integer :register_status

      t.timestamps null: false
    end
  end
end
