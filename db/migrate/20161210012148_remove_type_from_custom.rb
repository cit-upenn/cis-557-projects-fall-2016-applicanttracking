class RemoveTypeFromCustom < ActiveRecord::Migration
  def change
     remove_column :customs, :type, :string
  end
end
