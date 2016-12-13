class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      t.string :name
      t.string :code
      t.string :password
      t.string :phone
      t.string :address
      t.string :web_site

      t.timestamps null: false
    end
  end
end
