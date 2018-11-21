class Series  < ApplicationRecord
    has_many :videos
    validates :title, presence: true
    validates :level, presence: true
    validates :description, presence: true
end