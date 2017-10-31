class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :content

  mount_uploader :thumb_image, BlogUploader

  acts_as_taggable
end

