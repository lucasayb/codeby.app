class CreateProposals < ActiveRecord::Migration[7.0]
  def change
    create_table :proposals do |t|
      t.integer :amount
      t.references :task, null: false, foreign_key: true
      t.references :professional_profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
