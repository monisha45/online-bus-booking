class CreateRots < ActiveRecord::Migration
  def change
    create_table :rots do |t|
      t.integer :route_id
      t.string :from
      t.string :to
      t.date :depart_on

      t.timestamps
    end
  end
end
