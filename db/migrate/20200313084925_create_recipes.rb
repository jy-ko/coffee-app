class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.integer :temp
      t.text :note

      t.timestamps
    end
  end
end
