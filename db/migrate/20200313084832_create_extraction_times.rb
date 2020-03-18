class CreateExtractionTimes < ActiveRecord::Migration[5.2]
  def change
    create_table :extraction_times do |t|

      t.timestamps
    end
  end
end
