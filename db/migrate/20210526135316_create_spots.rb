class CreateSpots < ActiveRecord::Migration[6.1]
  def change
    create_table :spots do |t|
      t.text :description
      t.string :title
      t.string :address
      t.boolean :seen, default: false
      t.string :category
      t.string :latitude
      t.string :longitude
      t.string :link

      t.timestamps
    end
  end
end
