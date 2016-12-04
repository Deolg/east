class CreateCompanyTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :company_types do |t|
      t.string :form
      t.text :capital
      t.text :heads
      t.text :responsibility
      t.text :management
      t.timestamps
    end
  end
end
