ActiveAdmin.register ArticleItemsTranslation do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :language, :article_item_id, :title, :body

  form do |f|
    f.inputs "Article Translation" do
      f.input :article_item_id, as: :select, collection: ArticleItem.all, include_blank: false
      f.input :language, as: :select, include_blank: false
      f.input :title
      f.input :body, as: :text, input_html: { class: 'ckeditor' }
    end
    f.actions
  end
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end



end
