class CreateRestaurantPhotos < ActiveRecord::Migration
  def change
    create_table :restaurant_photos do |t|
      t.integer :user_id
      t.integer :restaurant_id
      t.integer :review_id
      t.string :photo

      t.timestamps

    end
  end
end
