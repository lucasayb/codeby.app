class ProfessionalProfileRating < ApplicationRecord
  belongs_to :professional_profile
  belongs_to :customer_profile
  belongs_to :task
end
