class Video < ApplicationRecord
    belongs_to :series 
    validates :title, presence: true  
    validates :url, presence: true
    validates :description, presence: true 
    validates_format_of :url, :with => URI::regexp(%w(http https))
end
