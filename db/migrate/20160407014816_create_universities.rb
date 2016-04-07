class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      t.string :name
      t.string :code
      t.string :password

      t.timestamps null: false
    end
  end
end
