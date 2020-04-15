require 'open-uri'
class Photo < ApplicationRecord
  before_validation :geocode_loc

  def geocode_loc
    if self.loc.present?
      url = "https://maps.googleapis.com/maps/api/geocode/json?key=#{ENV['GMAP_API_KEY']}&address=#{URI.encode(self.loc)}"

      raw_data = open(url).read

      parsed_data = JSON.parse(raw_data)

      if parsed_data["results"].present?
        self.loc_latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]

        self.loc_longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]

        self.loc_formatted_address = parsed_data["results"][0]["formatted_address"]
      end
    end
  end
  mount_uploader :img, ImgUploader

  # Direct associations

  belongs_to :book

  # Indirect associations

  # Validations

end
