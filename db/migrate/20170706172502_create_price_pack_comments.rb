class CreatePricePackComments < ActiveRecord::Migration[5.0]
  def change
    create_table :price_pack_comments do |t|
      t.text :text
      t.integer :language
      t.timestamps
    end
  end
end
