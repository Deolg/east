class CreateCompanyTypeTranslations < ActiveRecord::Migration[5.0]
  def change
    create_table :company_type_translations do |t|
      t.integer :company_type_id
      t.integer :language
      t.string   :form
      t.text     :capital
      t.text     :heads
      t.text     :responsibility
      t.text     :management
      t.timestamps
    end
  end
end
