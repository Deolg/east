class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.string :from
      t.text :body
      t.integer :status, default: 0
      t.text :address
      t.timestamps
    end
  end
end
