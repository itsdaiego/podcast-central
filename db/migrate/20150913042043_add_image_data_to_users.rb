class AddImageDataToUsers < ActiveRecord::Migration
  def change
  	 add_column :users, :image64, :text, :limit => nil
  end
end
