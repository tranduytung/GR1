class AddLastYearBenchmarkToMajor < ActiveRecord::Migration
  def change
    add_column :majors, :last_year_benchmark, :integer
  end
end
