class Product < ApplicationRecord
  belongs_to :user
  belongs_to :order, optional: true

  has_one_attached :image
  has_many_attached :images
  has_many :orders
  
  attribute :content, :text  
  attribute :pre_order, :boolean, default: false
end


