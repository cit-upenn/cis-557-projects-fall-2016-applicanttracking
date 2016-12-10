class AddDatatypeToCustom < ActiveRecord::Migration
  def change
    add_column :customs, :datatype, :string
  end
end
