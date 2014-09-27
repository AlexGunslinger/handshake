class Handshake < ActiveRecord::Base
  has_many :videos
  has_many :images

  validates :name, presence: true
  validates_length_of :name, :minimum => 2, :maximum => 30
  validates_length_of :description, :minimum => 2,:maximum => 5000
end
