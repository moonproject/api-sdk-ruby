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

# Unit tests for SwaggerClient::PostApiV3BusinessCodes
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PostApiV3BusinessCodes' do
  before do
    # run before each test
    @instance = SwaggerClient::PostApiV3BusinessCodes.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PostApiV3BusinessCodes' do
    it 'should create an instance of PostApiV3BusinessCodes' do
      expect(@instance).to be_instance_of(SwaggerClient::PostApiV3BusinessCodes)
    end
  end
  describe 'test attribute "business_code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
