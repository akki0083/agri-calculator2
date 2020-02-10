class CropsController < ApplicationController

  def index
    @crops = Crop.all
    @fields = Field.all
  end

  def show
    @crop = Crop.find(params[:id])
    @fields = Field.where(crop_id: params[:id])
  end

  def new
    @crop = Crop.new
  end

  def create
    @crop = Crop.new(crop_params)
    if @crop.save
      redirect_to root_path
      flash[:alert] = '作物を登録しました'
    else
      render :new
      flash[:alert] = '作物を登録できませんでした'
    end
  end

  private

  def crop_params
    params.require(:crop).permit(:name).merge(user_id: current_user.id)
  end

end
