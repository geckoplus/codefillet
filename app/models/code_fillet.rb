class CodeFillet < ActiveRecord::Base
    has_many :code_tags
    has_many :tags, :through =>:code_tags

    include PublicActivity::Model
    tracked


	has_many :snippets
#	has_many :votes

	belongs_to :user

	validates :name, length: {minimum: 4}



end
