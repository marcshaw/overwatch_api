class ParseHeroData
  def initialize(raw_data)
    @raw_data = raw_data
  end

  def call
    hero_data.map do |data|
      {
        :id => hero_id(data),
        :name => hero_name(data),
        :real_name => hero_real_name(data),
        :health => hero_health(data),
        :armour => hero_armour(data),
        :shield => hero_shield(data)
      }
    end
  end

  private
  attr_reader :raw_data

  def hero_data
    raw_data['data']
  end

  def hero_id(data)
    data['id']
  end

  def hero_name(data)
    data['name']
  end

  def hero_real_name(data)
    data['real_name']
  end

  def hero_health(data)
    data['health']
  end

  def hero_armour(data)
    data['armour']
  end

  def hero_shield(data)
    data['shield']
  end
end
