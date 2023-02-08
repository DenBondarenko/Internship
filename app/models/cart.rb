class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy
  has_one :order, dependent: :destroy

  def add_product(product)
    line_items.create(product:, quantity: 1)
  end

  def total_price
    line_items.includes(:product).sum(&:total_price)
  end
end
