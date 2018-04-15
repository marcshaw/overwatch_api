class Services::CreateHero
  def initialize(hero_params)
    @hero_params = hero_params
  end

  def call
    Hero.create!(hero_params)
  end

  private
  attr_reader :hero_params
end
