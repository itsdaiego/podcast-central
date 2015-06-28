class CreatePodcastsUsers < ActiveRecord::Migration
  def change
    create_table :podcasts_users, :id => false do |t|
      t.column 'podcast_id', :integer
      t.column 'user_id', :integer
    end
  end
end
