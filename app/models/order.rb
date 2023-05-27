class Order < ApplicationRecord
  belongs_to :user
  belongs_to :proposal
  belongs_to :task
end
