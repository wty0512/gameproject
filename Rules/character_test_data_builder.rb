require_relative './stats'
require_relative './character'
require_relative './races'
require_relative './classes/sorcerer'

# A class used to build sample characters to be used in unit tests and specs.
class CharacterTestDataBuilder
  def initialize
    @name = 'Felgar'
    @race = Human.new
    @armor_categories = [:very_light]

    @stats = Stats.new
    @stats.might, @stats.accuracy, @stats.endurance = 10, 10, 10
    @stats.intellect, @stats.personality = 10, 10
    @stats.speed, @stats.luck = 10, 10
  end

  def build
    character = Character.new(@name, @race, @stats)
    character.paper_doll.armor_categories = @armor_categories
    character
  end

  def build_sorcerer
    character = Sorcerer.new(@name, @race, @stats)
  end

  def with_name(name)
    @name = name
    self
  end

  def with_armor_categories(armor_categories)
    @armor_categories = armor_categories
    self
  end
end
