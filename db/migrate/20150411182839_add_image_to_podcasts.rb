class AddImageToPodcasts < ActiveRecord::Migration
  def change
    add_column :podcasts, :image, :string
  end
end
