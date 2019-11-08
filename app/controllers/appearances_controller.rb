class AppearancesController < ApplicationController

    def index
        @appearances = Appearance.all
    end

    def new
        @appearance = Appearance.new
    end

    def show
        @appearance = Appearance.find(params[:id])
    end

    def create
        @appearance = Appearance.new(params[:guest, :episode])

        if @appearance.save
          redirect_to @appearance
        else
          render :action => "new"
        end
    end


  end
  