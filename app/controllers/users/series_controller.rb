class Users::SeriesController < ApplicationController

    def index
        @series = Series.all
    end

    def show
        @series = Series.find(params[:id])
        @videos = @series.videos.all
    end

end