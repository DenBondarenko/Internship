class ApplicationController < ActionController::Base
  helper_method :current_cart
  before_action :set_query, :handle_cookies

  def set_query
    @query = Product.ransack(params[:q])
  end

  def current_cart
    Cart.find(cookies[:cart_id])
    @cart = Cart.find_by_id(params[:id]) || @cart = Cart.create(:cart => params[:id])
  end

  def handle_cookies
    cookies[:cart_id] = Cart.create.id unless cookies[:cart_id].present?
  end
end
