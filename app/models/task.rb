class Task < ApplicationRecord
  belongs_to :task_category
  belongs_to :customer_profile

  has_rich_text :description
end
