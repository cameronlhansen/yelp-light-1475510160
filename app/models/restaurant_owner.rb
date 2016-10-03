class RestaurantOwner < ApplicationRecord
  # Direct associations

  has_many   :responses,
             :foreign_key => "ownership_id",
             :dependent => :destroy

  belongs_to :user

  belongs_to :restaurant

  # Indirect associations

  # Validations

end
