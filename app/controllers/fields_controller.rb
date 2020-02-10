class FieldsController < ApplicationController
  
  def new
    @crop = Crop.find(params[:crop_id])
    @field = Field.new
  end
end
