class Portafolio < ApplicationRecord
	has_many :constructions 
	accepts_nested_attributes_for :constructions, 
							      reject_if: lambda {|a| a['name'].blank? }

	validates_presence_of :title, :body, :main_image, :thumb_image
	after_initialize :set_main_image

	has_attached_file :image, styles: {large: "400x400>", medium: "300x300>", thumb:"200x200#"}

	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/



	def set_main_image
		self.main_image ||= "https://render.bitstrips.com/v2/cpanel/321517cd-ff68-41a7-b0d1-e765680568a7-0fe34130-1595-4246-ac72-2bca8f2f58f4-v1.png?transparent=1&palette=1"
		self.thumb_image ||= "https://render.bitstrips.com/v2/cpanel/321517cd-ff68-41a7-b0d1-e765680568a7-0fe34130-1595-4246-ac72-2bca8f2f58f4-v1.png?transparent=1&palette=1"
	end
end