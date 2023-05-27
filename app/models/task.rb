class Task < ApplicationRecord
  belongs_to :task_category
  belongs_to :user

  has_rich_text :description
end
