class LocationsTag < ApplicationRecord
  has_one :locations
  has_one :tags
end
