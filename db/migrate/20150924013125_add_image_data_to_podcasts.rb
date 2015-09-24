class AddImageDataToPodcasts < ActiveRecord::Migration
  def change
    add_column :podcasts, :image64, :text, :limit => nil
  end
end
