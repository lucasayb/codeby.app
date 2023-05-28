class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :customer_profile, null: false, foreign_key: true
      t.references :professional_profile, null: false, foreign_key: true
      t.integer :amount
      t.references :proposal, null: false, foreign_key: true
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
