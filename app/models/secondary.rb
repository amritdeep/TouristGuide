require 'elasticsearch/model'

class Secondary < ActiveRecord::Base

	## For Advancd Search
	include Elasticsearch::Model
  	include Elasticsearch::Model::Callbacks

	has_many :descriptions
	belongs_to :master
end
