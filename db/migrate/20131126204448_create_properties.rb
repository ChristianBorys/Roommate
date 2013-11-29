class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|

      t.string :name
      t.integer :rent
      t.integer :bedrooms
      t.integer :bathrooms
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
