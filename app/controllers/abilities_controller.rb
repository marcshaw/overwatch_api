class AbilitiesController < ApplicationController
  def index
    render json: AbilitySerializer.new(Ability.all).serialized_json
  end

  def show
    render json: AbilitySerializer.new(Ability.find(params[:id])).serialized_json
  end
end
