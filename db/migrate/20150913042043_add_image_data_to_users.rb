class AddImageDataToUsers < ActiveRecord::Migration
  def change
  	 add_column :users, :image64, :string
  end
end
