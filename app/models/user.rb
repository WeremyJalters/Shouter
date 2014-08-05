class User < ActiveRecord::Base
  has_many :notes
  has_many :students

  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
end
