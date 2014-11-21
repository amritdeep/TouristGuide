class Master < ActiveRecord::Base
	validates :name, presence: true
	validates :description, presence: true
	has_many :secondaries

	scope :master_search, -> (query) { where("name like ?", "%#{query}%") }
	
end
