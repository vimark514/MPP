class User < ApplicationRecord
 
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:confirmable

         has_one :profile,dependent: :destroy
         has_many :tweets,dependent: :destroy
         has_many :subscriptions,dependent: :destroy
         has_many :likes,dependent: :destroy
end
