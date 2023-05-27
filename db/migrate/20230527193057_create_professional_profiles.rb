class CreateProfessionalProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :professional_profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :cv

      t.timestamps
    end
  end
end
