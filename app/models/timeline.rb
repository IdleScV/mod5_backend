class Timeline < ApplicationRecord
  belongs_to :user
  belongs_to :person
  has_many :ets
  has_many :events, through: :ets
end
