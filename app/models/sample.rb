class Sample < ApplicationRecord
    has_many :recipes
    validates :origin, presence: true
    validates :roast_date, presence: true
end
