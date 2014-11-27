require 'carrierwave/orm/activerecord'

class Image < ActiveRecord::Base
	belongs_to :description
	mount_uploader :avatar, AvatarUploader
end
