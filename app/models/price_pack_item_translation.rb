class PricePackItemTranslation < ApplicationRecord
  belongs_to :price_pack_item
  enum language: [:en, :ua]
end
