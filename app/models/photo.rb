class Photo
  include Mongoid::Document
  include Mongoid::Paperclip
  field :date, type: Date

  belongs_to :contact

has_mongoid_attached_file :photo, 
  :styles => {
      :original => ['1920x1680>', :jpg],
      :small    => ['100x100#',  :jpg],
      :medium  => ['250x250',    :jpg],
      :large    => ['500x500>',  :jpg]
    }
    validates_attachment_content_type :photo, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
