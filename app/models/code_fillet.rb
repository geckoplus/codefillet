class CodeFillet < ActiveRecord::Base
    validates :active, presence: true

	has_many :snippets
	has_many :votes
	has_many :tags
	belongs_to :user
end
