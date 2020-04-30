class Person < ApplicationRecord
  has_many :timelines
  belongs_to :city
end
