class Product < ApplicationRecord

  validates :name,:description, :price, :status,   presence: true
  validates :price, numericality: true

  
end
