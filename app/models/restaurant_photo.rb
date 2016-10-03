class RestaurantPhoto < ApplicationRecord
  # Direct associations

  belongs_to :review

  belongs_to :user

  belongs_to :restaurant

  # Indirect associations

  # Validations

end
