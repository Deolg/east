ActiveAdmin.register Contact do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :phone, :skype, :viber, :mail, :description ,:image


  index do
    column :image do |obj|
      (obj.image.present?) ? image_tag(obj.image.url(),:style=> 'width: 80px; height:80px;') : content_tag(:span, "image not uploaded")
    end
    column :phone
    column :skype
    column :viber
    column :mail
    column :description
    actions
  end

  form do |f|
    f.inputs "Contact" do
      f.input :phone
      f.input :skype
      f.input :viber
      f.input :mail
      f.input :description
      f.input :image , as: :file
    end
    f.actions
  end

  show do
    attributes_table do
      row :phone
      row :skype
      row :viber
      row :mail
      row :description
      row :image do |obj|
        (obj.image.present?) ? image_tag(obj.image.url(),:style=> 'width: 300px;') : content_tag(:span, "image not uploaded")
      end
    end
  end

# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
