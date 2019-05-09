class Doctor < ApplicationRecord

  has_secure_password

  has_many :appointments
  has_many :patients, through: :appointments

  def full_name
   self.first_name + " " + self.last_name
  end

  class User < ActiveRecord::Base
  def password=(new_password)
    salt = BCrypt::Engine::generate_salt
    hashed = BCrypt::Engine::hash_secret(new_password, salt)
    self.password_digest = salt + hashed
  end

  def authenticate(password)
    salt = password_digest[0..28]
   hashed = BCrypt::Engine::hash_secret(password, salt)
   return nil unless (salt + hashed) == self.password_digest
 end
end

  validates :first_name, :last_name, length: {minimum: 2}

  def check_password_format
    regexps = {" must contain at least one lowercase letter" => /[a-z]+/,
               " must contain at least one uppercase letter" => /[A-Z]+/,
               " must contain at least one digit" => /\d+/}
    regexps.each do |rule, reg|
      errors.add(:password, rule) unless password.match(reg)
    end
  end

  validate :check_password_format


end
