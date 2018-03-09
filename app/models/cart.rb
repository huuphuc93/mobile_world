class Cart < ApplicationRecord
  has_many :order_details, dependent: :destroy
  
  def add_to_cart(mobile_params)
    current_item = order_details.find_by(mobile_id: mobile_params[:order_detail][:mobile_id])
    if current_item
      current_item.quantity += mobile_params[:order_detail][:quantity].to_i
      current_item.save
    else
      new_item = order_details.create(mobile_id: mobile_params[:order_detail][:mobile_id],
      quantity: mobile_params[:order_detail][:quantity], price: mobile_params[:order_detail][:price],
      cart_id: self.id)
    end
  end
end
