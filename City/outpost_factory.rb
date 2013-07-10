require_relative '../map'
require_relative 'city_factory'
require_relative '../Events/shop_event'
require_relative '../Events/inn_event'
require_relative '../Events/guild_event'
require_relative '../Events/temple_event'

class OutpostFactory < CityFactory
  def initialize
    super
    @width = 12
    @height = 12
    @tiles = Array.new
  end

  def build
    initialize_starting_tiles
    place_entrance
    readjust_walls

    city = Map.new(@width, @height, @tiles)
    city.name = give_name

    place_buildings(city)
    place_dead_ends(city)

    events = [InnEvent.new(establishment_name_generator.get_tavern_name)]

    place_events(city, events)

    city
  end
end