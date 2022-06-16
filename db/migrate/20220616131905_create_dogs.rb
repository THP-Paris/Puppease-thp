class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.datetime :birth_date
      t.integer :gender
      t.text :description
      t.integer :vaccine
      t.integer :lof
      t.integer :reward
      t.integer :breed
      t.integer :color
      t.belongs_to :user, index: true 

      t.timestamps
    end
  end
end
