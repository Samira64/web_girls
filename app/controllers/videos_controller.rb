class VideosController < ApplicationController
    def index
        @series = Series.find(params[:series_id])
        @videos = @series.videos
    end

    def new
        @series = Series.find(params[:series_id])
        @video = @series.videos.new
    end

    def create
        @series = Series.find(params[:series_id])
        @video = @series.videos.create(video_params)
        if @video.save
            redirect_to series_videos_url(@series), notice: "The video \"#{@video.title}\"  was built successfully."
        else
            render "new"
        end
    end

    def show
        @series = Series.find(params[:series_id])
        @video = @series.videos.find(params[:id])
    end

    def edit
        @series = Series.find(params[:series_id])
        @video = @series.videos.find(params[:id])
    end

    def update
        @series = Series.find(params[:series_id])
        @video = @series.videos.find(params[:id])
        if @video.update_attributes(video_params)
            redirect_to series_videos_url(@series), notice: "The video \"#{@video.title}\"  was updated successfully."
        else
            render "edit"
        end
    end

    def destroy
        @series = Series.find(params[:series_id])
        @video = @series.videos.find(params[:id])
        if @video.destroy
            redirect_to series_videos_url, notice: "The video \"#{@video.title}\" was deleted successfully."
        else
            render "index"
        end
    end

    private

    def video_params
        params.require(:video).permit(:title, :url, :description)
    end
end