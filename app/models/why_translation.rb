class WhyTranslation < ApplicationRecord
  belongs_to :why

  enum language: [:en, :ua]
  
end
