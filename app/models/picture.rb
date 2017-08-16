class Picture < ApplicationRecord
	belongs_to :event, touch: true
	mount_uploader :image, ImageUploader	
end
