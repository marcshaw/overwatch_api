require "rails_helper"

RSpec.describe HerosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/heros").to route_to("heros#index")
    end

    it "routes to #show" do
      expect(:get => "/heros/1").to route_to("heros#show", :id => "1")
    end
  end
end
