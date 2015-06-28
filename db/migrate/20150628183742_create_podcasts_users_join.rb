class CreatePodcastsUsersJoin < ActiveRecord::Migration
  def change
    create_table :podcasts_users_joins, :id => false do |t|
      t.column 'podcast_id', :integer
      t.column 'user_id', :integer
    end
  end
end
