class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
  has_many :code_fillets
  #has_many :votes 
  
  validates_presence_of :username
  validates_length_of :username, :minimum=>3

  def unpublished_code_fillets
  	code_fillets.where published: false
  end        
  def unpublished_code_fillets
  	code_fillets.where published: true
  end     

end

