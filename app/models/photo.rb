class Photo < ActiveRecord::Base
  dragonfly_accessor :image

  validates :title, presence: true, length: {minimum: 2, maximum: 20}
  validates :image, presence: true
end
