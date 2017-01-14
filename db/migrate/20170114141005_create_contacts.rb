class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :phone
      t.string :skype
      t.string :mail
      t.string :viber
      t.timestamps
    end
  end
end
