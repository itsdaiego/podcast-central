class CreatePodcasts < ActiveRecord::Migration
  def change
    create_table :podcasts do |t|
      t.string :name
      t.string :category
      t.string :description
      t.string :url
      t.timestamps
    end
  end
end
