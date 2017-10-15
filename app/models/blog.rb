class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :content, :thumb_image

  mount_uploader :thumb_image, BlogUploader
end

