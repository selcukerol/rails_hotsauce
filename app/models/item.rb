class Item < ApplicationRecord
has_attached_file :image, styles: {medium: "300x300>", thumb: "150x150"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/	

	has_many :order_items
	has_many :orders, :through => :order_items

	def label
		"#{self.name} (#{self.cost})"
	end
end
