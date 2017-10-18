class Post < ApplicationRecord
  belongs_to :user
  validates_presence_of :title, :description, :user_id

  mount_uploader :image, PostUploader

  acts_as_taggable
end

