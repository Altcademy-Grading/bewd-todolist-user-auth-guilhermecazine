class User < ApplicationRecord
  has_many :sessions
  has_many :tasks

  validates :username, presence: true, uniqueness: true, length: { in: 3..64 }
  validates :password, length: { in: 8..64 }
end
