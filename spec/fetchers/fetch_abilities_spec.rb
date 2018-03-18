require 'rails_helper'

describe FetchAbilities do
  subject(:abilities) { FetchAbilities.new.call }

  describe '#call' do
    let(:http_response_hash) { { 'test' => 'test_response' } }
    let(:http_response_json) { http_response_hash.to_json }

    it 'requests data from the expected url' do
      expect(HTTP).to receive(:get).with("https://overwatch-api.net/api/v1/ability/").and_return(http_response_json)
      expect(abilities).to eq(http_response_hash)
    end
  end
end
