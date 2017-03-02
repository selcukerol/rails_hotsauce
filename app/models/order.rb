class Order < ApplicationRecord
	has_many :items, :through => :order_items
	validates :no_item, presence: true
	validates :cost, presence: true
  belongs_to :user
end
