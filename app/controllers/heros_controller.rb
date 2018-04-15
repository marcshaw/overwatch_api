class HerosController < ApplicationController
  def index
    render json: HeroSerializer.new(Hero.all).serialized_json
  end

  def show
    render json: HeroSerializer.new(Hero.find(params[:id])).serialized_json
  end

  #TODO own controller -- hmm
  def abilities
    render json: AbilitySerializer.new(Hero.find(params[:id]).abilities).serialized_json
  end
end
