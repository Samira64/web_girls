class Admin::VideosController < ApplicationController
    before_action :set_tags, only: [:create, :new, :edit]

    def set_tags
        @tags = Tag.all.map {|tag| [tag.name, tag.id] }
    end

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
        @video = @series.videos.new(video_params)
        selected_tags = params[:video][:tag_ids].reject!(&:blank?)
        if selected_tags.empty?
            flash[:error] = "Tag name can not be blank."
            render "new" and return
        end
        # add the existing tag or create the tag for that video.
        if @video.save

            selected_tags.each do |tag|
                tag_exists = Tag.exists?(tag)
                if tag_exists
                    @video.tags << Tag.find(tag)
                else
                    @tag = @video.tags.create(name: tag)
                end            
            end
            
            notice = "The video \"#{@video.title}\"  was built successfully."
            redirect_to series_videos_url(@series), notice: notice


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