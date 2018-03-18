class Ability < ApplicationRecord
  belongs_to :hero

  validates :name, :description, :is_ultimate, presence: true
end
