class Portafolio < ApplicationRecord
	has_many :constructions
	validates_presence_of :title, :body, :main_image, :thumb_image
	after_initialize :set_main_image

	def set_main_image
		self.main_image ||= "http://via.placeholder.com/350x150"
		self.thumb_image ||= "http://via.placeholder.com/350x150"
	end
end
