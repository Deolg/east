class CreatePricePacks < ActiveRecord::Migration[5.0]
  def change
    create_table :price_packs do |t|
      t.string :name, null: false
      t.boolean :company, default: false
      t.boolean :notary, default: false
      t.boolean :jur_address, default: false
      t.boolean :contact_person, default: false
      t.boolean :account, default: false
      t.boolean :remote_open, default: false
      t.boolean :vat, default: false
      t.boolean :included_capital, default: false
      t.float :price, default: 0
      t.timestamps
    end
  end
end
