class OrdersController < ApplicationController
  def index
    if !cookies[:mobile_id].nil?
      @mobiles = Mobile.find(cookies[:mobile_id].split(" "))
    end
  end
end
