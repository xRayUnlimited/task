class ThingsController < ApplicationController
    def index
      @things = Thing.all
    end

    def show
      @thing = Thing.find(params[:id])
    end

    def new
      @thing = Thing.new
    end

    def create
      @thing = Thing.new(thing_params)
      if @thing.save
        redirect_to things_path
      else
        render :new
      end
    end

    def edit
      @thing = Thing.find(params[:id])
    end

    def update
      @thing =  Thing.find(params[:id])
      if @thing.update(page_params)
      else
        render :edit
      end
    end

    def destroy
      Thing.find(params[:id]).destroy
      redirect_to things_path
    end

    private

    def things_params
      params.require(:thing).permit(:title, :date, :finished)
    end
end
