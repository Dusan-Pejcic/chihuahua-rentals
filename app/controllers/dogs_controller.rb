class DogsController < ApplicationController
    def index
        @dogs = Dog.all
    end

    def search
      @dogs = Dog.where("name LIKE?", "%" + params[:q] + "%")
    end

    def show
        @dog = Dog.find(params[:id])
    end


end
