class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :restaurant_owners,
             :dependent => :destroy

  has_many   :restaurant_photos,
             :dependent => :destroy

  has_many   :restaurants_and_tags,
             :dependent => :destroy

  has_many   :reviews,
             :dependent => :destroy

  # Indirect associations

  has_many   :tags,
             :through => :restaurants_and_tags,
             :source => :tag

  # Validations

end
