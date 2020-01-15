class CreateMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :maps do |t|

      t.timestamps
          t.integer "producer_id"
    t.text "comment"
    t.string "lonlat"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false

    end
  end
end
