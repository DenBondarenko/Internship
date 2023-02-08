class OrdersController < ApplicationController
  before_action :authenticate_user!, :set_order, only: %i[show update destroy]

  def index
    @orders = current_user.orders
  end

  def create
    @order = current_user.orders.create(cart: current_cart)

    cookies.delete(:cart_id)
    redirect_to order_path(@order), notice: 'Order was created!'
  end

  def show
    @line_items = @order.cart.line_items
  end

  def update
    @order.paid!
    cookies.delete(:cart_id)
    OrderMailer.with(user: current_user, order: @order).new_order_email.deliver_now
    
    redirect_to order_path(@order), notice: 'Order was paid!'
  end

  def destroy
    @order.destroy
    redirect_to orders_path, notice: "Order #{@order.id} is deleted from cart!"
  end

  private

  def set_order
    @order = current_user.orders.find(params[:id])
  end
end
