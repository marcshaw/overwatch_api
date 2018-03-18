class Services::CreateHero
  def initialize(hero_params)
    @hero_params = hero_params
  end

  def call
  end

  private
  attr_reader :hero_params
end
