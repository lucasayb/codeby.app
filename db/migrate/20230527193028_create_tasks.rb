class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :slug
      t.text :raw_description
      t.text :description
      t.references :task_category, null: false, foreign_key: true
      t.references :customer_profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
