class Product < ApplicationRecord
  belongs_to :user
  belongs_to :order, optional: true

  has_one_attached :image
  has_many_attached :images
  has_and_belongs_to_many :orders
  has_many :line_items
  has_many :products
  
  attribute :content, :text
  
  attr_accessor :pre_order
  
end


