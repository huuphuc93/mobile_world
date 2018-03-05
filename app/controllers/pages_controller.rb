class PagesController < ApplicationController
  def index
    @mobiles = Mobile.all.limit(8)
  end
end
