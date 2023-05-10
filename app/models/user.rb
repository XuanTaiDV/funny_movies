class User < ApplicationRecord
  has_secure_password

  has_many :videos, class_name: 'SharingYoutubeVideo'
end
