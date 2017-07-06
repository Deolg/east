class AddOrderToPricePackItems < ActiveRecord::Migration[5.0]
  def change
    add_column :price_pack_items, :order, :integer
  end
end
