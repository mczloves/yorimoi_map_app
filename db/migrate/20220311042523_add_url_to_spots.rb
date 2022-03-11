class AddUrlToSpots < ActiveRecord::Migration[6.1]
  def change
    add_column :spots, :url, :text
  end
end
