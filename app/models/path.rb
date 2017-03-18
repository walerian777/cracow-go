class Path < ApplicationRecord
  belongs_to :user
  belongs_to :tag
  has_many :path_nodes, -> { order(:possition) }, dependent: :destroy
  has_many :locations, through: :path_nodes 
end
