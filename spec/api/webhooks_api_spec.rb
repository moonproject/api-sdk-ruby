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

# Unit tests for Mooncard::WebhooksApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'WebhooksApi' do
  before do
    # run before each test
    @instance = Mooncard::WebhooksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WebhooksApi' do
    it 'should create an instance of WebhooksApi' do
      expect(@instance).to be_instance_of(Mooncard::WebhooksApi)
    end
  end

  # unit tests for delete_api_v3_webhooks_id
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_api_v3_webhooks_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_api_v3_webhooks
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page of results to fetch.
  # @option opts [Integer] :per_page Number of results to return per page.
  # @return [Array<Webhook>]
  describe 'get_api_v3_webhooks test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_api_v3_webhooks_id
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [Webhook]
  describe 'get_api_v3_webhooks_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_api_v3_webhooks
  # @param webhook 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'post_api_v3_webhooks test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put_api_v3_webhooks_id
  # @param id 
  # @param webhook 
  # @param [Hash] opts the optional parameters
  # @return [Webhook]
  describe 'put_api_v3_webhooks_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
