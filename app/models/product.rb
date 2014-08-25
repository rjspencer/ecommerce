class Product < ActiveRecord::Base
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :product_photos
  has_many :photos, through: :product_photos
end
