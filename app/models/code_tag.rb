class CodeTag < ActiveRecord::Base
  belongs_to :code_fillet
  belongs_to :tag
end
