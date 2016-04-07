class CreateTalentPoints < ActiveRecord::Migration
  def change
    create_table :talent_points do |t|
      t.references :examinee, index: true, foreign_key: true
      t.references :university, index: true, foreign_key: true
      t.string :tal_name
      t.integer :tal_point

      t.timestamps null: false
    end
  end
end
