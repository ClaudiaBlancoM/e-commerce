class Product < ApplicationRecord
    # Relationships
    has_and_belongs_to_many :categories
end
