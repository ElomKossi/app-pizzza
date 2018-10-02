class Order < ApplicationRecord
  validates :user, :address, presence: true
  has_many :line_orders
  has_many :pizzas, through: :line_orders
end
