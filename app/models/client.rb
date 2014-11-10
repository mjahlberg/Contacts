class Client
  include Mongoid::Document
  include Mongoid::Paperclip
  
  field :name, type: String
  field :source, type: String
  field :avatar, type: String

  has_mongoid_attached_file :avatar, :styles => { :medium => "250x250>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  has_many :articles

end
