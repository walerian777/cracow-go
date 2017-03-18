class Location < ApplicationRecord
  has_many :locations_tags, dependent: :destroy
  has_many :tags, through: :locations_tags
end
