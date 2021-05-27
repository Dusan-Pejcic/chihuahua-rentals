class DogsController < ApplicationController
    def index
        @dogs = Dog.all
    end

    def search
      @dogs = Dog.where("name LIKE?", "%" + params[:q] + "%")
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
