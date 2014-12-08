class AddcolumnToBuses < ActiveRecord::Migration
  def change
  	add_column :buses, :bus_names, :string
  end
end
