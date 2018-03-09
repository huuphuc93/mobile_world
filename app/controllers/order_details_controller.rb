class OrderDetailsController < ApplicationController
  before_action :set_order_detail
  
  def create
    @cart.add_to_cart(params)
    if @cart.save
      redirect_to carts_path
    else
      flash[:danger] = "error"
      redirect_to @mobile
    end
  end

  def update
    @order_detail.cart_id = @cart.id
    if @order_detail.update_attributes order_detail_params
      render json: {
        status: :success
      }
    else
      render json: {
        status: :error
      }
    end
  end

  def destroy
    if @order_detail.destroy
      render json: {
        status: :success
      }
    else 
      render json: {
        status: :error
      }
    end
  end
  
  private
  def set_order_detail
    @order_detail = OrderDetail.find_by id: params[:id]   
  end
  
  def order_detail_params
    params.require(:order_detail).permit :mobile_id, :quantity, :price
  end
end
