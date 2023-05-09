class User < ApplicationRecord
  has_secure_password

  has_many :videos, class: 'SharingYoutubeVideo'

  with_options presence: true do
    validates :name
    validates :email
    validates :password_digest
  end

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
