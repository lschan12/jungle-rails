class User < ApplicationRecord

  has_secure_password

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true
  validates :password_confirmation, presence: true
  validates :password, length: { minimum: 4 }
  validates :password_confirmation, length: { minimum: 4 }
  before_save :downcase_email

  def downcase_email
    self.email.downcase!
  end

  def self.authenticate_with_credentials(email, password)
    parsed_email = email.strip.downcase
    user = User.find_by_email(parsed_email)
    if user && user.authenticate(password)
      user
    else
      nil
    end
  end
end
