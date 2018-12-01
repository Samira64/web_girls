class Users::VideosController < ApplicationController

    def show
     @video = Video.find(params[:id])
     Video.increment_counter(:view_count, @video.id)

      wh = WatchHistory.find_or_create_by(user_id: current_user.id, video_id: @video.id) do |wh|
        wh.user_id = current_user.id
        wh.video_id = @video.id
      end
      wh.touch(:last_watched_at)
    end

end     