class AddNameAndTypeToEquiment < ActiveRecord::Migration[5.2]
  def change
    add_column :equipment, :name, :string
    add_column :equipment, :type, :string 
  end
end
