class Location < ApplicationRecord
  class << self
    def search(search)
      locations = where('city ILIKE :search OR district ILIKE :search OR ward ILIKE :search', search: "%#{search}%")
      locations
    end
  end
end
