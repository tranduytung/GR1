class CreateRegisterTimes < ActiveRecord::Migration
  def change
    create_table :register_times do |t|
      t.integer :year
      t.datetime :start_aspiration_1
      t.datetime :end_aspiration_1
      t.datetime :start_aspiration_2
      t.datetime :end_aspiration_2
      t.datetime :start_aspiration_3
      t.datetime :end_aspiration_3

      t.timestamps null: false
    end
  end
end
