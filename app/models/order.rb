class Order < ApplicationRecord
  belongs_to :professional_profile
  belongs_to :customer_profile
  belongs_to :proposal
  belongs_to :task
end
