class CustomerProfileRating < ApplicationRecord
  belongs_to :customer_profile
  belongs_to :professional_profile
  belongs_to :task
end
