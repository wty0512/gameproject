require_relative 'base_class'

class Knight < BaseClass
  def initialize(name, stats)
    super(name, stats)
    @hp = 8
    @hp_per_level = 6

    @paper_doll.armor_categories = [:very_light, :light, :medium, :heavy]
    @paper_doll.weapon_categories = [:simple, :light, :martial, :heavy]
  end
end