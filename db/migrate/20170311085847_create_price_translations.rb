class CreatePriceTranslations < ActiveRecord::Migration[5.0]
  def change
    create_table :price_translations do |t|
      t.integer :price_id
      t.integer :language
      t.string   :item
      t.string   :description
      t.timestamps
    end
  end
end
