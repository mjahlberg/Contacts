class Comment
	include Mongoid::Document

	field :post, type: String
	field :date, type: String
	
	belongs_to :contact

end