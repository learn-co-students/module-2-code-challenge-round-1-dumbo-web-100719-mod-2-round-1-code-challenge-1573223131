class AppearanceController < ApplicationController
    def new
       @appearance = Appearance.new
       @guests = Guest.all
       @epiodes = Episode.all
    end

    def create
        @appearance = Appearance.new(params[:id])
        @appearance.save

    end


end
