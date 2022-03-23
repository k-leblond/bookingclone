class HotelsController < ApplicationController
    before_action :hotel_find, only: %i[show edit update destroy]

  def index
    @hotels = Hotel.all
  end

  def show
  end

  def new
    @hotel = Hotel.new
  end

  def create
    @hotel = Hotel.new(hotel_params)
    if @hotel.save
      redirect_to hotel_path(@hotel)
    else
      render :edit
    end
  end

  def edit
  end

  def update
    if @hotel.update(hotel_params)
      redirect_to hotel_path(@hotel)
    else
      render :edit
    end
  end

  def destroy
    @hotel.destroy

    redirect_to hotels_path
  end

  private

  def hotel_params
    params.require(:hotel).permit(:name, :address, :rating)
  end

  def hotel_find
    @hotel = Hotel.find(params[:id])
  end

  end
