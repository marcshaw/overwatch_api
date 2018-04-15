class AbilitySerializer
  include FastJsonapi::ObjectSerializer

  set_type :ability
  attributes :name, :description, :is_ultimate
end
