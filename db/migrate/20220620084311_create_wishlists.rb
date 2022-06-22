class CreateWishlists < ActiveRecord::Migration[5.2]
  def change
    create_table :wishlists do |t|
      t.integer :limit
      t.references :user, foreign_key: true
      t.references :dog, foreign_key: true

      t.timestamps
    end

    add_index :wishlists, [:user_id, :dog_id], unique: true
  end
end
