class Producer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :products, dependent: :destroy
  has_many :follows
  has_many :maps
  has_many :replys
  has_many :reply_posts, through: :replys, source: :post
  def followed_by?(user)
     follows.where(user_id: user.id).exists?
  end
  attachment :producer_image
end
