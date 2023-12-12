# Guitar
class Guitar < ApplicationRecord
  belongs_to :model
  belongs_to :brand
  belongs_to :user

  validates :purchase_year, presence: true
  validates :second_hand, presence: true
end
