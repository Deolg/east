ActiveAdmin.register PriceTranslation do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :price_id, :language, :item, :description
  #
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  form do |f|
    f.inputs "Price Translation" do
      f.input :price_id, as: :select, collection: Price.all.pluck(:item), include_blank: false
      f.input :language, as: :select, include_blank: false
      f.input :item
      f.input :description
    end
    f.actions
  end


end
