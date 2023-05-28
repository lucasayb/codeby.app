class CreateCustomerProfileRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :customer_profile_ratings do |t|
      t.references :professional_profile, null: false, foreign_key: true
      t.references :customer_profile, null: false, foreign_key: true
      t.references :task, null: false, foreign_key: true
      t.float :rating

      t.timestamps
    end
  end
end
