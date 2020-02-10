class CropsController < ApplicationController

  def index
    @crops = Crop.all
    @fields = Field.all
  end
end
