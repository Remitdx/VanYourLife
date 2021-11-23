class AddVanUrlToVans < ActiveRecord::Migration[6.1]
  def change
    add_column :vans, :van_url, :string
  end
end
