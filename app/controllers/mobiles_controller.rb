class MobilesController < ApplicationController
  def index
  end
  
  def show
    @mobile = Mobile.find_by id: params[:id]
    @order_detail = @cart.order_details.build
  end
end
