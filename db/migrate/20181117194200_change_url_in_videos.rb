class ChangeUrlInVideos < ActiveRecord::Migration[5.2]
  def change
    rename_column :videos, :URL, :url
  end
end
