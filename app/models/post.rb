class Post < ApplicationRecord

	belongs_to :user
	has_many :favorites
	has_many :replys
    def favorited_by?(user)
        favorites.where(user_id: user.id).exists?
    end
    def replyed_by?(producer)
        replys.where(producer_id: producer.id).exists?
    end
end
