class User < ApplicationRecord
  has_many :products
  has_many :line_items
  has_one :cart
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
