class Product < ApplicationRecord
	belongs_to :producer
	acts_as_taggable
	is_impressionable
	attachment :product_image
end

