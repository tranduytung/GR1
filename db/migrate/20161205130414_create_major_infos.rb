class CreateMajorInfos < ActiveRecord::Migration
  def change
    create_table :major_infos do |t|
      t.references :major, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end
