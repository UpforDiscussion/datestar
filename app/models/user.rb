class User < ActiveRecord::Base
  has_secure_password
  has_many :photos
  has_many :questions
  has_many :messages
  has_many :matches, :foreign_key => 'sender_id'

  validates :name, :photo, :presence => true
  validates :name, :uniqueness => true
  mount_uploader :photo, PhotoUploader
end