class CreateVans < ActiveRecord::Migration[6.1]
  def change
    create_table :vans do |t|
      t.integer :nb_seats
      t.string :brand
      t.text :description
      t.string :localisation
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
