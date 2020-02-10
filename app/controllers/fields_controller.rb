class FieldsController < ApplicationController
  
  def new
    @crop = Crop.find(params[:crop_id])
    @field = Field.new
  end

  def create
    @field = Field.new(field_params)
    if @field.save
      redirect_to root_path
      flash[:alert] = '圃場を登録しました'
    else
      render :new
      flash[:alert] = '圃場を登録できませんでした'
    end
  end

  private

  def field_params
    params.require(:field).permit(:name, :surface).merge(user_id: current_user.id, crop_id: params[:crop_id])
  end
end
