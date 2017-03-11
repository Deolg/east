class PriceTranslation < ApplicationRecord
  belongs_to :price

  enum language: [:en, :ua]
  
end
