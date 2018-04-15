require 'rails_helper'

RSpec.describe HerosController, type: :controller do
  describe "GET #index" do
    subject(:index_request) { get :index, params: { format: :json } }

    it "returns a json blob with all the heros" do
      pending 'todo'
    end

    it "returns a success response" do
      get :index, params: { format: :json }
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    subject(:show_request) { get :show, params: { format: :json, id: hero.to_param } }
    let(:hero) { 1 } #TODO factory girl.create hero

    it "returns a json blob with the specific hero" do
      pending 'todo'
    end

    it "returns a success response" do
      expect(response).to be_success
    end
  end

  describe "GET #abilities" do
    subject(:ability_request) { get :ability, params: { format: :json, id: hero.to_param } }
    let(:hero) { 1 } #TODO factory girl.create hero

    it "returns a json blob with the specific abilities of the hero" do
      pending 'todo'
    end

    it "returns a success response" do
      expect(response).to be_success
    end
  end
end
