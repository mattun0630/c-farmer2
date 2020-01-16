class Product < ApplicationRecord
	belongs_to :producer
	acts_as_taggable
	attachment :product_image
end

