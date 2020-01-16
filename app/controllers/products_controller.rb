class ProductsController < ApplicationController
  def index
     @tags = ActsAsTaggableOn::Tag.all
     if params[:tag]
      @products = Product.tagged_with(params[:tag])
     else
      @products = Product.all
     end
      @product = Product.new
     render 'products/index'
  end
  def show
      @product = Product.find(params[:id])
  end
  def search
      @products = Product.where("product_name LIKE ?", "%#{product_params[:product_name]}%")
      @products = @products.tagged_with(product_params[:tag_list], :match_all => false)
  end
  private
	def product_params
  	params.require(:product).permit(:product_image,:producer_id, :product_name, :detail, tag_list: [])
	end
end
