class Post < ApplicationRecord
  enum status: { submitted: 0, approved: 1 }

  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :user
  validates_presence_of :title, :description, :user_id

  mount_uploader :image, PostUploader

  acts_as_taggable

end

