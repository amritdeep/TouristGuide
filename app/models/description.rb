class Description < ActiveRecord::Base
	has_many :images
	belongs_to :secondary
end
