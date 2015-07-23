class BicyclesController < ApplicationController
  def index
    @bicycles = Bicycle.all
  end

  def show
    @bicycle = Bicycle.find(params[:id])
  end

    def edit
    @bicycle = Bicycle.find(params[:id])
  end

  def new
    @bicycle = Bicycle.new
  end

  def destroy
      Bicycle.find(params[:id]).destroy
     redirect_to bicycles_path
  end


  def create
    @bicycle = Bicycle.new(bicycle_params)
    if @bicycle.save
      redirect_to bicycle_path(@bicycle)
    else
      render 'new'
  end
end

private
 def bicycle_params
    params.require(:bicycle).permit(:brand, :color, :conditon, :image)
 end


end
