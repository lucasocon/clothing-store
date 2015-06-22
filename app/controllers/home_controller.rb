class HomeController < ApplicationController
  def index
    @products = Product.search_product(params[:search])
  end
end
