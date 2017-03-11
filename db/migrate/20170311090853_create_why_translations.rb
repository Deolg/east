class CreateWhyTranslations < ActiveRecord::Migration[5.0]
  def change
    create_table :why_translations do |t|
      t.integer :why_id
      t.integer :language
      t.text :text
      t.timestamps
    end
  end
end
