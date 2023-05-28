class CreateCustomerProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :customer_profiles do |t|
      t.string :picture
      t.string :document_number, null: false
      t.references :user, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
