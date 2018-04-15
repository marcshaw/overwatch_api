class ParseAbilityData
  def initialize(raw_data)
    @raw_data = raw_data
  end

  def call
    ability_data.map do |data|
      {
        :name => ability_name(data),
        :description => ability_description(data),
        :is_ultimate => ability_is_ultimate(data),
        :hero_id => ability_hero_id(data)
      }
    end
  end

  private
  attr_reader :raw_data

  def ability_data
    raw_data['data']
  end

  def ability_name(data)
    data['name']
  end

  def ability_description(data)
    data['description']
  end

  def ability_is_ultimate(data)
    data['is_ultimate']
  end

  def ability_hero_id(data)
    data['hero']['id']
  end
end
