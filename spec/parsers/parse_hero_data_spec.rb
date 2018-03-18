require 'rails_helper'

describe ParseHeroData do
  subject(:parsed_data) { ParseHeroData.new(raw_data).call }

  describe '#call' do
    let(:raw_data) do
      {
        'data': [
          hero_1,
          hero_2
        ]
      }.with_indifferent_access
    end

    let(:hero_1) do
      {
        'name': 'test',
        'real_name': 'real_test',
        'health': 100,
        'armour': 250,
        'shield': 400,
        'misc': 'misc'
      }
    end

    let(:hero_2) do
      {
        'name': 'test2',
        'real_name': 'real_test2',
        'health': 50,
        'armour': 75,
        'shield': 80,
        'misc': 'misc2'
      }
    end

    it 'returns an array of hashs matching the data expected' do
      expect(parsed_data).to contain_exactly(hero_1.except(:misc), hero_2.except(:misc))
    end
  end
end
