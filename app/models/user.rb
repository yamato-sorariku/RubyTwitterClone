class User < ApplicationRecord
  has_many :statuss

  has_secure_password
  has_secure_token

  validates :name, presence: true, format: { with: /\A[a-zA-Z0-9_-]+\z/ },
            uniqueness: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: true

end
