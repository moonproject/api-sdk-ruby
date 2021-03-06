=begin
#Mooncard API

#Access Mooncard data from anywhere

OpenAPI spec version: 3.0.0
Contact: hello@mooncard.co
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'spec_helper'
require 'json'

# Unit tests for Mooncard::AnalyticCodesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AnalyticCodesApi' do
  before do
    # run before each test
    @instance = Mooncard::AnalyticCodesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AnalyticCodesApi' do
    it 'should create an instance of AnalyticCodesApi' do
      expect(@instance).to be_instance_of(Mooncard::AnalyticCodesApi)
    end
  end

  # unit tests for create
  # @param analytic_code 
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
  # @return [AnalyticCode]
  describe 'find test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page of results to fetch.
  # @option opts [Integer] :per_page Number of results to return per page.
  # @option opts [String] :analytic_code_search_code_eq code &#x3D; ?
  # @option opts [String] :analytic_code_search_name_eq name &#x3D; ?
  # @option opts [String] :analytic_code_search_order_by Select which field you want to order the results by
  # @option opts [String] :analytic_code_search_order Select whether the results should be sorted in ascending or descending order
  # @return [Array<AnalyticCode>]
  describe 'list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update
  # @param id 
  # @param analytic_codes_body 
  # @param [Hash] opts the optional parameters
  # @return [AnalyticCode]
  describe 'update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
