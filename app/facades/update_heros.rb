#TODO better name
class UpdateHeros
  def call
    data = FetchHeros.new.call
    parsed_data = ParseHeroData.new(data).call

    parsed_data.each { |data| CreateHero.new(data).call }
  end
end
