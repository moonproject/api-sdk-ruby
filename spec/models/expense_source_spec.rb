=begin
#Mooncard API

#Access Mooncard data from anywhere

OpenAPI spec version: 3.0.0
Contact: hello@mooncard.co
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.10

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::ExpenseSource
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ExpenseSource' do
  before do
    # run before each test
    @instance = SwaggerClient::ExpenseSource.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ExpenseSource' do
    it 'should create an instance of ExpenseSource' do
      expect(@instance).to be_instance_of(SwaggerClient::ExpenseSource)
    end
  end
  describe 'test attribute "card_expense"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "manual_expense"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "km_expense"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
