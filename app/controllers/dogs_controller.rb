class DogsController < ApplicationController
  def index
    if params[:query].present?
      @dogs = Dog.where("name ILIKE ?", "#{params[:query]}")
    else
    @dogs = Dog.all
  end


  def show
    @dog = Dog.find(params[:id])
    @address = @dog.address
    @dogs = Dog.near(@address, 0)

    @markers = @dogs.geocoded.map do |dog|
      {
        lat: dog.latitude,
        lng: dog.longitude
      }
    end
  end
end
end
