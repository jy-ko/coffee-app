class AddTimeToExtractionTimes < ActiveRecord::Migration[5.2]
  def change
    add_column :extraction_times, :time, :float
  end
end
