class PathGenerator
  attr_reader :user, :tag, :current_coordinates

  def self.call(user, tag, current_coordinates)
    new(user, tag, current_coordinates).call
  end

  def initialize(user, tag, current_coordinates)
    @user = user
    @tag = tag
    @current_coordinates = current_coordinates
  end

  def call
    locations = tag.locations.first(6)
    distances = locations.map do |location|
      {location => location.distance_to(current_coordinates)}
    end

    nodes = distances.sort_by!(&:values).flat_map(&:keys)
    path = Path.create(user: user, tag: tag)

    nodes.each_with_index do |l,i| 
      PathNode.create(location: l, path: path, possition: i)
    end
    path
  end
end
