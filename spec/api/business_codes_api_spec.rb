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

# Unit tests for Mooncard::BusinessCodesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BusinessCodesApi' do
  before do
    # run before each test
    @instance = Mooncard::BusinessCodesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BusinessCodesApi' do
    it 'should create an instance of BusinessCodesApi' do
      expect(@instance).to be_instance_of(Mooncard::BusinessCodesApi)
    end
  end

  # unit tests for create
  # @param business_code 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for find
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [BusinessCode]
  describe 'find test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page of results to fetch.
  # @option opts [Integer] :per_page Number of results to return per page.
  # @option opts [String] :business_code_search_code_eq code &#x3D; ?
  # @option opts [String] :business_code_search_name_eq name &#x3D; ?
  # @option opts [String] :business_code_search_order_by Select which field you want to order the results by
  # @option opts [String] :business_code_search_order Select whether the results should be sorted in ascending or descending order
  # @return [Array<BusinessCode>]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # @param id 
  # @param business_code_body 
  # @param [Hash] opts the optional parameters
  # @return [BusinessCode]
  describe 'update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
