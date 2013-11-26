class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|

      t.integer :rent
      t.string :size
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
