class Order < ApplicationRecord
  validates :user, :address, presence: true
  has_many :pizzas, through: :orderlines
end
