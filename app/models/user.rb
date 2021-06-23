# == Schema Information
#
# Table name: users
#
#  id          :bigint           not null, primary key
#  username    :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  name        :string
#  description :text
#
class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  # validates :username, length: {maximum: 12}
  after_initialize :ensure_session_token
  
  validates :password_digest, presence: true
  validates :password, length: { minimum: 6 }, allow_nil: true

  attr_reader :password

  has_many :stores,
    foreign_key: :owner_id,
    class_name: :Store

  has_many :lemos,
    through: :stores, # NOT TABLE NAMES
    source: :lemos #NOT CLASS NAME, TABLE NAME
    # They are association names
    # Through association can go through another through association

    def self.find_by_credentials(username, password)
      @user = User.find_by(username: username)
      @user && @user.is_password?(password) ? @user : nil
    end

    def password=(password)
      @password = password
      self.password_digest = BCrypt::Password.create(password)
    end

    def is_password?(password)
      BCrypt::Password.new(self.password_digest).is_password?(password)
      #plain text password will be hashed and matched to existing password_digest
    end

    def reset_session_token!
      self.session_token = SecureRandom.urlsafe_base64
      self.save!
      self.session_token
    end

    def ensure_session_token
      self.session_token ||= SecureRandom.urlsafe_base64
    end
  
end

# S - self.find_by_credentials
# P - password=
# I - is_password?
# R - reset_session_token!
# E - ensure_session_token