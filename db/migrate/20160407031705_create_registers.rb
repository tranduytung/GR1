class CreateRegisters < ActiveRecord::Migration
  def change
    create_table :registers do |t|
      t.references :examinee, index: true, foreign_key: true
      t.references :major, index: true, foreign_key: true
      t.boolean :status
      t.integer :year

      t.timestamps null: false
    end
  end
end
