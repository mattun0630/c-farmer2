class Producers::MapsController < ApplicationController
	before_action :set_map, only: [:show, :edit, :update, :destroy]

  def new
    @map = Map.new
  end
  def create
    @map = Map.new(map_params)
    @map.producer_id = current_producer.id
    @map.save
    redirect_to products_path
  end
  private
    def set_map
      @map = Map.find(params[:id])
    end
    def map_params
      params.require(:map).permit(:address, :comment, :lonlat, :producer_id)
    end
end
