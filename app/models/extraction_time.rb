class ExtractionTime < ApplicationRecord
    has_many :recipes
    validates :time, presence: true
end
