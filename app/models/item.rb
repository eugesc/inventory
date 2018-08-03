class Item < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :quantity, presence: true, numericality: true

	# maps category_id to Category.find(category_id)
	belongs_to :category
end
