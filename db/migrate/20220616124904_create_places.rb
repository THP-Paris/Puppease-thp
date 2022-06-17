class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :street
      t.string :city
      t.string :zip
      t.string :state
      t.decimal :latitude
      t.decimal :longitude
      t.belongs_to

      t.timestamps
    end
  end
end
