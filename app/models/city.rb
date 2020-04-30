class City < ApplicationRecord
  belongs_to :country
  has_many :people
  has_many :ets
  has_many :events, through: :ets
end
