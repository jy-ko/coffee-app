class Recipe < ApplicationRecord
    belongs_to :equipment
    belongs_to :extraction_time
    belongs_to :sample
    belongs_to :user
    
end
