class Category < ApplicationRecord
	validates :name, presence: true, uniqueness: true

	has_many :items, dependent: :delete_all
end
