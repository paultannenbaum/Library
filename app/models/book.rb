class Book < ActiveRecord::Base
  belongs_to :genre
  has_many   :chapters
end
