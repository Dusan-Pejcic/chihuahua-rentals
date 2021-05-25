class DogsController < ApplicationController


    def show
        @dog = DOg.find(params[:id])
    end
end
