class DropPodcastTable < ActiveRecord::Migration
  def up
    drop_table :podcasts
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
