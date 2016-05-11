class CreateClusters < ActiveRecord::Migration
  def change
    create_table :clusters do |t|
      t.string :code
      t.string :name
      t.string :phone
      t.string :address
      t.string :map
      t.datetime :test_day, :null => false
      t.integer :year

      t.timestamps null: false
    end
  end
end
