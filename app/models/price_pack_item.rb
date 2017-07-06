class PricePackItem < ApplicationRecord
  has_many :price_pack_item_price_packs
  has_many :price_pack_item_translations

  default_scope { order(order: :desc) }
end
