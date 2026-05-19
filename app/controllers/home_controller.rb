class HomeController < ApplicationController
  def index
    @lists = List.all.includes(:items)
  end
end
