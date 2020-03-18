class AddReferencesToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_reference :recipes, :user, foreign_key: true
    add_reference :recipes, :equipment, foreign_key: true
    add_reference :recipes, :extraction_time, foreign_key: true
    add_reference :recipes, :sample, foreign_key: true
  end
end
