class Reply < ApplicationRecord
	belongs_to :producer
    belongs_to :post
end
