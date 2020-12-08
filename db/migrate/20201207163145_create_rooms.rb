class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string "room_name"
      t.integer "occupancy_limit"
      t.boolean "fireplace"
      t.string "cabin_id"
      t.timestamps
    end
  end
end
