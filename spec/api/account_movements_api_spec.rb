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

# Unit tests for SwaggerClient::AccountMovementsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AccountMovementsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::AccountMovementsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccountMovementsApi' do
    it 'should create an instance of AccountMovementsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::AccountMovementsApi)
    end
  end

  # unit tests for get_api_v3_account_movements
  # @param account_id account_id is required
  # @param [Hash] opts the optional parameters
  # @option opts [String] :account_movement_search_change_real_gteq change_real &gt;&#x3D; ?
  # @option opts [String] :account_movement_search_change_real_lteq change_real &lt;&#x3D; ?
  # @option opts [String] :account_movement_search_change_available_gteq change_available &gt;&#x3D; ?
  # @option opts [String] :account_movement_search_change_available_lteq change_available &lt;&#x3D; ?
  # @option opts [String] :account_movement_search_description_cont description &#x3D; %?%
  # @option opts [String] :account_movement_search_transaction_date_gteq transaction_date &gt;&#x3D; ?
  # @option opts [String] :account_movement_search_transaction_date_lteq transaction_date &lt;&#x3D; ?
  # @option opts [String] :account_movement_search_transaction_status_in transaction_status IN (?)
  # @option opts [String] :account_movement_search_transaction_type_in transaction_type IN (?)
  # @option opts [String] :account_movement_search_token_in token IN (?)
  # @option opts [String] :account_movement_search_order_by Select which field you want to order the results by
  # @option opts [String] :account_movement_search_order Select whether the results should be sorted in ascending or descending order
  # @option opts [Integer] :page Page of results to fetch.
  # @option opts [Integer] :per_page Number of results to return per page.
  # @return [Array<Movement>]
  describe 'get_api_v3_account_movements test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_api_v3_account_movements_id
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_api_v3_account_movements_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end