class LineItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_line_item, only: %i[destroy update]

  def create
    product = Product.find(params[:product_id])
    @line_item = current_cart.line_items.find_by(product:)

    if @line_item.present?
      @line_item.update(quantity: @line_item.quantity + 1)
    else
      @line_item = current_cart.add_product(product)
    end

    redirect_to cart_path, notice: "#{product.name} was added to cart!"
  end

  def update
    quantity = params[:quantity] == 'increase' ? @line_item.quantity + 1 : @line_item.quantity - 1
    @line_item.update(quantity:)

    redirect_to cart_path
  end

  def destroy
    @line_item.destroy

    redirect_to cart_path(current_cart)
  end

  private

  def set_line_item
    @line_item = LineItem.find(params[:id])
  end
end