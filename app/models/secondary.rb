# require 'elasticsearch/model'

class Secondary < ActiveRecord::Base

	## For Advancd Search
	# include Elasticsearch::Model
 	#include Elasticsearch::Model::Callbacks

	has_many :descriptions
	belongs_to :master

	scope :secondary_search, -> (query) { where("name like ?", "%#{query}%") }

end
