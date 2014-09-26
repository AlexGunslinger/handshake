class Handshake < ActiveRecord::Base
  has_many :videos
  has_many :images
end
