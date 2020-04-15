class Photo < ApplicationRecord
  mount_uploader :img, ImgUploader

  # Direct associations

  belongs_to :book

  # Indirect associations

  # Validations

end
