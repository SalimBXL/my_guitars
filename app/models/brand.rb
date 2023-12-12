# Brand
class Brand < ApplicationRecord
    has_many :models

    validates :name, presence: true
    validates :name, uniqueness: true
end
