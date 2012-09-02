class Post < ActiveRecord::Base
  attr_accessible :content, :title

  validates :title, :content, :presence => true

  def to_s
    title
  end
end
