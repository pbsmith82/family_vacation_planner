class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string "name"
      t.integer "age"
      t.integer "user_id"
      t.integer "cabin_id"
      t.timestamps
    end
  end
end
