class Video < ApplicationRecord
    belongs_to :series 
    has_and_belongs_to_many :tags
    
    validates :title, presence: true  
    validates :url, presence: true
    validates :description, presence: true 
    validates_format_of :url, :with => URI::regexp(%w(http https))
end
