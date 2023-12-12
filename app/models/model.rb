# Model
class Model < ApplicationRecord
  enum style: { single_cut: 0, double_cut: 1, strato: 2, tele: 3, hollow: 4, misc: 5 }
  belongs_to :brand
  has_many :guitars

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :style, presence: true
end
