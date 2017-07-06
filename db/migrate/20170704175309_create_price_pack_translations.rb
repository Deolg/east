class CreatePricePackTranslations < ActiveRecord::Migration[5.0]
  def change
    create_table :price_pack_item_translations do |t|
      t.integer :price_pack_item_id
      t.integer :language
      t.text :name
      t.timestamps
    end
  end
end
