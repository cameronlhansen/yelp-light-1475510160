class User < ApplicationRecord
  # Direct associations

  has_many   :restaurant_owners,
             :dependent => :destroy

  has_many   :restaurant_photos,
             :dependent => :destroy

  has_many   :reviews,
             :dependent => :destroy

  # Indirect associations

  has_many   :restaurants,
             :through => :reviews,
             :source => :restaurant

  # Validations

end
