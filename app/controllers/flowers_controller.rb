class FlowersController < ApplicationController

  def index
    @flower = Flower.new
    @flowers = Flower.all
  end

  def create
    @flower = Flower.create(flower_params)
    if @flower.save
      redirect_to flowers_path
    else
      render :index
    end
  end

  def show
    @flower = Flower.find(params[:id])
  end

  def edit
    @flower = Flower.find(params[:id])
  end

  def update
    @flower = Flower.find(params[:id])
    @flower.update_attributes!(flower_params)

    redirect_to flowers_path
  end

  def destroy
    @flower = Flower.find(params[:id]).delete

    redirect_to flowers_path
  end

  private
  def flower_params
    params.require(:flower).permit(:flower_name, :color)
  end
end