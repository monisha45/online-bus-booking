class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :source
      t.text   :destination

      t.timestamps
    end
  end
end
