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

	it 'should have user creator' do
		@codefillet.creator.class.should == User  
	end

	it 'should have snipped' do 
		@codefillet.creator.class.should == Snippet
	end

	it 'should have votes' do
		@codefillet.creator.class.should == Votes 
	end

	it 'should have tags' do 
		@codefillet.creator.class.should == Tags
	end

	
end