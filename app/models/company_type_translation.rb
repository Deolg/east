class CompanyTypeTranslation < ApplicationRecord
  belongs_to :company_type

  enum language: [:en, :ua]

  
end
