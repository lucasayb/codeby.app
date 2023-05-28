class CreateProfessionalProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :professional_profiles do |t|
      t.string :picture
      t.string :name, null: false
      t.string :document_number, null: false
      t.references :user, null: false, foreign_key: true
      t.string :cv

      t.timestamps
    end
  end
end
