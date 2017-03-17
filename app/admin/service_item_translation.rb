ActiveAdmin.register ServiceItemTranslation do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :service_item_id, :service_name, :language
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  form do |f|
    f.inputs "Service Item Translations" do
      f.input :service_item_id, as: :select, collection: ServiceItem.all.map{|s| [s.service_name, s.id]}, include_blank: false
      f.input :language, as: :select, include_blank: false
      f.input :service_name
    end
    f.actions
  end
end
