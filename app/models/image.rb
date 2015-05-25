class Image < ActiveRecord::Base
  enum category: %w(portrait landscape city\ exploration nature animals)
end
