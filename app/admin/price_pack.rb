ActiveAdmin.register PricePack do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :name, :price, :order_index, price_pack_item_ids: []
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  form do |f|
    f.inputs "Price Pack Details" do
      f.input :name
      f.input :order_index
      f.input :price_pack_items, as: :check_boxes, :collection => PricePackItem.all.map{ |item|  [item.name, item.id] }
      f.input :price
    end
    f.actions
  end

  controller do
    def scoped_collection
      PricePack.unscoped
    end
  end
end
