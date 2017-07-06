class CreatePricePackItemPricePacks < ActiveRecord::Migration[5.0]
  def change
    create_table :price_pack_item_price_packs do |t|
      t.integer :price_pack_item_id, null: false
      t.integer :price_pack_id, null: false
      t.boolean :value
      
      t.timestamps
    end
  end
end
