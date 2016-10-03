class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :restaurants_and_tags,
             :dependent => :destroy

  has_many   :reviews,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
