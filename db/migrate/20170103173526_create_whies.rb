class CreateWhies < ActiveRecord::Migration[5.0]
  def change
    create_table :whies do |t|
      t.text :text
      t.timestamps
    end
  end
end
