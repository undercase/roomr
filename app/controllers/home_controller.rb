class HomeController < ApplicationController
  add_flash_types :error
  def index
    @room = Room.new
  end
  def about
  end
end
