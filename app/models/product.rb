class Product < ApplicationRecord

  validates :title, :description, :image_url, presence: true
  validates :title, uniqueness: true, length: {minimum: 10, message: "Title must be at least 10 characters long."}
  validates :image_url, allow_blank: true, format: { with: %r{\.(gif|jpg|png)\z}i, message: "Must be a URL for GIF, JPG or PNG image." }
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
end
