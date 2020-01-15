class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|

      t.timestamps
          t.string "product_name"
    t.string "product_image_id"
    t.text "detail"
    t.integer "producer_id"
    t.integer "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    end
  end
end
