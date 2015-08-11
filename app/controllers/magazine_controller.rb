class MagazineController < ApplicationController
  skip_before_filter :authorize

  def index
    @products=Product.order(:title).paginate(page: params[:page], per_page: 5)
    @cart=current_cart
  end
end
