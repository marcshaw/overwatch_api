class HeroSerializer
  include FastJsonapi::ObjectSerializer

  set_type :hero
  attributes :name, :real_name, :health, :armour, :shield
end
