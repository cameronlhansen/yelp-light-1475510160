class Tag < ApplicationRecord
  # Direct associations

  has_many   :restaurants_and_tags,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
