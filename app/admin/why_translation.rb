ActiveAdmin.register WhyTranslation do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :why_id, :text

  form do |f|
    f.inputs "Why We translations" do
      f.input :why_id, as: :select, collection: Why.all.pluck(:id), include_blank: false
      f.input :language, as: :select, include_blank: false
      f.input :text
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
