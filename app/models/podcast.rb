class Podcast < ActiveRecord::Base
  has_and_belongs_to_many :users
  validates :name, presence: true, length: { maximum: 50 }
  validates :category, presence: true, length: { maximum: 50 }
  validates :description, presence: true
  validates :url, presence: true
  mount_uploader :image, ImageUploader

end
