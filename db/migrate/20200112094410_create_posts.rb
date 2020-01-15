class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|

      t.timestamps
          t.integer "user_id"
    t.string "title"
    t.string "follow_producer"
    t.string "follow_item"
    t.text "description"
    t.string "post_image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    end
  end
end
