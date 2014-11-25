# require 'elasticsearch/model'

class Master < ActiveRecord::Base

	## For Advancd Search
	# include Elasticsearch::Model
 	#include Elasticsearch::Model::Callbacks

	validates :name, presence: true
	validates :description, presence: true
	has_many :secondaries

	scope :master_search, -> (query) { where("name like ?", "%#{query}%") }

end
