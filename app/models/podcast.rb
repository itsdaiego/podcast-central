class Podcast < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
