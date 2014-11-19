class Master < ActiveRecord::Base
	validates :name, presence: true
	validates :description, presence: true
	has_many :secondaries
end
