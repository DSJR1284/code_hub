class User < ApplicationRecord
    validates :username, presence: true, :uniqueness => { :case_sensitive => false }
    validates :password, length: { minimum: 6 }
    has_secure_password
    has_many :questions 
    has_many :answers
end
