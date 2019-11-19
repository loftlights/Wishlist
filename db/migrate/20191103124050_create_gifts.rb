class CreateGifts < ActiveRecord::Migration[5.2]
  def change
    create_table :gifts do |t|
      t.text :message
      t.references :user, foreign_key: true
      t.references :wish, foreign_key: true
      t.integer :gift_value

      t.timestamps
    end
  end
end
