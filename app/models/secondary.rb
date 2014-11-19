class Secondary < ActiveRecord::Base
	has_many :descriptions
	belongs_to :master
end
