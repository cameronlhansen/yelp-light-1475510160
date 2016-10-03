class Review < ApplicationRecord
  # Direct associations

  has_many   :restaurant_photos,
             :dependent => :destroy

  belongs_to :user

  belongs_to :restaurant

  # Indirect associations

  # Validations

end
