class PricePack < ApplicationRecord
  has_many :price_pack_item_price_packs
  has_many :price_pack_items, through: :price_pack_item_price_packs
end
