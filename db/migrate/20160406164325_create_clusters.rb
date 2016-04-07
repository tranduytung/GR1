class CreateClusters < ActiveRecord::Migration
  def change
    create_table :clusters do |t|
      t.string :code
      t.string :name
      t.integer :year

      t.timestamps null: false
    end
  end
end
