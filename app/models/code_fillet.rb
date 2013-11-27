class CodeFillet < ActiveRecord::Base
   

	has_many :snippets
	has_many :votes
	has_many :tags
	belongs_to :user

	validates :name, length: {minimum: 4}



end
