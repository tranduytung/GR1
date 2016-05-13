class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.float :math, default: 0
      t.float :literature, default: 0
      t.float :english, default: 0
      t.float :physical, default: 0
      t.float :chemistry, default: 0
      t.float :biological, default: 0
      t.float :history, default: 0
      t.float :geography, default: 0
      t.references :examinee, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end