class Image < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader

  enum category: %w(portrait landscape city\ exploration nature animals)

  validates :name, :category, presence: true

  belongs_to :identity

  def tags_text
    self.tags.join(', ')
  end

  def tags_text=(value)
    self.tags = value.split(',').map{ |tag| tag.strip }
  end
end
