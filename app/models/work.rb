class Work < ActiveRecord::Base
  has_attached_file :photo, :styles => { :thumbnail => "100x100>", :portrait => "150x150>", :medium => "180x180>", :standard => "300x300>" },
  					:url => "/assets/works/:id/:style/:basename.:extension",
  					:path => ":rails_root/public/assets/works/:id/:style/:basename.:extension"

  validates_uniqueness_of :title
  validates_presence_of :title, :information
  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 500.kilobytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/jpg', 'image/gif', 'image/png']
end
