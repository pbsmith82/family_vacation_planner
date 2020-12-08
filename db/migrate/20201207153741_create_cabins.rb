class CreateCabins < ActiveRecord::Migration
  def change
    create_table :cabins do |t|
      t.string "cabin_name"
      t.boolean "tv"
      t.boolean "swimming_pool"
      t.boolean "laundry"
      t.timestamps
    end
  end
end
