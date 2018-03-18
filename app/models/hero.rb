class Hero < ApplicationRecord
  has_many :abilities

  validates :name, :real_name, :health, :armour, :shield, presence: true
end
