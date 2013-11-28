class Tag < ActiveRecord::Base
has_many :code_tags
has_many :code_fillets, :through => :code_tags
end
