class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|

      t.references :property
      t.references :user
      t.integer :match_id

      t.timestamps
    end
  end
end
