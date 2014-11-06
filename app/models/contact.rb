class Contact
  include Mongoid::Document
  field :name, type: String
  field :company, type: String
  field :meeting_location, type: String
  field :linkedin, type: String
  field :dateinstructed, type: String
  has_many :photos, :dependent => :destroy
  

  accepts_nested_attributes_for :photos, :reject => lambda { |t| ['photo'].nil?}
  has_many :comments
end
