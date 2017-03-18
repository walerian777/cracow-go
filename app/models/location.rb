class Location < ApplicationRecord
  has_many :locations_tags
  has_many :tags, through: :locations_tags
end
