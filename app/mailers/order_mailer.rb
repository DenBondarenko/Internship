class OrderMailer < ApplicationMailer
  def new_order_email
    @user = params[:user]
    @order = params[:order]

    @line_items = @order.cart.line_items

    mail(
      to: @user.email,
      subject: 'Order created successfully'
    )
  end

  def winner(user)
    @user = user

    mail(
      to: @user.email,
      subject: 'Congrats! You’ve won the the Shopper lottery!'
    )
  end
end
