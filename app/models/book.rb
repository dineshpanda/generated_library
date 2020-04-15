class Book < ApplicationRecord
  # Direct associations

  has_many   :photos,
             :dependent => :destroy

  has_many   :visitor_entries,
             :dependent => :destroy

  belongs_to :author,
             :class_name => "User"

  # Indirect associations

  has_many   :users,
             :through => :visitor_entries,
             :source => :user

  # Validations

end
