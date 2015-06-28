class Podcast < ActiveRecord::Base
  has_and_belongs_to_many :users

  mount_uploader :image, ImageUploader

end
