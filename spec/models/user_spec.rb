require 'spec_helper'


describe User do
	before(:all) do 
		@user = User.create 
	end

	it 'should have username' do
		@user.should respond_to :username
	end

	it 'should have email' do
		@user.should respond_to :email
	end

	it 'should have password' do
		@user.should respond_to :password
	end

	it 'should have code_fillets' do
		@user.should have_many :code_fillets
	end

	it 'should have votes' do
		@user.should have_many :votes
	end

	it 'should have unpublished code_fillets' do
		@user.should respond_to :unpublished_code_fillets
	end

	it 'should have published code_fillets' do 
		@user.should respond_to :published_code_fillets
	end
	
	describe '#published_code_fillets' do
		before(:all) do
		end
	end

	it "should validate presence of user name" do
		@user.should validate_presence_of :username
	end
	it "should validate length of username >= 3 chars" do
		@user.should ensure_lenght_of(:username).is_at_least(3)
	end

end
