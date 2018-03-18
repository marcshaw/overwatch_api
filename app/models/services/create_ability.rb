class Services::CreateAbility
  def initialize(ability_params)
    @ability_params = ability_params
  end

  def call
  end

  private
  attr_reader :ability_params
end
