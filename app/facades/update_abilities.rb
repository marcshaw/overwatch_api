#TODO better name
class UpdateAbilities
  def call
    data = FetchAbilities.new.call
    parsed_data = ParseAbilityData.new(data).call

    parsed_data.each { |data| CreateAbility.new(data).call }
  end
end
