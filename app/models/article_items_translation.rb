class ArticleItemsTranslation < ApplicationRecord
  belongs_to :article_item

  enum language: [:en, :ua]
end
