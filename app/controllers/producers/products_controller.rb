class Producers::ProductsController < ApplicationController
  def new
    	@product = Product.new
      @tags = ActsAsTaggableOn::Tag.all
  end
  def create
      @product = Product.new(product_params)
      @product.producer_id = current_producer.id
      @product.save
      redirect_to producers_products_path
      # エラーを見つける時に使う
      # puts @product.errors.full_messages
  end
  def show
      @product = Product.find(params[:id])
  end
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
  def search
      @products = Product.where("product_name LIKE ?", "%#{product_params[:product_name]}%")
      @products = @products.tagged_with(product_params[:tag_list], :match_all => false)
  end
  private
  def product_params
    params.require(:product).permit(:product_image,:producer_id, :product_name, :detail, tag_list: [])
  end
end
