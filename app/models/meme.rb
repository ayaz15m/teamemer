class Meme < ActiveRecord::Base
  belongs_to :user

  mount_uploader :photo, PhotoUploader

  validates :category, presence: true
  validates :photo, presence: true
end
