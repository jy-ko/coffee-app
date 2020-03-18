class CreateSamples < ActiveRecord::Migration[5.2]
  def change
    create_table :samples do |t|
      t.string :roaster
      t.string :origin
      t.date :roast_date

      t.timestamps
    end
  end
end
