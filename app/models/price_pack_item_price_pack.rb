class PricePackItemPricePack < ApplicationRecord
  belongs_to :price_pack
  belongs_to :price_pack_item
end
