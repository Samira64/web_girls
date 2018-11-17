class CreateVideoes < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.string :URL
      t.integer :view_count
      t.references :series, foreign_key: true

      t.timestamps
    end
  end
end
