class Location < ApplicationRecord
  acts_as_mappable default_units: :kms,
                   lat_column_name: :latitude,
                   lng_column_name: :longitude

  has_many :locations_tags, dependent: :destroy
  has_many :tags, through: :locations_tags
  has_many :visited_location, dependent: :destroy
  has_many :users, through: :visited_location

  def visit_by(user, recommended = false)
    user.visited_locations.create!(location_id: id, recommended: recommended)
  end
end
