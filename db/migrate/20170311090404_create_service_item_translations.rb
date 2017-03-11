class CreateServiceItemTranslations < ActiveRecord::Migration[5.0]
  def change
    create_table :service_item_translations do |t|
      t.integer :service_item_id
      t.integer :language
      t.string  :service_name
      t.timestamps
    end
  end
end
