class CustomerProfile < ApplicationRecord
  belongs_to :user

  has_many :customer_profile_ratings
  has_many :professional_profile_ratings

  def average_rating
    self.customer_profile_ratings.average(:rating)
  end

  def count_rating
    self.customer_profile_ratings.count
  end
end
