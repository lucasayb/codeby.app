class ProfessionalProfile < ApplicationRecord
  belongs_to :user

  has_many :professional_profile_ratings
  has_many :customer_profile_ratings
end
