class ProducersController < ApplicationController
 def show
  	  @producer = Producer.find(params[:id])
  	  @products = @producer.products
  	  @replys = @producer.replys
  	  @reply_posts= @producer.reply_posts
      @maps =@producer.maps.last(1)
      # @user = User.find(params[:id])
      # impressionist(@producer, nil, :unique => [:session_hash])

      # @page_views = @producer.impressionist_count
 end
 def edit
      @producer = Producer.find(params[:id])
 end
 def update
     @producer = Producer.find(params[:id])
     @producer.update(producer_params)
     redirect_to producer_path(@producer.id)
 end
 def index
	   @producers =Producer.all
 end
 private
 def producer_params
	params.require(:producer).permit(:producer_name, :email, :post, :a_address, :phone, :producer_image)
 end

end
