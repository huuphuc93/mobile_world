class OrderDetailsController < ApplicationController
  def create
    @order = current_order
    @order_detail = @order.order_details.build order_detail_params
    if @order.save 
      session[:order_id] = @order.id
    else
      flash[:danger] = "Đặt hàng fail"
    end
  end

  def update
    @order = current_order
    @order_detail = @order.order_details.find(params[:id])
    @order_detail.update_attributes(order_item_params)
    @order_details = @order.order_items
  end

  def destroy
    @order = current_order
    @order_detail = @order.order_details.find(params[:id])
    @order_detail.destroy
    @order_details = @order.order_details
  end
  
  private
  
  def order_detail_params
    params.require(:order_detail).permit :quantity, :mobile_id
  end
end
