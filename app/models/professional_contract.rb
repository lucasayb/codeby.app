class ProfessionalContract < ApplicationRecord
  belongs_to :user
  belongs_to :professional_profile
end
