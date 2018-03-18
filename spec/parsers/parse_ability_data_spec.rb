require 'rails_helper'

describe ParseAbilityData do
  subject(:parsed_data) { ParseAbilityData.new(raw_data).call }

  describe '#call' do
    let(:raw_data) do
      {
        'data': [
          ability_1_raw_data,
          ability_2_raw_data
        ]
      }.with_indifferent_access
    end

    let(:ability_1_default) do
      {
        'name': 'test',
        'description': 'test description',
        'is_ultimate': 'false',
        'misc': 'misc',
      }
    end

    let(:ability_2_default) do
      {
        'name': 'test2',
        'description': 'test description2',
        'is_ultimate': 'true',
        'misc': 'misc2',
      }
    end

    let(:ability_1_raw_data) { ability_1_default.merge('hero': { 'id': 1 })}
    let(:ability_2_raw_data) { ability_2_default.merge('hero': { 'id': 2 })}
    let(:ability_1_expected_data) { ability_1_default.merge('hero_id': 1).except(:misc)}
    let(:ability_2_expected_data) { ability_2_default.merge('hero_id': 2).except(:misc)}

    it 'returns an array of hashs matching the data expected' do
      expect(parsed_data).to contain_exactly(ability_1_expected_data, ability_2_expected_data)
    end
  end
end
