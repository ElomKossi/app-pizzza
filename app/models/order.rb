class Order < ApplicationRecord
  validates :user, :address, presence: true
  has_many :line_order
  has_many :pizzas, through: :line_order
end
