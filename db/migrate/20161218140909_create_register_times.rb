class CreateRegisterTimes < ActiveRecord::Migration
  def change
    create_table :register_times do |t|
      t.integer :year
      t.datetime :start_university_manage
      t.datetime :end_university_manage
      t.datetime :start_aspiration_1
      t.datetime :end_aspiration_1
      t.datetime :start_update_benchmark_1
      t.datetime :end_update_benchmark_1
      t.datetime :start_admission_1
      t.datetime :end_admission_1

      t.timestamps null: false
    end
  end
end
