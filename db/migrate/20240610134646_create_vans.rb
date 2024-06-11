class CreateVans < ActiveRecord::Migration[7.1]
  def change
    create_table :vans do |t|
      t.string :brand
      t.integer :km
      t.text :description
      t.integer :number_of_seat
      t.integer :price
      t.string :categorie
      t.string :location

      t.timestamps
    end
  end
end
