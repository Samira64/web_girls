class SeriesController < ApplicationController
    def index
        @series = Series.all
    end

    def show
        @serie = Series.find(params[:id])
    end

    def new
        @serie = Series.new
    end

    def create
        @serie = Series.new(serie_params)
        if @serie.save
            redirect_to series_url(@serie), notice: "The serie  \"#{@serie.title}\"  was built successfully."
        else
            render "new"
        end
    end

    def edit
        @series = Series.find(params[:id])
    end

    def update
        @series = Series.find(params[:id])
        if @series.update_attributes(serie_params)
            redirect_to series_url, notice: "The series \"#{@series.title}\" was updated successfully."
        else
            render "new"
        end
    end

    def destroy
        @series = Series.find(params[:id])
        if @series.destroy
            redirect_to series_index_url, notice: "The serie \"#{@series.title}\" was deleted successfully."
        else
            render "index"
        end
    end


    private

    def serie_params
        params.require(:series).permit(:title, :description, :level)
    end


end