class User < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation
  has_secure_password

  has_many :emails, dependent: :destroy
  #has_many :stories, foreign_key: :author_id
  #has_many :comments

  validates :name, presence: true, length: { maximum: 50 }, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
end