class Item < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :quantity, presence: true, numericality: true
end
