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

# Unit tests for Mooncard::AccountsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AccountsApi' do
  before do
    # run before each test
    @instance = Mooncard::AccountsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccountsApi' do
    it 'should create an instance of AccountsApi' do
      expect(@instance).to be_instance_of(Mooncard::AccountsApi)
    end
  end

  # unit tests for find
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [Account]
  describe 'find test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # @param [Hash] opts the optional parameters
  # @return [Array<Account>]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
