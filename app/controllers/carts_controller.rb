class CartsController < ApplicationController
  def index
    @order_details = @cart.order_details
    # byebug
  end
end
