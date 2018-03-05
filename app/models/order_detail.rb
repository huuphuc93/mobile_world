class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :mobile
  validates :quantity, presence: true, numericality: {only_integer: true, greater_than: 0}
  validate :mobile_present
  validate :order_present
  before_save :set_total_price
  
  def price
    return seft[:price] if persisted?
    mobile.price
  end
  
  def total_price
    price*quantity
  end  
  private
  
  def mobile_present
    return if mobile.present?
    error.add(:mobile, "is not a valid mobile or is not active.")
  end
  
  def order_present
    return if order.present?
    error.add(:order, "is not valid order")
  end
  
  def set_total_price
    self[:price] = price
    self[:total_price] = quantity*self[:price]
  end
end
