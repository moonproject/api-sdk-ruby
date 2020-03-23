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
require 'date'

# Unit tests for Mooncard::PostApiV3WebhooksWebhook
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PostApiV3WebhooksWebhook' do
  before do
    # run before each test
    @instance = Mooncard::PostApiV3WebhooksWebhook.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PostApiV3WebhooksWebhook' do
    it 'should create an instance of PostApiV3WebhooksWebhook' do
      expect(@instance).to be_instance_of(Mooncard::PostApiV3WebhooksWebhook)
    end
  end
  describe 'test attribute "url"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "event_keys"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
