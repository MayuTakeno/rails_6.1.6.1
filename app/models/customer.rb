class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

        # フォロワー機能{
        has_many :relationships, foreign_key: :following_id
        has_many :followings, through: :relationships, source: :follower
        has_many :reverse_of_relationships, class_name: 'Relationship', foreign_key: :follower_id
        has_many :follower, through: :reverse_of_relationships, source: :following
        # }
end
