class CreateSpotUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :spot_users do |t|
      t.string :comment
      t.string :image
      t.references :user, null: false, foreign_key: true
      t.references :spot, null: false, foreign_key: true

      t.timestamps
    end
  end
end
