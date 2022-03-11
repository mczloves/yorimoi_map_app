class AddImage2ToSpots < ActiveRecord::Migration[6.1]
  def change
    add_column :spots, :image_2, :string
  end
end
