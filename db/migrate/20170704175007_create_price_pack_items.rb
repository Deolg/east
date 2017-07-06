class CreatePricePackItems < ActiveRecord::Migration[5.0]
  def change
    create_table :price_pack_items do |t|
      t.string :name
      t.timestamps
    end
  end
end
