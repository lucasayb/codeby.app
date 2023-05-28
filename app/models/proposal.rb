class Proposal < ApplicationRecord
  belongs_to :task
  belongs_to :professional_profile
end
