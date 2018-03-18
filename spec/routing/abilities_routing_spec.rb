require "rails_helper"

RSpec.describe AbilitiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/abilities").to route_to("abilities#index")
    end

    it "routes to #show" do
      expect(:get => "/abilities/1").to route_to("abilities#show", :id => "1")
    end
end
