class User < ApplicationRecord
    has_many :timelines
    has_many :events
end
