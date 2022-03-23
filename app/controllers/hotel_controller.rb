class HotelController < ApplicationController
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
end

def edit
end

def update
end

def destroy
end

private

def hotel_params
  # params.require(:forest).permit(:title, :description, :address, :tree, :animals, :price, :size, photos: [])
end

def hotel_find
  @hotel = Hotel.find(params[:id])
end

end
