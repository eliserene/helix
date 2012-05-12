class Entry < ActiveRecord::Base
  attr_accessible :content, :link, :title
  validates :title, :presence => true
  validates :link, :presence => true, :url => true
end
