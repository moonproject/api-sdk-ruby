=begin
#Mooncard API

#Access Mooncard data from anywhere

OpenAPI spec version: 3.0.0
Contact: damien@mooncard.co
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.10

=end

require 'spec_helper'
require 'json'

# Unit tests for Mooncard::CardAssignApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CardAssignApi' do
  before do
    # run before each test
    @instance = Mooncard::CardAssignApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CardAssignApi' do
    it 'should create an instance of CardAssignApi' do
      expect(@instance).to be_instance_of(Mooncard::CardAssignApi)
    end
  end

  # unit tests for create
  # Assign a card to an user
  # @param card_assign 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
