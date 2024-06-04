class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :profile_photo,dependent: :destroy
   
  validates :name,:profile_photo,presence: :true
end
