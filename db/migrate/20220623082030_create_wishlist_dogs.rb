class CreateWishlistDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :wishlist_dogs do |t|
      t.integer :dog_id
      t.integer :wishlist_id

      t.timestamps
    end
  end
end
