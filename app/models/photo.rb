class Photo < ActiveRecord::Base
  dragonfly_accessor :image
  
  has_many :product_photos
  has_many :products, through: :product_photos
end
