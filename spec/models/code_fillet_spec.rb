require 'spec_helper'

describe CodeFillet do

	before(:all) do
		@codefillet = CodeFillet.new name: "Snippety", description: "Super opis"
	end

	it "should exist" do 
		CodeFillet.should_not == nil 
	end

	it "should have name" do
		@codefillet.name.should_not == nil
	end 
	it "should have description" do
		@codefillet.description.should_not == nil
	end 

	it 'should belong to user' do
		@codefillet.should belong_to :user  
	end

	it 'should have snippets' do 
		@codefillet.should have_many :snippets
	end

	it 'should have votes' do
		@codefillet.should have_many :votes 
	end

	it 'should have tags' do 
		@codefillet.should have_many :tags
	end

	it 'should have published attribute' do
		@codefillet.should respond_to :published 
	end

	it 'should be unpublished by default' do
		cf = CodeFillet.new
		cf.published.should == false 
	end

	it 'should belongs to user' do
		@codefillet.should belong_to :user
	end

	
end