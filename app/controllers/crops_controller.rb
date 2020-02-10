class CropsController < ApplicationController

  def index
    @crops = Crop.all
    @fields = Field.all
  end

  def show
    @crop = Crop.find(params[:id])
    @fields = Field.where(crop_id: params[:id])
  end

end
