class Order < ApplicationRecord
  has_many :order_details, dependent: :destroy
  belongs_to :user

  def total_money
    order_details.collect{|order_item| order_item.valid? ? order_item.quantity*order_item.price : 0}.sum
  end
  
  private
  
  def update_total_money
    self[:total_money] = total_money
  end
end
