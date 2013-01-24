class Music < ActiveRecord::Base
  attr_accessible :name, :description, :price, :song

  validates_presence_of :name, :price, :song

  #paperclip
  has_attached_file :song,
    :storage => :s3,
    :path => "/:filename"
end
