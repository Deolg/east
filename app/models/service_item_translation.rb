class ServiceItemTranslation < ApplicationRecord
  belongs_to :service_item

  enum language: [:en, :ua]
  
end
