class CodeFillet < ActiveRecord::Base
    include PublicActivity::Model
    tracked


	has_many :snippets
	has_many :votes
	has_many :tags
	belongs_to :user

	validates :name, length: {minimum: 4}



end
