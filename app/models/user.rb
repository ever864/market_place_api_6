class User < ApplicationRecord
  has_many :products, dependent: :destroy
  validates :email, uniqueness: true
  validates_format_of :email, with: /@/
  validates :password_digest, presence: true
  has_secure_password
end
