class Music < ActiveRecord::Base
  attr_accessible :name, :description, :price, :song

  validates_presence_of :name, :price, :song

  #paperclip
  has_attached_file :song,
    :storage => :s3,
    :s3_credentials => {
      :bucket => ENV['AWS_BUCKET'],
      :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
      :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
    },
    :path => "/:filename"
end
