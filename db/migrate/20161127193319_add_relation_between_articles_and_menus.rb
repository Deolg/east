class AddRelationBetweenArticlesAndMenus < ActiveRecord::Migration[5.0]
  def change
    add_column :article_items, :menu_item_id, :integer
  end
end
