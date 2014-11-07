class Contact
  include Mongoid::Document
  include Mongoid::Paperclip

  field :name, type: String
  field :company, type: String
  field :meeting_location, type: String
  field :linkedin, type: String
  field :dateinstructed, type: String
  field :avatar, type: String

  has_mongoid_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  
  has_many :comments
end
