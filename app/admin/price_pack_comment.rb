ActiveAdmin.register PricePackComment do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :text, :language
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
form do |f|
  f.inputs "Comment Translation" do
    f.input :language, as: :select, include_blank: false
    f.input :text, as: :text, input_html: { class: 'ckeditor' }
  end
  f.actions
end


end
