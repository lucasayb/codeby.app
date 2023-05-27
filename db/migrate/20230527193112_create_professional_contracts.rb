class CreateProfessionalContracts < ActiveRecord::Migration[7.0]
  def change
    create_table :professional_contracts do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :contract_time
      t.references :professional_profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
