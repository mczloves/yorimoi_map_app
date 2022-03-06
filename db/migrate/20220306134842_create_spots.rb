class CreateSpots < ActiveRecord::Migration[6.1]
  def change
    create_table :spots do |t|
      t.string :name
      t.string :address
      t.text :body
      t.string :image

      t.timestamps
    end
  end
end
