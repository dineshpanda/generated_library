class VisitorEntry < ApplicationRecord
  # Direct associations

  belongs_to :book

  belongs_to :user

  # Indirect associations

  # Validations

end
