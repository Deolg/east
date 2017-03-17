ActiveAdmin.register CompanyTypeTranslation do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :company_type_id, :language, :form, :capital, :heads, :responsibility, :management
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  form do |f|
    f.inputs "Company Type Translation" do
      f.input :company_type_id, as: :select, collection: CompanyType.all.map{|c| [c.form, c.id]}, include_blank: false
      f.input :language, as: :select, include_blank: false
      f.input :form
      f.input :capital
      f.input :heads
      f.input :responsibility
      f.input :management
    end
    f.actions
  end


end
