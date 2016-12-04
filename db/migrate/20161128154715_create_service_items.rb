class CreateServiceItems < ActiveRecord::Migration[5.0]
  def change
    create_table :service_items do |t|
      t.string :service_name
      t.timestamps
    end
  end
end
