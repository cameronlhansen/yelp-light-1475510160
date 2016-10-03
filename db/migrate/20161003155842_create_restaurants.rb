class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :city
      t.string :neighborhood
      t.string :description
      t.string :address
      t.string :website
      t.string :coverphoto
      t.string :average_stars
      t.string :total_reviews

      t.timestamps

    end
  end
end
