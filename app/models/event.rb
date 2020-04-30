class Event < ApplicationRecord
  belongs_to :user
  belongs_to :city, optional:true
  has_many :ets
  has_many :timelines, through: :ets
end