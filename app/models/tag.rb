class Tag < ApplicationRecord
  # Direct associations

  has_many   :restaurants_and_tags,
             :dependent => :destroy

  # Indirect associations

  has_many   :restaurants,
             :through => :restaurants_and_tags,
             :source => :restaurant

  # Validations

end
