class Response < ApplicationRecord
  # Direct associations

  belongs_to :ownership,
             :class_name => "RestaurantOwner"

  belongs_to :review

  # Indirect associations

  # Validations

end
