class OrderDetail < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :mobile, optional: true
  belongs_to :cart
end
