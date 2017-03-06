class CreateRegisters < ActiveRecord::Migration
  def change
    create_table :registers do |t|
      t.references :examinee, index: true, foreign_key: true
      t.references :major, index: true, foreign_key: true
      t.references :group_exam, index: true, foreign_key: true
      t.integer :numbering_order
      t.float :review_score
      t.integer :status, default: 0
      t.integer :aspiration
      t.integer :year

      t.timestamps null: false
    end
  end
end
