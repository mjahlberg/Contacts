class Article
  include Mongoid::Document
  field :account, type: String

  belongs_to :client
end
