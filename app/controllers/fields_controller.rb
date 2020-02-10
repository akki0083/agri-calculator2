class FieldsController < ApplicationController
  
  def new
    @crop = Crop.find(params[:crop_id])
    @field = Field.new
  end
  def field_params
    params.require(:field).permit(:name, :surface).merge(user_id: current_user.id, crop_id: params[:crop_id])
  end
end
