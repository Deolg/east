class CreateArticleItemsTranslations < ActiveRecord::Migration[5.0]
  def change
    create_table :article_items_translations do |t|
      t.integer :article_item_id
      t.integer :language
      t.string :title
      t.text :body
      t.timestamps
    end
  end
end
