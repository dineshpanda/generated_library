class Book < ApplicationRecord
  # Direct associations

  has_many   :photos,
             :dependent => :destroy

  has_many   :visitor_entries,
             :dependent => :destroy

  belongs_to :author,
             :class_name => "User"

  # Indirect associations

  # Validations

end
