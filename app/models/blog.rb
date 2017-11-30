class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :content


  mount_uploader :thumb_image, BlogUploader

  acts_as_taggable

  def self.searched (arr)
    Blog.tagged_with(arr)
  end
end

#look at first blog
#look at first tag of first blog
#see if tag matches any of the selected tags
  # if you have a match put the blog in the selected array


