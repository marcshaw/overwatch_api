require 'rails_helper'

RSpec.describe AbilitiesController, type: :controller do
  describe "GET #index" do
    subject(:index_request) { get :index, params: { format: :json } }

    it "returns a json blob with all the abilities" do
      pending 'todo'
    end

    it "returns a success response" do
      get :index, params: { format: :json }
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    subject(:show_request) { get :show, params: { format: :json, id: ability.to_param } }
    let(:ability) { 1 } #TODO factory girl.create ability

    it "returns a json blob with the specific ability" do
      pending 'todo'
    end

    it "returns a success response" do
      expect(response).to be_success
    end
  end
end
