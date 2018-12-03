class CreateJoinTableTagVideo < ActiveRecord::Migration[5.2]
  def change
    create_join_table :videos, :tags do |t|
        t.index [:video_id, :tag_id]
        t.index [:tag_id, :video_id]
    end
  end
end
