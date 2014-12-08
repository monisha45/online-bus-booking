class CreateBusTypes < ActiveRecord::Migration
  def change
    create_table :bus_types do |t|
    	t.string :type
        t.text   :description

        t.timestamps
    end
  end
end
