class CreateWishes < ActiveRecord::Migration[5.2]
  def change
    create_table :wishes do |t|
      t.string :title
      t.string :description
      t.integer :total_price
      t.integer :price_chunks
      t.string :wish_image
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
