class ThingsController < ApplicationController
    def index
      @things = Thing.all
    end

    def show
      @thing = Thing.find(params[:id])
    end

    def new
      @thing = Things.new
    end

    def create
      @thing = Things.new(thing_params)
      if @thing.save
        redirect_to things_path
      else
        render :new
      end
    end

    private

    def things_params
      params.require(:thing).permit(:title, :date, :finished)
    end
end
