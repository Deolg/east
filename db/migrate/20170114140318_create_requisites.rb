class CreateRequisites < ActiveRecord::Migration[5.0]
  def change
    create_table :requisites do |t|
      t.text :text
      t.timestamps
    end
  end
end
