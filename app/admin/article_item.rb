ActiveAdmin.register ArticleItem do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :title, :body, :menu_item_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  index do
    id_column
    column :title
    column :body
    # column :article_items_translations
    actions
  end

  form do |f|
    f.inputs "Article" do
      f.input :title, class: 'ckeditor'
      f.input :body, input_html: { class: 'ckeditor' }
    end
    f.actions
  end


end
