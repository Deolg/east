class CleanStuff < ActiveRecord::Migration[5.0]
  def self.up
    PricePack.destroy_all
    add_column :price_packs, :order_index, :integer
    remove_column :price_packs, :company, :boolean
    remove_column :price_packs, :notary, :boolean
    remove_column :price_packs, :jur_address, :boolean
    remove_column :price_packs, :contact_person, :boolean
    remove_column :price_packs, :account, :boolean
    remove_column :price_packs, :remote_open, :boolean
    remove_column :price_packs, :vat, :boolean
    remove_column :price_packs, :included_capital, :boolean
  end

  def self.down
    remove_column :price_packs, :order_index, :integer
    add_column :price_packs, :company, :boolean
    add_column :price_packs, :notary, :boolean
    add_column :price_packs, :jur_address, :boolean
    add_column :price_packs, :contact_person, :boolean
    add_column :price_packs, :account, :boolean
    add_column :price_packs, :remote_open, :boolean
    add_column :price_packs, :vat, :boolean
    add_column :price_packs, :included_capital, :boolean
  end
end
