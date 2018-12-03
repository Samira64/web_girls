class CreateWatchHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :watch_histories do |t|
       t.datetime :last_watched_at
       t.integer :video_id
       t.integer :user_id
       
       t.timestamps

       t.index [:user_id, :video_id]
       t.index [:video_id, :user_id]
    end
  end
end
