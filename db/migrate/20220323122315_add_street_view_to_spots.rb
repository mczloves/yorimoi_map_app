class AddStreetViewToSpots < ActiveRecord::Migration[6.1]
  def change
    add_column :spots, :street_view, :text
  end
end
